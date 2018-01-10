<style scoped>

  .center {
    text-align: center;
  }
  .comments {
    margin: 0 auto;
    width: 40%;
  }
  .editArea {
    width: 20%;
  }
  .textArea {
    width: 60%;
  }

</style>


<template>
  <div class="AddCollection">
    <br/>
    <div class="ui three column grid">
      <div class="two wide column"></div>
      <div class="twelve wide column">
        <!--<img :src="collection.image">-->
        <!--<div id="fileupload"></div>-->
        <input id="fileupload" type="file" name="files[]" data-url="server/php/" multiple>
        <br/>
        <div class="center">
          <form>
            <p>Name</p>
            <div class="ui input editArea">
              <input type="text"  v-model="collection.name">
            </div>
            <p>Time</p>
            <div class="ui input editArea">
              <input type="text"  v-model="collection.time">
            </div>
            <p>Owner</p>
            <div class="ui input editArea">
              <input type="text"  v-model="collection.owner">
            </div>
            <p>Description</p>
            <div class="ui comments editArea textArea" >
              <form class="ui reply form" >
                <div class="field">
                  <textarea  v-model="collection.description"></textarea>
                </div>
              </form>
            </div>
          </form>
        </div>
        <br/>
        <div class="center">
          <div id="save">
            <i class="checkmark box icon green big"></i> Submit
          </div>
        </div>
      <br/><br/><br/><br/><br/><br/>
      </div>
      <div class="two wide column"></div>
    </div>
    <br/>
  </div>

</template>



<script>
  export default {
    name: 'AddCollection',
    data () {
      return {
        collection: {
          name: "",
          time: "",
          image: require('../assets/img/m1.jpg'),
          description: "",
          owner: ""
        }
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
        $('#save').click(function () {

        });


      });
    }
  }

</script>
