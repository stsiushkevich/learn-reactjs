var UIWidgets = (function(){
    var PageStateAccessWidget = UI.Widget({
        _pageState_ : null,

        pgState: function(){
            if(!this._pageState_) return void(0);
            var argCount = arguments.length;
            if(!argCount) return this._pageState_.get();
            var k = arguments[0];
            if(argCount == 1) return this._pageState_.get(k);
            this._pageState_.put(k, arguments[1]);
        },
        setPageState: function(state){
            this._pageState_ = state;
        },
        hasPageState: function(){
            return this._pageState_ !== null;
        },
        getPageState: function(){
            return this._pageState_;
        }
    });

    var BaseWidget = UI.Widget({
        extents: PageStateAccessWidget,

        '@Constructor': function(id){
            this._domElementId = id;
        },

        init: function(){
            this.dom = document.getElementById(this._domElementId);
            this.$dom = $(this.dom);
        },

        getDomElementId: function(){
            return this._domElementId;
        }
    });

    var Box = UI.Widget({
        extends: BaseWidget,

        show: function () {
            this.$dom.show();
        },
        hide: function () {
            this.$dom.hide();
        },
        toggle: function(show){
            if(show) this.show();
            else this.hide();
        }
    });

    var MessageBox = UI.Widget({
        extends: Box,

        setMessage: function(msg){
            this.$dom.html(msg);
        }
    });

    var Overlay = UI.Widget({
        extends: Box,

        onShow: function(handler){
            this.$dom.on('shown.bs.modal', handler);
        },
        onHide: function(handler){
            this.$dom.on('hide.bs.modal', handler);
        },
        setMessage: function(msg){
            this.$body.html(msg);
        },
        show: function(){
            this.$dom.modal('show');
        },
        hide: function(){
            this.$dom.modal('hide');
        }
    });

    var TextInput = UI.Widget({
        extends: BaseWidget,

        getValue: function(){
            return this.$dom.val();
        },
        setValue: function(v){
            this.$dom.val(v);
        }
    });

    var Button  = UI.Widget({
        extends: Box,

        onClick: function (handler) {
            this.$dom.on('click', handler);
        },
        disable: function (disabled) {
            this.$dom.prop('disabled', disabled);
        },
        isDisabled: function () {
            return !!this.$dom.prop('disabled');
        }
    });

    var View = UI.View({
        extends: PageStateAccessWidget,

        onReady: function(handler){
            var me = this;
            $(document).ready(function(e){
                handler.call(me, e);
            });
        }
    });

    var Form = UI.Widget({
        extends: Box,

        reset: function () {
            this.dom.reset();
        },
        focusOnElement: function (name) {
            $(this.dom.elements[name]).focus();
        },
        isValid: function () {
            return this.$dom.valid();
        },
        getElementValue: function (name) {
            return $(this.dom.elements[name]).val();
        },
        getElement: function (name) {
            return this.dom.elements[name];
        },
        setElementValue: function (name, val) {
            return $(this.dom.elements[name]).val(val);
        },
        isElementChecked: function (name) {
            return $(this.dom.elements[name]).is(':checked');
        },
        getAttr: function (attrName) {
            return this.$dom.attr(attrName);
        },
        setAttr: function (attrName, attrVal) {
            return this.$dom.attr(attrName, attrVal);
        },
        fill: function (data) {
            var names = this.getElementNames();
            for (var i = 0; i < names.length; i++) {
                if(data[names[i]]){
                    this.setElementValue(names[i], data[names[i]]);
                }
            }
        },
        getElementNames: function(){
            var names = [];
            var keys = Object.getOwnPropertyNames(this.dom.elements);
            for(var i=0; i<keys.length; i++){
                if(!isFinite(keys[i])) names.push(keys[i]);
            }
            return names;
        },
        getData: function(){
            var data = {};
            var names = this.getElementNames();
            for(var i=0; i<names.length; i++){
                data[names[i]] = this.getElementValue(names[i]);
            }
            return data;
        },
        onSubmit: function (handler) {
            this.$dom.submit(handler);
        },
        submit: function () {
            this.$dom.submit();
        }
    });

    var AjaxForm = UI.Widget({
        extends: Form,

        _ajaxEventHandlers: {
            success: [],
            error: []
        },

        sendAjax: function (url, data) {
            var me = this;
            $.ajax({
                url: url,
                type: 'POST',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify(data),
                success: function (response) {
                    var handlers = [];
                    if (response['success'] == "SUCCESS") {
                        handlers = me._ajaxEventHandlers.success;
                        for (var i = 0; i < handlers.length; i++) {
                            handlers[i].call(me, response);
                        }
                    } else {
                        handlers = me._ajaxEventHandlers.error;
                        for (var i = 0; i < handlers.length; i++) {
                            handlers[i].call(me, response);
                        }
                    }
                },
                error: function (error) {
                    var handlers = me._ajaxEventHandlers.error;
                    for (var i = 0; i < handlers.length; i++) {
                        handlers[i].call(me, error);
                    }
                }
            });
        },
        onAjaxSendSuccess: function (handler) {
            this._ajaxEventHandlers.success.push(handler);
        },
        onAjaxSendError: function (handler) {
            this._ajaxEventHandlers.error.push(handler);
        }
    });

    var ComboBox = UI.Widget({
        extends: Box,

        onItemSelected: function(handler){
            var me = this;
            this.$dom.on('change', function(e){
                if(handler) handler.apply(me, [e]);
            });
        },
        getValue: function(){
            return this.$dom.val();
        }
    });

    var PageState = UI.Model({
        init: function(){
            this.initDom();
            this.load();
            this.destroyDom();
        },
        initDom: function(){
            this.$dom = $(this.dom);
        },
        load: function(){
            var data = this.$dom.val().split(',');
            for(var i=0; i< data.length; i++){
                var kv = data[i].split(':');
                var v = kv[1].trim();
                this.put(kv[0].trim(), isNaN(+v) ? v : +v);
            }
        },
        destroyDom: function(){
            this.$dom.remove();
        }
    });

    return {
        Box: Box,
        MessageBox: MessageBox,
        Overlay: Overlay,
        TextInput: TextInput,
        Button: Button,
        View: View,
        Form: Form,
        AjaxForm: AjaxForm,
        ComboBox: ComboBox,
        PageState: PageState
    };
})();