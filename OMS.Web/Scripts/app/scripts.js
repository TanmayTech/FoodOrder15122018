/* 
 Created on : Dec 4, 2018, 19:49
 Author     : Tanmay Mule
 */
$(function () {

    //init wow effects
    new WOW().init();

    //scroll menu
    $(window).scroll(function () {
        var scrollStart = 100;
       var secondFeature = 0;

        if ($('#features').length > 0) {
            scrollStart = 300;
            secondFeature = $('#features').offset().top;
        }
        var scroll = $(window).scrollTop();
        if (scroll >= scrollStart) {
            $('.sticky-navigation').css({"top": '0px'});
        } else {
            $('.sticky-navigation').css({"top": '-100px'});
        }
        if (scroll >= secondFeature - 200) {
            $(".mobileScreen").css({'background-position': 'center top'});
        }
        return false;
    });
    
    //page scroll
    $('a.page-scroll').on('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top - 20
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});