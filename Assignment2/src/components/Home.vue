<template>
  <div class="Home">
    <!--<div class="slider">-->
      <!--<div>-->

        <!--<img src="../assets/img/m1.jpg"/>-->
      <!--</div>-->
      <!--<div>-->
        <!--<img src="../assets/img/default.png"/>-->
      <!--</div>-->
      <!--<div>-->
        <!--<img src="../assets/img/default.png"/>-->
      <!--</div>-->
    <!--</div>-->
    <!--<div class="swiper-container">-->
      <!--<div class="swiper-wrapper">-->
        <!--<div class="swiper-slide"><img src="../assets/img/m1.jpg"/></div>-->
        <!--<div class="swiper-slide"><img src="../assets/img/logo.png"/></div>-->
        <!--<div class="swiper-slide"><img src="../assets/img/default.png"/></div>-->
      <!--</div>-->
      <!--&lt;!&ndash; 如果需要分页器 &ndash;&gt;-->
      <!--&lt;!&ndash;<div class="swiper-pagination"></div>&ndash;&gt;-->

      <!--&lt;!&ndash; 如果需要导航按钮 &ndash;&gt;-->
      <!--<div class="swiper-button-prev"></div>-->
      <!--<div class="swiper-button-next"></div>-->

      <!--&lt;!&ndash; 如果需要滚动条 &ndash;&gt;-->
      <!--&lt;!&ndash;<div class="swiper-scrollbar"></div>&ndash;&gt;-->
    <!--</div>-->
    <div class="banner">
      <ul>
        <li>This is a slide.<img style="width: 100%" src="../assets/img/m1.jpg"></li>
        <li>This is another slide.</li>
        <li>This is a final slide.</li>
      </ul>
    </div>
    <p>{{ msg }}</p>
    <div class="ui four cards">
      <div class="ui card">
        <div class="image dimmable">
          <img src="../assets/img/default.png">
        </div>
        <div class="content">
          <div class="header">Title</div>
          <div class="meta">
            <a class="group">Meta</a>
          </div>
          <div class="description">One or two sentence description that may go to several lines</div>
        </div>
        <div class="extra content">
          <a class="right floated created">Arbitrary</a>
          <a class="friends">
            Arbitrary</a>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
  $(function(){
//    $('.slider').slick({
//      dots: true,
//      accessibility: true,
//      adaptiveHeight: true,
//      autoplay: true,
//      autoplaySpeed: 3000,
//      centerMode: true,
//      centerPadding: 0,
//      infinite: true,
//      speed: 500,
//      fade: true,
//      cssEase: 'linear',
//      respondTo: 'window'
////      variableWidth: true
//    });
  });

export default {

  name: 'Home',
//  vuex: {
//    getters: {
//      fooValue: state => state.foo
//    },
//    actions: { fooChange }
//  },
  data () {
    return {
      msg: 'Test~'
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
  .four {
   /*margin-left: 20px;*/
  }
  .swiper-container {
    width: 100%;
    height: 600px;
  }
  .banner {
    position: relative;
    overflow: auto;
    /*background-color: #0f0f10;*/
  }
  .banner li {
    list-style: none;
  }
  .banner ul li {
    float: left;
  }
</style>
