<style scoped>



</style>


<template>
  <div class="Post">
    <br/>
    <div class="ui three column grid">
      <div class="four wide column"></div>
      <div class="eight wide column">

          <h1>{{ title }}</h1>
          <p>{{ time }}</p>
          <div><span v-html="content"></span></div>

      </div>
      <div class="four wide column"></div>
    </div>
    <br/>
  </div>
</template>



<script>

  export default {
    name: 'Post',
    data () {
      return {
        title: "Title",
        time: "2017-2-1",
        content: ""
      }
    },
    methods: {

    },
    computed: {

    },
    created: function () {

    },
    mounted: function () {
      this.$nextTick(function () {


      });
    }
  }

</script>
