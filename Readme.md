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

# Assignment 2: 
### Requirement analysis

With people‘s increasing demand of spirit and culture, the market of culture becomes unprecedentedly prosperous. As we can see, a lot of websites like IMDB, Rotten Tomatoes, last.fm has provided information about movies and musics in high quality, and domestic websites like douban has additional resources about books, live shows, exhibitions and etc. In the meanwhile, we find that there is lack of platforms aimed at museums. It’s hard for museum fans to get the latest information, access niche but interesting museums and share their opinion and knowledge with other fans. 

#### Functional requirements

In this case, our goal is to provide services associated with museums. The target population are museum fans and museums. We design different functions according to different user roles.

All accounts can register then log in. They can receive messages as well.

- **Museum account**

1. Create museum homepage, add collections in museum, supply detail information about the museum and collections.
2. Publish posts. The posts may related with latest exhibitions, recruiting volunteers and etc.
3. Check wiki submitted by users. Museum can choose to receive the wiki if it is valuable or refuse it if not.

- **User**

1. Browse information of museums and collections.
2. Look over comments and scores of others and add comments and scores by his or her own.
3. Read posts. 
4. Submit wiki of collections if they have professional research or folk stories on them.

![](https://ws3.sinaimg.cn/large/006tNc79ly1fngdhckblej31au0okjvh.jpg)

### Architecture
![](https://ws4.sinaimg.cn/large/006tNc79ly1foxmz3no7dj31ch0rljyu.jpg)

To be continued...
