# Assignment 1: Programming with Web APIs

The project is a mashup-based web page concentrating on music. It is divided into 4 sections and each of the sections has different subjects such as music activities, musicians and tracks. The project is mainly a information collection and display web page like Douban.

I use *Java* as back-end language. The project is deployed in Tomcat. In the  front end, I use several libary such as [*animate.css*](https://daneden.github.io/animate.css/), [*fullpage.css*](https://alvarotrigo.com/fullPage/) and [*kite.css*](http://hiloki.github.io/kitecss/). The photographs are come from [*Usplash*](https://unsplash.com). The fonts are from [*Google Fonts*](https://fonts.google.com). The returned data from web APIs are in formats of both JSON and XML. I use three different way to parse the data, including [*dom4j*](https://dom4j.github.io), [*Gson*](https://github.com/google/gson) and *JQuery*.

## Section 1

Show the most popular tracks from indie musicians in recent time, include the track cover, track name, musician name and publish time.

Web API: [*Fanburst*](https://developers.fanburst.com/)

Data structure: JSON

The way to parse data: Use Gson to transform JSON data into JavaBean.

## Section 2

Show the latest music activity like concert, live show, and outdoor music festival. The information of activity name, time, address and description are displayed here.


Web API: [*Eventful*](http://api.eventful.com/docs)

Data structure: XML

The way to parse data: dom4j

## Section 3

Show the most popular artists. The photo and name are displayed.

Web API: [*Last.fm*](https://www.last.fm/api)

Data structure: XML

The way to parse data: dom4j

## Section 4

Search the information of artist including photo, name, genres and popularity index.

Web API: [*Spotify*](https://developer.spotify.com/web-api/console/)

Data structure: JSON

The way to parse data: Use JQuery to transform the JSON data into javascript object. Then the result is dynamically displayed by *AJAX*.

## Configuration and deployment

- JDK version 1.8.0
- Tomcat version 8.5.23


- Put the jar file of dom4j and Gson under the path ***Tomcat / lib /*** .
- There is time limit of using the token of Spotify web API. So the search function may be invalid because of the overtime token.

## Demo video

[Click here to watch!](https://youtu.be/XuaObOQggvs)

## Screenshot

![](https://ws2.sinaimg.cn/large/006tNc79ly1fl9hme4gmmj31kw11dx6p.jpg)

![](https://ws4.sinaimg.cn/large/006tNc79ly1fl9hmheqycj31kw11dx6q.jpg)

![](https://ws2.sinaimg.cn/large/006tNc79ly1fl9hmjelznj31kw11dx6p.jpg)

![](https://ws1.sinaimg.cn/large/006tNc79ly1fl9hmmzu27j31kw11d1kz.jpg)

