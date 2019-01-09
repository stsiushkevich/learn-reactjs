function SectionNavigation (props) {
    this.props = props;
    this.$element = $(this.props.selector);
}

SectionNavigation.prototype.init = function () {

    this.$element.on('mouseenter', '.section-nav__item', function (e) {
        var $item = $(this);
        var title = $item.data('sectionTitle');
        $item.siblings('.section-nav__selected-section').text(title);
    });

    this.$element.on('mouseleave', '.section-nav__item', function (e) {
        var $item = $(this);
        $item.siblings('.section-nav__selected-section').text('');
    });
};

var sectionNavigation = new SectionNavigation({selector: '.section-nav'});
sectionNavigation.init();

