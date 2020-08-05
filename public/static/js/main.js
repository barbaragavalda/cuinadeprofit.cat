'use strict';

(function ($) {

    $(document).ready(function(){
        var search = $('#search-model');
        $('.search-button').on('click', function() {
            search.fadeIn(400);
        });

        search.find('.close').on('click', function() {
            search.fadeOut(400,function(){
                $('#search-input').val('');
            });
        });
    });


    /*------------------
		Navigation
	--------------------*/
    // $(".mobile-menu").slicknav({
    //     prependTo: '#mobile-menu-wrap',
    //  allowParentLinks: true
    // });

})(jQuery);