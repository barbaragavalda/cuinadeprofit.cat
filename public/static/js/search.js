'use strict';

var Search = function(link){

    var _link = link,
        _search = $('.search');

    function init(){
        search();
        filter();
    }

    /**
     * search events
     */
    function search(){
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

    /**
     * start search
     * @param obj
     * @param query
     */
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

    /**
     * end search
     * @param obj
     */
    function close(obj){
        var search = obj.parent(),
            prepend = search.find('.input-group-prepend'),
            append = search.find('.input-group-append');

        prepend.css('display', 'flex');
        append.hide();

        var lis = search.parent().find('ul li');
        lis.show();
    }

    function filter(){
        var form = $('#list form');

        $('#show-filters').click(function(e){
            form.find('> div').fadeToggle();

            e.preventDefault();
            return false;
        });

        var difficulty = $('input[name="difficulty[]"]'),
            time = $('input[name="time"]'),
            tag = $('input[name="tag[]"]'),
            category = $('input[name="category[]"]'),
            ingredient = $('input[name="ingredient[]"]'),
            q = $('input[name="q"]');

        form.submit(function(e){
            var url = [],
                difficulties = addArray(difficulty),
                times = addArray(time),
                tags = addArray(tag),
                categories = addArray(category),
                ingredients = addArray(ingredient),
                query = q.val();

            if( difficulties !== '' ){
                url.push(difficulties);
            }
            if( times !== '' ){
                url.push(times);
            }
            if( tags !== '' ){
                url.push(tags);
            }
            if( categories !== '' ){
                url.push(categories);
            }
            if( ingredients !== '' ){
                url.push(ingredients);
            }

            if( url.length > 0 || query != '' ){
                window.location = _link + url.join('/') + '?q=' + query;
            }

            e.preventDefault();
            return false;
        });
    }

    function addArray(object){
        var values = object.map(function(idx, elem) {
            if( $(this).is(':checked') ){
                return $(elem).val();
            }
        }).get();

        var url = '';
        if( values.length > 0 ){
            url = values.join('&');
        }
        return url;
    }

    init();

};