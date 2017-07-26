
var ChooseCourseForm = UI.Widget({
    extends: UIWidgets.AjaxForm,

    '@Constructor': function (id) {
        this.super(UIWidgets.AjaxForm, '@Constructor', id);
    },
    init: function (props) {
        this.super(UIWidgets.AjaxForm, 'init');

        if (props.onSubmit) this.onSubmit(props.onSubmit);
    },

    isCourseChosen: function(){
        var names = this.getElementNames();
        var chosen = false;
        var me = this;
        _.each(names, function(name){
            if(me.isElementChecked(name)) chosen = true;
        });
        return chosen
    }
});

var View = UI.View({
    extends: UIWidgets.View,

    '@Constructor': function () {
        this.super(UIWidgets.View, '@Constructor');
    },

    '@Component chooseCourseForm': [ChooseCourseForm, 'chooseCourseForm'],
    '@Component chooseCourseWarningModal': [UIWidgets.Overlay, 'chooseCourseWarningModal'],

    init: function () {
        var me = this;

        var form = this['chooseCourseForm'];
        form.init({
            onSubmit: function (e) {
                e.preventDefault();
                if(form.isCourseChosen()) {
                    form.sendAjax(form.getData(), 'buy-course');
                } else {
                    warning.show();
                }
            }
        });
        form.onAjaxSendSuccess(function(response){
            console.log(response)
        });
        form.onAjaxSendError(function(error){
            console.log(error)
        });

        var warning = this['chooseCourseWarningModal']
        warning.init();
    }
});

var view = UI.createInstance(View);
view.onReady(function (e) {
    this.init();
});