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
      <h1>Welcome</h1>
      <p>It's a world all about music! Have fun! </p>
    </div>
  </div>
  <div class="section" id="section1">
    <h1>Discover more music</h1>
    <p>Get tired of pop music? Try listening to these increasingly popular tracks created by indie musician.</p>
    <br/>
    <div class="track-content">
      <div class="kite kite--fill kite--full is-equalize">

        <%for ( int i = 0; i < 5; i++){ %>
        <div class="kite__item kite-color">
          <div class="track">
            <div class="track-hover">
              <p class="track-name"><% out.print(trackList.get(i).getTitle()); %></p>
              <br/>
              <%--<p class="track-artist"><% out.print(trackList.get(i).getUser().getName()); %></p>--%>
              <br/>
              <p class="track-time"><% out.print(trackList.get(i).getPublished_at()); %></p>
            </div>1
          </div>
        </div>
        <%}%>

      </div>
      <br/>
      <div class="kite kite--fill kite--full is-equalize">
        <div class="kite__item kite-color">
          <div class="track">

          </div>
        </div>
        <div class="kite__item kite-color">
          <div class="track">

          </div>
        </div>
        <div class="kite__item kite-color">
          <div class="track">

          </div>
        </div>
        <div class="kite__item kite-color">
          <div class="track">

          </div>
        </div>
        <div class="kite__item kite-color">
          <div class="track">

          </div>
        </div>
      </div>
    </div>

  </div>

  <div class="section" id="section2">
    <div class="slide">
      <div class="intro">
        <h1>Activities</h1>
        <p>All kinds of concert, live show, and outdoor music festival for you to choose.</p>
        <br/><br/><br/><br/><br/><br/>
        <div class="event-content">
          <div class="kite kite--fill kite--full is-equalize">
            <div class="kite__item kite-color">
              <div class="event">
                <div class="event-hover">
                  <p>题主这个问题我也遇到了，然后搜索一下就scripit</p>
                </div>
              </div>
            </div>
            <div class="kite__item kite-color">
              <div class="event">
                <div class="event-hover">
                  <p class="event-description">descripition</p>
                </div>
              </div>
            </div>
            <div class="kite__item kite-color">
              <div class="event">

              </div>
            </div>
            <div class="kite__item kite-color">
              <div class="event">

              </div>
            </div>
            <div class="kite__item kite-color">
              <div class="event">

              </div>
            </div>
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
        <h1>Cool</h1>
        <p></p>
      </div>
    </div>

  </div>


  <div class="section" id="section3">
    <div class="intro">
      <h1>Artists</h1>
      <p>Here are the most popular artists. Do you know all of them? And which is your favourite one?
      </p>
      <div class="artist-content">
        <div class="kite kite--fill kite--full is-equalize">
          <div class="kite__item">
            <div class="artist">
              <img src="https://lastfm-img2.akamaized.net/i/u/174s/aa9dfbdec965d751cd1fa4ec5a309299.png">
              <div class="artist-hover">
                <p class="artist-name">Name</p>
              </div>
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
              <div class="artist-hover">

              </div>
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
        </div>
        <br/>
        <div class="kite kite--fill kite--full is-equalize">
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
        </div>
        <br/>
        <div class="kite kite--fill kite--full is-equalize">
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
          <div class="kite__item">
            <div class="artist">
            </div>
          </div>
        </div>
        <br/>
      </div>
    </div>

  </div>

  <div class="section" id="section4">
    <div class="intro">
      <h1>Want more? </h1>
      <p>Try to search for your interested artist.</p>
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