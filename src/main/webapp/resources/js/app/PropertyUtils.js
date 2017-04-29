/*
 Gets and puts nested properties from JavaScript object
 *
 * examples:
 * var prop = Utils.getProperty(obj, "prop1.nestedProp1");
 * var prop = Utils.getProperty(obj, "prop1.[0].nestedProp1");
 *
 * Utils.setProperty({a: '1'}, 'key1.key2.key3', 356) =>
 * {
 *      a: '1',
 *      key1: {
 *          key2: {
 *              key3: 356
 *          }
 *      }
 * }
 * */
var PUtils;
var PropertyUtils = PUtils = (function(){
    return {
        getProperty: function(o, s) {
            s = s+''.replace(/\\[(\w+)\\]/g, '.$1'); // convert indexes to properties
            s = s.replace(/^\./, '');           // strip a leading dot
            var a = s.split('.');
            for (var i = 0, n = a.length; i < n; ++i) {
                var k = a[i];
                if (k in o) {
                    o = o[k];
                } else {
                    return;
                }
            }
            return o;
        },
        setProperty: function(o, s, v) {
            s = s+''.replace(/\\[(\w+)\\]/g, '.$1'); // convert indexes to properties
            s = s.replace(/^\./, '');           // strip a leading dot
            var a = s.split('.');
            var d = o;
            for (var i = 0, n = a.length - 1; i < n; ++i) {
                var k = a[i];
                if(!(k in d)){
                    d[k] = {};
                }
                d = d[k];
            }
            d[a[a.length - 1]] = v;
            return o;
        }
    }
})();