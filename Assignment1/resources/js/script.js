/**
 * Created by keke on 2017/10/29.
 */

;jQuery(document).ready(function(){

    //Tikku
    window.$player = jQuery("#youtube-player").tubeplayer({
        width: 1280,
        height: 720,
        initialVideo: "DkoeNLuMbcI",
        onPlayerLoaded: function(){
            this.tubeplayer("volume", 25);
            this.tubeplayer("seek", "1:33"); // Jump to T.I.
        },
        onPlayerEnded: function(){
            alert("that was awesome!");
        }
    });

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
        console.log("hover");
        $(this).find(".event-hover")
            .removeClass("animated zoomOut")
            .addClass("animated zoomIn")
            .show();
    },function(){
        $(this).find(".event-hover")
            .removeClass("animated zoomIn")
            .addClass("animated zoomOut");
    });

});