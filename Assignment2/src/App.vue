<template>
  <!--<div id="Test">-->
    <!--<Test><Test/>-->
  <!--</div>-->
  <div id="app">

    <div class="ui borderless main menu" style="">
      <div class="ui text container">
        <div href="#" class="header item">
          <img class="logo" src="assets/images/logo.png">
          Project Name
        </div>
        <a href="#" class="item">Blog</a>
        <a href="#" class="item">Articles</a>
        <a href="#" class="ui right floated dropdown item" tabindex="0">
          Dropdown <i class="dropdown icon"></i>
          <div class="menu" tabindex="-1">
            <div class="item">Link Item</div>
            <div class="item">Link Item</div>
            <div class="divider"></div>
            <div class="header">Header Item</div>
            <div class="item">
              <i class="dropdown icon"></i>
              Sub Menu
              <div class="menu">
                <div class="item">Link Item</div>
                <div class="item">Link Item</div>
              </div>
            </div>
            <div class="item">Link Item</div>
          </div>
        </a>
      </div>
    </div>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

    <router-view/>

    <div class="ui inverted vertical footer segment">
      <div class="ui container">
        <div class="ui stackable inverted divided equal height stackable grid">
          <div class="three wide column">
            <h4 class="ui inverted header">About</h4>
            <div class="ui inverted link list">
              <a href="#" class="item">Sitemap</a>
              <a href="#" class="item">Contact Us</a>
              <a href="#" class="item">Religious Ceremonies</a>
              <a href="#" class="item">Gazebo Plans</a>
            </div>
          </div>
          <div class="three wide column">
            <h4 class="ui inverted header">Services</h4>
            <div class="ui inverted link list">
              <a href="#" class="item">Banana Pre-Order</a>
              <a href="#" class="item">DNA FAQ</a>
              <a href="#" class="item">How To Access</a>
              <a href="#" class="item">Favorite X-Men</a>
            </div>
          </div>
          <div class="seven wide column">
            <h4 class="ui inverted header">Footer Header</h4>
            <p>Extra space for a call to action inside the footer that could help re-engage users.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'app',
//  data() {
//    return {
//      selected: '外卖'
//    };
//  },
  methods: {
//    prev: function () {
//      this.$refs.swipeWrapper.prev();
//      console.log(this.$children);
//    },
//    next: function () {
//      this.$refs.swipeWrapper.next();
//    }
  }

}

</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
.page-tabbar {
  overflow: hidden;
  height: 100vh;
}

.page-wrap {
  overflow: auto;
  height: 100%;
  padding-bottom: 100px;
}

</style>
