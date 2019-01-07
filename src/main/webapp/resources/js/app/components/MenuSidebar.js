function MenuSidebar (props) {
    this.props = props;

    this.$element = $(this.props.selector);
}

MenuSidebar.prototype.init = function () {
    var me = this;
    var $window = $(window);

    var h = $window.height();
    me.$element.find('.menu__body').height(h - 150);

    $window.on('resize', function (e) {
        var h = $window.height();
        me.$element.find('.menu__body').height(h - 150);
    })
};

$(window).on('load', function () {
    var menuSidebar = new MenuSidebar({selector: '.menu'});
    menuSidebar.init();
});

