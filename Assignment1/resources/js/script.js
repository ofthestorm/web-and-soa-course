/**
 * Created by keke on 2017/10/29.
 */

jQuery(document).ready(function(){
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
    $('#fullpage').fullpage({
        sectionsColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', 'whitesmoke', '#ccddff'],
        anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
        menu: '#menu',
        scrollingSpeed: 1000
    });
});