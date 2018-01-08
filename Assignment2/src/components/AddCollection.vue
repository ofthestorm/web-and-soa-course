<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  .center {
    text-align: center;
  }
  .comments {
    margin: 0 auto;
    width: 40%;
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
        <div class="ui horizontal section divider">Information</div>

        <div class="center">
          <form>
            <h2>Name</h2>
            <div class="ui input editArea">
              <input type="text"  v-model="collection.name">
            </div>
            <h2>Time</h2>
            <div class="ui input editArea">
              <input type="text"  v-model="collection.time">
            </div>
            <h2>Owner</h2>
            <div class="ui input editArea">
              <input type="text"  v-model="collection.owner">
            </div>
            <h2>Description</h2>
            <div class="ui comments editArea" >
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

        $('#fileupload').fileupload({
          done: function (e, data) {
            $.each(data.result, function (index, file) {
              $('<p/>').text(file.name + ' uploaded').appendTo($("body"));
            });
          },
          progress: function (e,data){
            var progress = parseInt(data.loaded / data.total * 100, 10);
            console.log(progress);
          },
          previewMaxWidth: 512,
          previewMaxHeight: 5000000,
          processalways: function(e,data) {
            var index = data.index,
              preview = data.files[index].preview;
            console.log(preview);
          },
          acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
          dropZone: $(document)

        });
      });
    }
  }

</script>
