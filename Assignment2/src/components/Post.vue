<style scoped>

  .editArea {
    margin-bottom: 20px;
  }

  #editor {
      height: 500px;
  }

</style>


<template>
  <div class="Post">
    <br/>
    <div class="ui three column grid">
      <div class="two wide column"></div>
      <div class="twelve wide column">

        <form>
          <h1>New post</h1>
          Title<div class="ui input editArea"><input type="text" v-model="title"></div>
          <div id="editor">
            <p></p>
          </div>
          <br/>
        </form>

        <div class="center">
          <div id="save">
            <i class="checkmark box icon green big"></i> Save
          </div>
        </div>

      </div>
      <div class="two wide column"></div>
    </div>
    <br/>
  </div>
</template>



<script>
  export default {
    name: 'Post',
    data () {
      return {
        title: ""
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
        var quill = new Quill('#editor', {
          theme: 'snow'
        });

      });
    }
  }

</script>
