
var CourseAccordion = UI.Widget({
    extends: UIWidgets.Box,

    '@Constructor': function(id){
        this.super(UIWidgets.Box, '@Constructor', id);
    },

    init: function(){
        this.super(UIWidgets.Box, 'init');

        var me = this;
        this.$dom.on('click', 'a[data-toggle]', function(){
            var $a = $(this);
            me.getSections().each(function(i, o){
                if ($a.attr('href').indexOf($(o).attr('id')))
            })
        })
    },

    getSections: function() {
        return this.$dom.find('.collapse')
    },

    getToggles: function() {
        return this.$dom.find('a[role=button]')
    }

});

var View = UI.View({
    extends: UIWidgets.View,

    '@Constructor': function(){
        this.super(UIWidgets.View, '@Constructor');
    },

    '@Component courseAccordion': [CourseAccordion, 'levels'],

    init: function(){
        this['courseAccordion'].init();
    }
});

var view = UI.createInstance(View);
view.onReady(function(e){
    this.init();
});