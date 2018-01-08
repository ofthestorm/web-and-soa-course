<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  img {
    width: 100%;
  }
  .center {
    text-align: center;
  }
  .comments {
    margin: 0 auto;
    width: 40%;
  }

</style>


<template>
  <div class="Collection">
    <br/>
    <div class="ui three column grid">
      <div class="two wide column"></div>
      <div class="twelve wide column">
        <img :src="collection.image">
        <div class="ui horizontal section divider">Information</div>

        <div class="center">
          <form>
            <h2>Name</h2>
            <div class="ui input editArea">
              <input type="text" :value="collection.name" v-model="collection.name">
            </div>
            <p class="infoArea">{{ collection.name }}</p>
            <h2>Time</h2>
            <div class="ui input editArea">
              <input type="text" :value="collection.time" v-model="collection.time">
            </div>
            <p class="infoArea">{{ collection.time }}</p>
            <h2>Owner</h2>
            <div class="ui input editArea">
              <input type="text" :value="collection.owner" v-model="collection.owner">
            </div>
            <p class="infoArea">{{ collection.owner }}</p>
            <h2>Description</h2>
            <div class="ui comments editArea" >
              <form class="ui reply form" >
                <div class="field">
                  <textarea :value="collection.description" v-model="collection.description"></textarea>
                </div>
              </form>
            </div>
            <p class="infoArea">{{ collection.description }}</p>
          </form>
        </div>
        <br/>
        <div class="center">
          <div id="edit">
            <i class="write square icon yellow big"></i> Edit
          </div>
          <div id="save">
            <i class="checkmark box icon green big"></i> Save
          </div>
        </div>
        <div class="ui horizontal section divider">You may like</div>
      </div>
    <div class="two wide column"></div>
    </div>
    <div class="ui five column grid">
      <div class="two wide column"></div>
      <div class="four wide column" v-for="r in recommendations">
          <div class="ui card">
            <div class="image dimmable">
              <img :src = "r.image">
            </div>
            <div class="content">
              <div class="header">
                <a class="header" :href="r.link"> {{ r.name }}</a>
              </div>
              <div class="description">{{ r.description }}</div>
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
    name: 'Collection',
    data () {
      return {
        collection: {
          name: "Masonic apron",
          time: "1900",
          image: require('../assets/img/m1.jpg'),
          description: "The history and authors of Russian literature.",
          owner: "Museum-Reserve of A.S Pushkin"
        },
        recommendations: [
          {
            name: "Masonic apron",
            image: require('../assets/img/m1.jpg'),
            description: "The history and authors of Russian literature.",
            link: ""
          },
          {
            name: "Masonic apron",
            image: require('../assets/img/m1.jpg'),
            description: "The history and authors of Russian literature.",
            link: ""
          },
          {
            name: "Masonic apron",
            image: require('../assets/img/m1.jpg'),
            description: "The history and authors of Russian literature.",
            link: ""
          }
        ]
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
        $('#save').hide();
        $('.editArea').hide();
        $('#save').click(function () {
          $('#save').hide();
          $('#edit').show();
          $('.editArea').hide();
          $('.infoArea').show();
        });
        $('#edit').click(function () {
            $('#edit').hide();
            $('#save').show();
          $('.editArea').show();
          $('.infoArea').hide();
          }
        )
      });
    }

  }

</script>
