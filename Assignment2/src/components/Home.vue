

<script>

  $(function() {
    $('.banner').unslider({
      speed: 1000,               //  The speed to animate each slide (in milliseconds)
      delay: 3000,              //  The delay between slide animations (in milliseconds)
      complete: function () {
      },  //  A function that gets called after every slide animation
//          keys: true,               //  Enable keyboard (left, right) arrow shortcuts
      dots: true,               //  Display dot navigation
      fluid: false,              //  Support responsive design. May break non-responsive designs
//          animation: 'fade',
      autoplay: true,
      arrows: false,
      infinite: true

    });
  });

export default {
  name: 'Home',
  data () {
    return {
      msg: 'Test~',
      museums: [
        {
          title: '1',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'http://www.baidu.com'
        },
        {
          title: '2',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'baidu.com'
        },
        {
          title: '3',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'baidu.com'
        },
        {
          title: '4',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'baidu.com'
        }
      ]
    }
  },
  methods: {

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  body {
    /*padding:0 20px;*/
  }
  .test {
   margin: 20px;
  }
  .swiper-container {
    width: 100%;
    height: 600px;
  }
  .banner {
    position: relative;
    overflow: auto;
    height:750px;
    /*background-color: #0f0f10;*/
  }
  .banner li {
    list-style: none;
  }
  .banner ul li {
    float: left;
  }
</style>


<template>
  <div class="Home">
    <div class="banner">
      <ul>
        <li><img style="width: 100%" src="../assets/img/m1.jpg"></li>
        <li><img style="width: 100%" src="../assets/img/claudio-testa-232180.jpg"/></li>
      </ul>
    </div>
    <p>{{ msg }}</p>
    <div class="test">
      <div class="ui four cards">
        <div class="ui card"  v-for="m in museums">
          <div class="image dimmable">
            <img :src = m.img>
          </div>
          <div class="content">
            <div class="header"> {{ m.title }}</div>
            <div class="meta">
              <a class="group">{{ m.tag }}</a>
            </div>
            <div class="description">{{ m.description }}</div>
          </div>
          <div class="extra content">
            <!--<a class="right floated created">Arbitrary</a>-->
            <a class="friends" :href="m.link">Arbitrary</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
