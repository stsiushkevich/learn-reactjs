;var localStorageApi = (function(){
     function stringifyJSON(val){
        var str = false;
        try{
            str = JSON.stringify(val);
        }catch(e){
            // invalid json
        }
        return str;
    }

    function parseJSON(str){
        var obj = false;
        if(str && str.length){
            try{
                obj = JSON.parse(str);
            }catch(e){
                // invalid json
            }
        }
        return obj;
    }

    var storage = localStorage;
    return {
        set: function (prop, val) {
            if (!storage) {
                return false;
            }
            storage.setItem(prop, val);
        },
        get: function (prop) {
            if (!storage) {
                return undefined;
            }
            return storage.getItem(prop);
        },
        setJSON: function (prop, val) {
            if (!storage) {
                return false;
            }
            var str = stringifyJSON(val);
            if (str) {
                storage.setItem(prop, str);
            }
        },
        getJSON: function (prop) {
            if (!storage) {
                return undefined;
            }
            var val = storage.getItem(prop);
            if (val && val.length) {
                val = parseJSON(val);
            }
            return val;
        },
        clearAll: function () {
            if (storage) {
                storage.clear();
            }
        },
        remove: function (prop) {
            if (storage) {
                storage.removeItem(prop);
            }
        }
    };
})();