<template>
  <div id="app">
    <header data-headroom id="header" class="header headroom">
      <div class="ui fixed inverted menu ">
        <div class="ui container">
          <p class="header item">
            <!--<img class="logo" src="assets/images/logo.png">-->
            Museum
          </p>
          <router-link :to="{ name: 'Home'}" class="item">Home</router-link>
          <router-link :to="{ name: 'Museum', params: { mId: 123 }}" class="item">Museum</router-link>
          <router-link :to="{ name: 'Collection', params: { cId: 123 }}" class="item">Collection</router-link>
          <router-link :to="{ name: 'AddCollection'}" class="item">AddCollection</router-link>
          <router-link :to="{ name: 'AddMuseum'}" class="item">AddMuseum</router-link>
          <router-link :to="{ name: 'Post', params: { pId: 123 }}" class="item">Post</router-link>
          <div class="right menu">
            <div class="item">
              <div class="ui transparent inverted icon input">
                <input type="text" placeholder="Search" v-model="searchKeyword">
                <div v-on:click="search" >
                  <i class="search icon"></i>
                </div>
              </div>
            </div>
            <div class="ui simple dropdown item " >
              Settings <i class="dropdown icon"></i>
              <div class="menu">
                <a class="item" href="login.html">Login</a>
                <a class="item" href="signup.html">Sign up</a>
                <a class="item" v-on:click="checkMessage">Message</a>
              </div>
            </div>
          </div>

        </div>
      </div>
    </header>

    <keep-alive>
      <router-view/>
    </keep-alive>

    <div class="ui inverted vertical footer segment">
      <div class="ui center aligned container">
        <div class="ui horizontal inverted small divided link list">
          Copyright © 2017 Tongji SSE
        </div>
      </div>
    </div>

    <div class="ui basic modal searchModal">
      <div class="content">
        <h1>Museums</h1>
        <p v-for="m in searchMuseum">{{ m }}</p>
        <h1>Collections</h1>
        <p v-for="c in searchCollection">{{ c }}</p>
      </div>
      <div class="actions">
        <div class="ui red basic cancel inverted button">
          <i class="remove icon"></i>
          Close
        </div>
      </div>
    </div>


    <div class="ui basic modal messageModal">
      <div class="content">
        <h1>Messages</h1>
        <p ></p>
        <table class="ui very basic table">
          <tbody>
          <tr v-for="m in messages">
            <td width="80%"><p>&middot;&nbsp;{{ m }}</p></td>
            <td width="10%"><i class="checkmark icon green" v-on:click="acceptWiki"></i></td>
            <td width="10%"><i class="remove icon red" v-on:click="refuseWiki"></i></td>
          </tr>
          </tbody>
        </table>
      </div>
      <div class="actions">
        <div class="ui red basic cancel inverted button">
          <i class="remove icon"></i>
          Close
        </div>
      </div>
    </div>
  </div>


</template>

<script>


export default {
  name: 'app',
  data() {
    return {
      searchKeyword: "",
      searchMuseum: [
        "1",
        "2"
      ],
      searchCollection: [
        "3",
        "4"
      ],
      messages: [
        "lala",
        "lolo"
      ]
    }

  },
  methods: {
    search: function () {
      $('.searchModal').modal('show');
    },
    checkMessage: function () {
      $('.messageModal').modal('show');
    },
    acceptWiki: function () {

    },
    refuseWiki: function () {

    }
  },
  mounted: function () {
    this.$nextTick(function () {
        $("#header").headroom({
          "tolerance": 5,
          "offset": 10,
          "classes": {
            "initial": "animated",
            "pinned": "slideDown",
            "unpinned": "slideUp"
          }
        });
    });
  }

}

</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /*text-align: center;*/
  color: #2c3e50;
  margin-top: 40px;
  width: 100%;
}

@font-face {
  font-family: Roboto-Light;
  src: url('assets/fonts/Roboto-Light.ttf');
}
@font-face {
  font-family: Roboto-Thin;
  src: url('assets/fonts/Roboto-Thin.ttf');
}
@font-face {
  font-family: Roboto-Regular;
  src: url('assets/fonts/Roboto-Regular.ttf');
}
@font-face {
  font-family: Roboto-Bold;
  src: url('assets/fonts/Roboto-Bold.ttf');
}
@font-face {
  font-family: Roboto-Medium;
  src: url('assets/fonts/Roboto-Medium.ttf');
}

  td p {
    color: white;
  }
</style>
