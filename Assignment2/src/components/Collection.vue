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
    /*background-color: rgba(0, 0, 0, 0.5);*/
    position: absolute;
    left: 0;
    top: 0;

    /*display: -webkit-box;*/
    /*-webkit-box-orient: horizontal;*/
    /*-webkit-box-pack: center;*/
    /*-webkit-box-align: center;*/
    /*padding: 300px 0 300px 0;*/

  }

  .cover-text h1 {
    position: relative;
    top:50%;
    transform:translateY(-50%);
    color: white;
    font-size: 80px;
    /*position: ;*/
    /*top:30%;*/
  }
  .cover-text p {
    position: relative;
    top:50%;
    transform:translateY(-50%);
    color: white;
    font-size: 20px;
    /*position: relative;*/
  }
</style>


<template>
  <div class="Collection">
    <!--<img class="head-img" v-bind:src="url">-->
    <!--:src="url"-->
    <div class="cover-text">
      <h1> {{ name }}</h1>
      <p> {{ description }}</p>
    </div>
  </div>


</template>



<script>
  ;$(function () {

  });

  export default {
    name: 'Collection',
    data () {
      return {

      }
    },
    methods: {

    },
    computed: {

    }

  }

</script>
