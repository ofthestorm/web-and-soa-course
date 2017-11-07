/**
 * Created by keke on 2017/10/29.
 */

;jQuery(document).ready(function(){

    //fullpage
    $('#fullpage').fullpage({
        sectionsColor: ['white', 'white', 'white', 'white'],
        anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage'],
        menu: '#menu',
        scrollingSpeed: 1000
    });

    //mouse over the track
    $(".track").hover(function(){
        $(this).find(".track-hover").show();
    },function(){
        $(this).find(".track-hover").hide();
    });

    $(".event").hover(function(){
        // console.log("hover");
        $(this).find(".event-hover")
            .removeClass("animated zoomOut")
            .addClass("animated zoomIn")
            .show();
    },function(){
        $(this).find(".event-hover")
            .removeClass("animated zoomIn")
            .addClass("animated zoomOut");
    });

    $(".artist").hover(function(){
        // console.log("hover");
        $(this).find(".artist-hover")
            .removeClass("animated rotateOut")
            .addClass("animated rotateIn")
            .show();
    },function(){
        $(this).find(".artist-hover")
            .removeClass("animated rotateIn")
            .addClass("animated rotateOut")
    });


});

