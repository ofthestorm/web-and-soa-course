<style scoped>
  .Museum {
    position: relative;
  }
  .head-img {
   width: 100%;
    /*clip-path: inset(0px 0px 150px 0px);*/
  }
  .cover-text {
    width: 100%;
    height: 829px;
    background-color: rgba(0, 0, 0, 0.5);
    position: absolute;
    left: 0;
    top: 0;
    text-align: center;
  }
  .cover-content {
    position: relative;
    top:50%;
    transform:translateY(-50%)
  }
  .cover-text h1 {
    color: white;
    font-size: 80px;
  }
  .cover-text p {
    position: relative;
    color: white;
    font-size: 20px;
    /*position: relative;*/
  }

  .info {
    width: 100%;
    text-align: center;
  }
  #allmap {
    width: 100%;
    height: 300px;
    overflow: hidden;
    margin:0;
    font-family:"微软雅黑";
  }
  .addCollection {
    height: 265px;
    text-align: center;
    /*vertical-align:middle;*/
  }

  .addCollection i {
    line-height: 265px;
  }


</style>


<template>
  <div class="Museum">
    <img class="head-img" v-bind:src="url">
    <!--:src="url"-->
    <div class="cover-text">
      <div class="cover-content">
        <h1> {{ name }}</h1>
        <p> {{ description }}</p>
        <i v-if="usrLike === true" class="heart red big icon"></i>
        <i v-else="" class="heart empty inverted big icon"></i>
      </div>
    </div>

    <div class="ui horizontal section divider">Information</div>


    <div class="info">
      <h3><i class="calendar icon"></i>Open time</h3>
      <p>{{ info.openTime }}</p>
      <h3><i class="marker icon"></i>Location</h3>
      <p>{{ info.location }}</p>
      <h3><i class="phone icon"></i>Telephone</h3>
      <p>{{ info.tel }}</p>
      <h3><i class="ticket icon"></i>Ticket price</h3>
      <p>{{ info.ticketPrice }}</p>
      <h3><i class="smile icon"></i>Score</h3>
      <p><i v-for="n in 5" v-if=" info.score - n >= 0" class="star yellow icon"></i>
        <i v-else="" class="star grey icon"></i>{{ info.score }}</p>

    </div>
    <br/>
    <div id="allmap"></div>
    <div id="result"></div>

    <div class="ui horizontal section divider">Comments</div>


    <div class="ui three column grid">
      <div class="four wide column"></div>
      <div class="eight wide column">
        <!--<div class="ui one cards">-->
          <!--<div class="ui card">-->
            <div class="ui comments">
            <form class="ui reply form">
              <div class="field">
                <div class="ui star rating"></div>

                <textarea v-model="myComment"></textarea>
              </div>
              <div class="ui blue labeled submit icon button">
                <i class="icon edit"></i> Add Comments
              </div>
              <!--<p> {{ myComment }}</p>-->
            </form>
            </div>
          <!--</div>-->
        <!--</div>-->
      </div>
    </div>


    <div class="ui three column grid"  v-for="r in reviews" >
      <div class="four wide column"></div>
      <div class="eight wide column">
        <div class="ui one cards">
          <div class="ui card">
            <div class="extra content">

             <span class="left floated like">
                 <img :src="r.userImg" class="ui avatar right spaced image">
               {{ r.userName }}
             </span>
              <span class="right floated star">
               {{ r.date }}
               <i v-for="n in 5" v-if=" r.score - n >= 0" class="star yellow icon"></i>
               <i v-else="" class="star grey icon"></i>
             </span>
            </div>
            <div class="content">
              <div class="description">
                <i class="quote left icon"></i>
                {{ r.comment }}
                <i class="quote right icon"></i>

              </div>
            </div>

          </div>
        </div>

      </div>
      <div class="four wide column"></div>
    </div>

    <div class="ui horizontal section divider">Collections </div>

    <div class="ui five column grid">
      <div class="two wide column"></div>
      <div class="four wide column" v-for="c in collections">
        <div class="ui card">
          <div class="image dimmable">
            <img :src = "c.image">
          </div>
          <div class="content">
            <div class="header">
            </div>
            <div class="description">{{ c.description }}</div>
          </div>
        </div>
      </div>
      <div class="four wide column">
        <div class="ui card addCollection">
          <div class="content">
              <i id="addCollection" class="plus icon grey huge"></i>
          </div>
        </div>
      </div>
      <div class="two wide column"></div>
    </div>
  <br/>
  </div>
</template>



<script>
import router from '../router/index.js'
export default {
    name: 'Museum',
    data () {
      return {
        name: "Russian Literature Museums",
        description: "The history and authors of Russian literature.",
        url : require('../assets/img/m1.jpg'),
        usrLike: true,
        info: {
          openTime: "Mon - Tues, 8:00 - 17:00",
          location: "Longteng Road, Xuhui, Shanghai",
          tel: "8273-2883",
          ticketPrice: "$100",
          score: "4.5"
        },
        reviews: [
          {
            userName: "Username",
            userImg: require('../assets/img/user.png'),
            score: "5",
            comment: "A description which may flow for several lines and give context to the content." +
            "A description which may flow for several lines and give context to the content." +
            "A description which may flow for several lines and give context to the content.",
            date: "2017-9-18 10:00"
          },
          {
            userName: "Username",
            userImg: require('../assets/img/user.png'),
            score: "4.5",
            comment: "test",
            date: "2017-9-18 10:00"
          },
          {
            userName: "Username",
            userImg: require('../assets/img/user.png'),
            score: "2",
            comment: "test",
            date: "2017-9-18 10:00"
          },
          {
            userName: "Username",
            userImg: require('../assets/img/user.png'),
            score: "0",
            comment: "test",
            date: "2017-9-18 10:00"
          }
        ],
        myComment: "",
        myScore: 3,
        collections: [
          {
            name: "Masonic",
            image: require('../assets/img/m1.jpg'),
            description: "The history and authors of Russian literature.",
            link: ""
          },
          {
            name: "Masonic apron",
            image: require('../assets/img/m1.jpg'),
            description: "The history and authors of Russian literature.",
            link: ""
          }
        ]
      }
    },
    methods: {

    },
    computed: {

    },
    mounted: function () {
      this.$nextTick(function () {
        var self = this;
        $('#addCollection').click(function () {
//          router.push({ path: '/AddCollection'});
          router.push({ path: 'Collection', params: { name: "hehe" }});
        });
        var map = new BMap.Map("allmap");
        map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
        var myGeo = new BMap.Geocoder();
        myGeo.getPoint("上海市嘉定区同济大学", function(point){
          if (point) {
            map.centerAndZoom(point, 16);
            map.addOverlay(new BMap.Marker(point));
          }else{
            alert("No result");
          }
        }, "上海市");
        map.addControl(new BMap.MapTypeControl({
          mapTypes:[
            BMAP_NORMAL_MAP
          ]}));
//    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
        map.setMapStyle({style:'light'});

        $('.ui.star.rating')
          .rating({
            initialRating: 0,
            maxRating: 5
          });

        //提交评论的时候 用$('.ui.star.rating').rating("get rating")拿到评分

        console.log($('.ui.star.rating').rating("get rating"));

        //mId
        console.log(this.$route.params.mId);

      })

    }

  }

</script>
