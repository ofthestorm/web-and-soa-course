<template>
  <div id="app">
    <header data-headroom id="header" class="header">
      <div class="ui fixed inverted menu">
        <div class="ui container">
          <a href="#" class="header item">
            <img class="logo" src="assets/images/logo.png">
            Museum
          </a>
          <router-link :to="{ name: 'Home'}" class="item">Home</router-link>
          <router-link :to="{ name: 'Wiki'}" class="item">Wiki</router-link>
          <router-link :to="{ name: 'Museum'}" class="item">Museum</router-link>
          <router-link :to="{ name: 'Collection'}" class="item">Collection</router-link>

          <div class="ui simple dropdown item">
            Dropdown <i class="dropdown icon"></i>
            <div class="menu">
              <a class="item" href="#">Link Item</a>
              <div class="divider"></div>
              <div class="header">Header Item</div>
              <div class="item">
                <i class="dropdown icon"></i>
                Sub Menu
                <div class="menu">
                  <a class="item" href="#">Link Item</a>
                </div>
              </div>
              <a class="item" href="#">Link Item</a>
            </div>
          </div>
        </div>
      </div>
    </header>
    <keep-alive>
      <router-view/>
      <!--<router-view v-if="$route.meta.keepAlive"></router-view>-->
    </keep-alive>
    <div class="ui action left icon input">
      <!--<i class="search icon"></i>-->
      <input type="text" placeholder="Search...">
      <div class="ui teal button">Search</div>
    </div>

    <div class="ui inverted vertical footer segment">
      <div class="ui center aligned container">
        <div class="ui horizontal inverted small divided link list">
          Copyright © 2017 Tongji SSE
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
  margin-top: 40px;
  width: 100%;
}
/*.page-tabbar {*/
  /*overflow: hidden;*/
  /*height: 100vh;*/
/*}*/

/*.page-wrap {*/
  /*overflow: auto;*/
  /*height: 100%;*/
  /*padding-bottom: 100px;*/
/*}*/

</style>
