<%--
  Created by IntelliJ IDEA.
  User: keke
  Date: 2017/10/24
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mydefault.HttpRequest" %>
<%@ page import="mydefault.Event" %>
<%@ page import="java.util.List" %>
<%@ page import="mydefault.Artist" %>
<%@ page import="mydefault.Track" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
  <meta charset="UTF-8">
  <title>music</title>
  <link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css"/>
  <link rel="stylesheet" type="text/css" href="css/kite.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/animate.css"/>
  <%--<link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css"/>--%>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>

<body>
<%
  HttpRequest httpRequest = new HttpRequest();
  List<Event> eventList = httpRequest.getEventList();
  List<Artist> artistList = httpRequest.getArtistList();
  List<Track> trackList = httpRequest.getTrackList();
%>
<script>
    function sendAjaxReq()
    {
        var str = document.getElementById("search-keyword").value;
        console.log(str);
        var xmlhttp;

        if (str=="")
        {
            // document.getElementById("textHint").src = "";
            return;
        }
        if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp=new XMLHttpRequest();
        }
        else
        {// code for IE6, IE5
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                //success
                var ajaxResult = jQuery.parseJSON(xmlhttp.responseText);
                console.log(ajaxResult);
            }
        }

        xmlhttp.open("GET","https://api.spotify.com/v1/search",true);
        //必须在open之后send之前!!!
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.setRequestHeader("Authorization", "BQAmVrt_QIfDbxOP1d8XOD2BOXk6Hyi41aUs-sAcHTp_qrSxdljvuu-ktsdPGDGmQJVaSa9smWpUOces1AgjfHxOcCtwj8EFzEL8ZEEITQiRRnVIFJXAWDD2OzwDH0bcZg2ZrVyr1N7xfGPOilK-3pr5j4GUWUU");

        // var formData = new FormData();
        // formData.append('q', str);
        // xmlhttp.send(formData);
        xmlhttp.send("q="+str+"&type=artist&market=US&limit=1");

    }
</script>
<div id="fullpage">
  <div class="section" id="section0">
    <div class="intro">
      <h1 class="section0h">Welcome</h1>
      <p class="section0p">It's a world all about music! Have fun! </p>
    </div>
  </div>

  <div class="section" id="section1">
    <h1 class="section1h">Discover more music</h1>
    <p class="section1p">Get tired of pop music?</p>
    <p class="section1p"> Try listening to these increasingly popular tracks created by indie musician.</p>
    <br/>
    <div class="track-content">
      <div class="kite kite--fill kite--full is-equalize">

        <%for ( int i = 0; i < 5; i++){ %>
        <div class="kite__item kite-color">
          <div class="track">
            <img src="<% out.print(trackList.get(i).getDefaultImage()); %>">
            <div class="track-hover">
              <p class="track-name"><% out.print(trackList.get(i).getTitle()); %></p>
              <br/>
              <p class="track-artist"><% out.print(trackList.get(i).getUserName()); %></p>
              <br/>
              <p class="track-time"><% out.print(trackList.get(i).getPublished_at()); %></p>
            </div>
          </div>
        </div>
        <%}%>

      </div>
      <br/>
      <div class="kite kite--fill kite--full is-equalize">
        <%for ( int i = 5; i < 10; i++){ %>
        <div class="kite__item kite-color">
          <div class="track">
            <img src="<% out.print(trackList.get(i).getDefaultImage()); %>">
            <div class="track-hover">
              <p class="track-name"><% out.print(trackList.get(i).getTitle()); %></p>
              <br/>
              <p class="track-artist"><% out.print(trackList.get(i).getUserName()); %></p>
              <br/>
              <p class="track-time"><% out.print(trackList.get(i).getPublished_at()); %></p>
            </div>
          </div>
        </div>
        <%}%>
      </div>
    </div>

  </div>

  <div class="section" id="section2">
      <div class="intro">
        <h1 class="section2h">Activities</h1>
        <p class="section2p">All kinds of concert, live show, and outdoor music festival for you to choose.</p>
        <br/><br/><br/><br/><br/><br/>
        <div class="event-content">
          <div class="kite kite--fill kite--full is-equalize">
            <%for ( int i = 0; i < 5; i++){ %>
            <div class="kite__item kite-color">
              <div class="event">
                <p class="event-name"><% out.print(eventList.get(i).getTitle()); %></p>
                <br/>
                <p class="event-time"><% out.print(eventList.get(i).getStart_time()); %></p>
                <br/>
                <p class="event-address"><% out.print(eventList.get(i).getVenue_name()); %></p>
                <div class="event-hover">
                  <p class="event-description"><% out.print(eventList.get(i).getDescription()); %></p>
                </div>
              </div>
            </div>
            <%}%>
          </div>
        </div>
    </div>
  </div>

  <div class="section" id="section3">
    <div class="intro">
      <h1 class="section3h">Artists</h1>
      <p class="section3p">Here are the most popular artists. Do you know all of them? And which is your favourite one?
      </p>
      <div class="artist-content">
        <div class="kite kite--fill kite--full is-equalize">
          <%for ( int i = 0; i < 6; i++){ %>
          <div class="kite__item">
            <div class="artist">
              <img src="<% out.print(artistList.get(i).getImage()); %>">
              <div class="artist-hover">
                <p class="artist-name" style="font-size: 15px;"><% out.print(artistList.get(i).getName()); %></p>
              </div>
            </div>
          </div>
          <%}%>
        </div>
        <br/>
        <div class="kite kite--fill kite--full is-equalize">
          <%for ( int i = 6; i < 12; i++){ %>
          <div class="kite__item">
            <div class="artist">
              <img src="<% out.print(artistList.get(i).getImage()); %>">
              <div class="artist-hover">
                <p class="artist-name" style="font-size: 15px;"><% out.print(artistList.get(i).getName()); %></p>
              </div>
            </div>
          </div>
          <%}%>
        </div>
        <br/>
        <div class="kite kite--fill kite--full is-equalize">
          <%for ( int i = 12; i < 18; i++){ %>
          <div class="kite__item">
            <div class="artist">
              <img src="<% out.print(artistList.get(i).getImage()); %>">
              <div class="artist-hover">
                <p class="artist-name" style="font-size: 15px;"><% out.print(artistList.get(i).getName()); %></p>
              </div>
            </div>
          </div>
          <%}%>
        </div>
        <br/>
      </div>
    </div>
  </div>


  <div class="section" id="section4">
    <div class="intro">
      <h1 class="section4h">Want more? </h1>
      <p class="section4p">Try to search for your interested artist.</p>
      <br/><br/>
      <div class="row">
        <div class="col-lg-4 col-lg-offset-4">
          <div class="input-group">
            <input id="search-keyword" type="text" class="form-control" placeholder="Search for...">
            <span class="input-group-btn">
              <button class="btn btn-default" id="searchBtn" type="button" onclick="sendAjaxReq()">Search</button>
            </span>
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div>
      <br/><br/>
      <div class="result">
        <div class="spinner">
          <div class="rect1"></div>
          <div class="rect2"></div>
          <div class="rect3"></div>
          <div class="rect4"></div>
          <div class="rect5"></div>
        </div>
        <div class="result-image">
          <img id="result-img" style="width: 200px; height: 200px;" src="">
        </div>
        <div class="result-content">
          <p class="result-property" id="s-name">Name</p>
          <p class="result-value" id="result-name"> </p>
          <p class="result-property" id="s-pop">Popularity</p>
          <p class="result-value" id="result-popularity"> </p>
          <p class="result-property" id="s-gen">Genres</p>
          <p class="result-value" id="result-genres"> </p>
        </div>
      </div>
      <br/><br/><br/><br/>
    </div>
  </div>
