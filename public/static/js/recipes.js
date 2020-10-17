'use strict';

var Recipes = function(){

    var _search = $('.search');

    function init(){
        $('.input-group-append').click(function(){
            var input = $(this).parent().find('input');
            input.val('');
            close(input);
        });

        _search.keyup(function(){
            var query = $(this).val();

            if( query === '' ){
                close($(this));
            }else{
                open($(this), normalize(query));
            }
        });
    }

    function open(obj, query){
        var search = obj.parent(),
            prepend = search.find('.input-group-prepend'),
            append = search.find('.input-group-append');

        append.css('display', 'flex');
        prepend.hide();

        var lis = search.parent().find('ul li');
        lis.each(function(){
            var text = normalize($(this).text());
            if( text.indexOf(query) === -1 ){
                $(this).hide();
            }
        });
    }

    function normalize(value){
        return value.trim().toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '');
    }

    function close(obj){
        var search = obj.parent(),
            prepend = search.find('.input-group-prepend'),
            append = search.find('.input-group-append');

        prepend.css('display', 'flex');
        append.hide();

        var lis = search.parent().find('ul li');
        lis.show();
    }

    init();

};