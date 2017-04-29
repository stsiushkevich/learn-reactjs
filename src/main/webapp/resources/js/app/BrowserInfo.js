var BrowserInfo = (function(){
    return {
        isMobile: function(){
            return document.body.offsetWidth < 752;
        },
        is_iPhone: function (){
            return (
                (navigator.platform.indexOf("iPhone") != -1) ||
                (navigator.platform.indexOf("iPod") != -1)
            );
        }
    }
})();