</div>
<script src="js/jquery-3.2.1.js"></script>
<script src="js/jquery.fullpage.min.js"></script>
<script src="js/script.js"></script>

<script>
    $('.spinner').hide();
    function sendAjaxReq()
    {
        var str = document.getElementById("search-keyword").value;
        console.log(str);
        var xmlhttp;

        if (str=="")
        {
            // document.getElementById("textHint").src = "";
            return;
        }

        $('.result-image').hide();
        $('.result-content').hide();
        $('.spinner').show();

        if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp=new XMLHttpRequest();
        }
        else
        {// code for IE6, IE5
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                //success
                var ajaxResult = jQuery.parseJSON(xmlhttp.responseText);
                var image = ajaxResult.artists.items[0].images[1].url;
                var name = ajaxResult.artists.items[0].name;
                var genres = ajaxResult.artists.items[0].genres[0];
                var popularity = ajaxResult.artists.items[0].popularity;

                document.getElementById('result-img').src = image.toString();
                document.getElementById('result-name').innerHTML = name;
                document.getElementById('result-popularity').innerHTML = popularity;
                document.getElementById('result-genres').innerHTML = genres;

                document.getElementById('s-name').style.display = "block";
                document.getElementById('s-pop').style.display = "block";
                document.getElementById('s-gen').style.display = "block";


                $('.spinner').hide();
                $('.result-image').show();
                $('.result-content').show();

            }
        }

        var url ="https://api.spotify.com/v1/search"+"?q="+str+"&type=artist&market=US&limit=1";

        xmlhttp.open("GET",url,true);

        //必须在open之后send之前!!!
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.setRequestHeader("Authorization", "Bearer BQDaux-BDP7g359IV0BZnnz83BWeF0qIOMfz5gRLpaADbQdOID8igETb2dv8imMNazaL18BZchIKhYN7YlS9b3CIxFWlJsiYG7ZkS-W4RKMoXduCxk_BwlSXKUmlSkzwNuzoEHAuIdZ5HvRQB2bR6RopOWNpXoQ");

        xmlhttp.send();
    }
</script>
</body>

<!--<div id="youtube-player"></div>-->


</html>