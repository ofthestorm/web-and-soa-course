<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  img {
    width: 100%;
  }
  .center {
    text-align: center;
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
          <h2>Name</h2>
          <p>{{ collection.name }}</p>
          <h2>Time</h2>
          <p>{{ collection.time }}</p>
          <h2>Owner</h2>
          <p>{{ collection.owner }}</p>
          <h2>Description</h2>
          <p>{{ collection.description }}</p>
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
  ;$(function () {

  });

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

    }

  }

</script>
