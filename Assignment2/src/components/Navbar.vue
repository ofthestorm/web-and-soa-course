<template>
  <div class="Navbar">
    <p>hello</p>
    <div class="ui large top fixed menu transition hidden">
      <div class="ui container">
        <a class="active item">Home</a>
        <a class="item">Work</a>
        <a class="item">Company</a>
        <a class="item">Careers</a>
        <div class="right menu">
          <div class="item">
            <a class="ui button">Log in</a>
          </div>
          <div class="item">
            <a class="ui primary button">Sign Up</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Navbar',
//    data () {
//      return {
//        msg: 'Test~'
//      }
//    },
//    methods: {
//      prev: function () {
//        this.$refs.swipeWrapper.prev();
//        console.log(this.$children);
//      },
//      next: function () {
//        this.$refs.swipeWrapper.next();
//      }
//    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  /*html,body{*/
    /*width: 100%;*/
    /*height: 100%;*/
    /*margin: 0;*/
  /*}*/
  body {
    background-color: black;
  }
</style>
