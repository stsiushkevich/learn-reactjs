function MenuSidebar (props) {
    this.props = props;
    this.$element = $(this.props.selector);
}

MenuSidebar.prototype.init = function () {
    var me = this;
    var $window = $(window);

    me.updateSize();

    $window.on('resize', function (e) {
        me.updateSize();
    })
};

MenuSidebar.prototype.updateSize = function () {
    var h = $(window).height();
    this.$element.find('.menu__body').height(h - 150);
}

$(window).on('load', function () {
    var menuSidebar = new MenuSidebar({selector: '.menu'});
    menuSidebar.init();
});

