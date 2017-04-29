;var userSettings = (function(){
    var ID = 'User_Config';
    var settings = window.localStorageApi.getJSON(ID) || {};

    return {
        set: function(prop,value){
            settings[prop] = value;
            window.localStorageApi.setJSON(ID,settings);
        },
        get: function(prop, defaultVal){
            return settings[prop] ? settings[prop] : defaultVal;
        },
        clear: function(){
            window.localStorageApi.remove(ID);
            settings = {};
        },
        reset: function() {
            settings = {};
        }
    };
})();