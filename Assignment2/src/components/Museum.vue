
<!-- Add "scoped" attribute to limit CSS to this component only -->
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
    /*position: ;*/
    /*top:30%;*/
  }
  .cover-text p {
    position: relative;
    color: white;
    font-size: 20px;
    /*position: relative;*/
  }

  .info {
    width: 100%;
    /*background-color: #F5F5F5;*/
    text-align: center;
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
    <div class="ui horizontal section divider">Comments</div>


    <div class="ui three column grid">
      <div class="four wide column"></div>
      <div class="eight wide column">
        <!--<div class="ui one cards">-->
          <!--<div class="ui card">-->
            <div class="ui comments">
            <form class="ui reply form">
              <div class="field">
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
              <!--<div class="header">-->
                 <img :src="r.userImg" class="ui avatar right spaced image">
               {{ r.userName }}
                <!--</div>-->
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
              <!--<a class="header" :href="r.link"> {{ c.name }}</a>-->
            </div>
            <div class="description">{{ c.description }}</div>
          </div>
        </div>
      </div>
      <div class="four wide column">
        <div class="ui card">
          <!--<div class="image dimmable">-->
            <!--&lt;!&ndash;<img :src = "c.image">&ndash;&gt;-->
          <!--</div>-->
          <div class="content">
            <!--<div class="header">-->
              <i class="plus icon grey huge"></i>
              <!--<a class="header" :href="r.link"> {{ c.name }}</a>-->
            <!--</div>-->
            <!--<div class="description">{{ c.description }}</div>-->
          </div>
        </div>
      </div>
      <div class="two wide column"></div>
    </div>

  </div>



</template>



<script>
  ;$(function () {
//    var height = $('.head-img').height() - (screen.height - 40);
//    alert(height);
//    if(height > 0) {
//      $('.head-img').css("clip-path", "inset(0px 0px 150px 0px)");
//    }

    $('.cover-text').css("height",$('.head-img').height());


  });

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
//      screenHeight: function () {
//        return screen.height - 40;
//      }
    }
  }

</script>
