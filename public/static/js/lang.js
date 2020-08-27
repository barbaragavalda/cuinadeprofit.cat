/**
 * Class that handles javascript localization
 */
var Language = function(lang){
    var _lang = null,
        _dictionary = {
            es: {
                step_x_of_total: 'Paso %x de %t'
            },
            ca: {
                step_x_of_total: 'Pas %x de %t'
            }
        };

    function init(lang){
        change(lang);
    }

    function change(lang){
        if( ['es', 'ca'].indexOf(lang) === -1 ){
            lang = 'es';
        }

        _lang = lang;
    }

    init(lang);
    return {
        localize: function(key){
            return _dictionary[_lang][key];
        },
        getLang: function(){
            return _lang;
        }
    };
};