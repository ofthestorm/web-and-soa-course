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
          <router-link :to="{ name: 'AddPost'}" class="item">AddPost</router-link>


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
                <!--<a class="item" href="login.html">Login</a>-->
                <!--<a class="item" href="signup.html">Sign up</a>-->
                <a class="item" v-on:click="login">Login</a>
                <a class="item" v-on:click="signup">Sign up</a>
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
            <td><p>&middot;&nbsp;{{ m }}</p></td>
          </tr>
          </tbody>
        </table>
        <h1>Wiki</h1>
        <table class="ui very basic table">
          <tbody>
          <tr v-for="w in wikiMessages">
            <td width="10%">
              <p style="color: darkgreen;">Origin</p>
              <p>User submit</p>
            </td>
            <td width="80%">
              <p style="color: darkgreen;">{{ w.old }}</p>
              <p>{{ w.new }}</p>
            </td>
            <td width="5%"><i class="checkmark icon green" v-on:click="acceptWiki"></i></td>
            <td width="5%"><i class="remove icon red" v-on:click="refuseWiki"></i></td>
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
    <div class="ui basic modal loginModal">
      <div class="content">
        <div class="ui middle aligned center aligned grid">
          <div class="five wide column">
            <h2 class="ui teal image header">
              <div class="content">
                Log-in to your account
              </div>
            </h2>
            <form class="ui large form" >
              <div class="ui stacked segment">
                <div class="field">
                  <div class="ui left icon input">
                    <i class="user icon"></i>
                    <input type="text" name="email" id="email" placeholder="E-mail address" v-model="loginEmail">
                  </div>
                </div>
                <div class="field">
                  <div class="ui left icon input">
                    <i class="lock icon"></i>
                    <input type="password" name="password" id="password" placeholder="Password" v-model="loginPassword">
                  </div>
                </div>
                <div class="ui fluid large teal submit button" id="loginBtn">Login</div>
              </div>
              <div class="ui error message"></div>
            </form>
            <!--<div class="ui message">-->
              <!--New to us? <a href="signup.html">Sign Up</a>-->
            <!--</div>-->
          </div>
        </div>

      </div>
      <div class="actions">
        <div class="ui red basic cancel inverted button">
          <i class="remove icon"></i>
          Close
        </div>
      </div>
    </div>

    <div class="ui basic modal signupModal">
      <div class="content">
        <div class="ui middle aligned center aligned grid">
          <div class="five wide column">
            <h2 class="ui teal image header">
              <div class="content">
                Sign up
              </div>
            </h2>
            <form class="ui large form" method="post" action="">
              <div class="ui stacked segment">
                <div class="field">
                  <div class="ui left icon input">
                    <i class="user icon"></i>
                    <input type="text" name="email"  placeholder="E-mail address" v-model="signupEmail">
                  </div>
                </div>
                <div class="field">
                  <div class="ui left icon input">
                    <i class="lock icon"></i>
                    <input type="password" name="password"  placeholder="Password" v-model="signupPassword">
                  </div>
                </div>
                <div class="field">
                  <div class="ui left icon input">
                    <select class="ui dropdown" v-model="signupType">
                      <option value="individual">Individual</option>
                      <option value="museum">Museum</option>
                    </select>
                  </div>
                </div>
                <div class="ui fluid large teal submit button" id="sighUpBtn">Sign up</div>
              </div>
              <div class="ui error message"></div>
            </form>

            <!--<div class="ui message">-->
              <!--<p>Already have an account? <a href="login.html">Login</a></p>-->
              <!--&lt;!&ndash;<p><a href="RegisterMuseum.html">Register</a> an official museum account.</p>&ndash;&gt;-->
            <!--</div>-->
          </div>
        </div>

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
      ],
      wikiMessages: [
        {
          old: "2145234738456394534145234738456394534145234738456394534" +
          "145234738456394534145234738456394534145234738456394534145234738456394534145234738456394534" +
          "145234738456394534145234738456394534145234738456394534145234738456394534" +
          "145234738456394534145234738456394534145234738456394534" +
          "1452347384563945341452347384563945343",
          new: "~v235644145234738456394534145234738456394534" +
          "145234738456394534145234738456394534" +
          "145234738456394534145234738456394534" +
          "145234738456394534" +
          "145234738456394534324324r432ter"
        },
        {
          old: "21452347384563945343",
          new: "~v235644324324r432ter"
        }
      ],
      loginEmail: "",
      loginPassword: "",
      signupEmail: "",
      signupPassword: "",
      signupType: ""
    }

  },
  methods: {
    search: function () {
      $('.searchModal').modal('show');
    },
    checkMessage: function () {
      $('.messageModal').modal('show');
    },
    login: function () {
      $('.loginModal').modal('show');
    },
    signup: function () {
      $('.signupModal').modal('show');
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
  td {
    word-wrap:break-word;
    word-break:break-all;
    /*border:solid 1px aliceblue;*/
  }
  table {

  }
</style>
