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
  <link rel="stylesheet" type="text/css" href="css/hover.css"/>
  <link rel="stylesheet" type="text/css" href="css/animate.css"/>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>

<body>
<%
  HttpRequest httpRequest = new HttpRequest();
  List<Event> eventList = httpRequest.getEventList();
  List<Artist> artistList = httpRequest.getArtistList();
  List<Track> trackList = httpRequest.getTrackList();
%>
<div id="fullpage">
  <div class="section" id="section0">
    <div class="intro">
      <h1 class="section0h">Welcome</h1>
      <p class="section0p">It's a world all about music! Have fun! </p>
    </div>
  </div>

  <div class="section" id="section1">
    <h1 class="section1h">Discover more music</h1>
    <p class="section1p">Get tired of pop music? Try listening to these increasingly popular tracks created by indie musician.</p>
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
    <div class="slide">
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
    <div class="slide">
      <div class="intro">
        <h1></h1>
        <p></p>
      </div>
    </div>
    <div class="slide">
      <div class="intro">
        <h1></h1>
        <p></p>
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
                <p class="artist-name"><% out.print(artistList.get(i).getName()); %></p>
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
                <p class="artist-name"><% out.print(artistList.get(i).getName()); %></p>
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
                <p class="artist-name"><% out.print(artistList.get(i).getName()); %></p>
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
    </div>
  </div>
</div>
<script src="js/jquery-3.2.1.js"></script>
<script src="js/jquery.fullpage.min.js"></script>
<script src="js/jquery.tubeplayer.min.js"></script>
<script src="js/script.js"></script>

</body>

<!--<div id="youtube-player"></div>-->


</html>