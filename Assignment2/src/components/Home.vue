<script>

export default {
  name: 'Home',
  data () {
    return {
      title: "Hello",
      subtitle: "test",
      museums: [
        {
          title: '1',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'http://www.baidu.com'
        },
        {
          title: '2',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'baidu.com'
        },
        {
          title: '3',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'baidu.com'
        },
        {
          title: '4',
          tag: 'history',
          description: 'test',
          img: require('../assets/img/m1.jpg'),
          link: 'baidu.com'
        }
      ],
      posts: [
        {
          postId: "0001",
          title: 'A post',
          tag: 'Medieval',
          description: 'A description which may flow for several lines and give context to the content.',
          img: require('../assets/img/m1.jpg'),
          link: 'google.com',
          userName: "UserName",
          userImg: require('../assets/img/user.png')
        },
        {
          postId: "0002",
          title: 'A post',
          tag: 'Medieval',
          description: 'A description which may flow for several lines and give context to the content.',
          img: require('../assets/img/m1.jpg'),
          link: 'google.com',
          userName: "UserName",
          userImg: require('../assets/img/user.png')
        },
        {
          postId: "0003",
          title: 'A post',
          tag: 'Medieval',
          description: 'A description which may flow for several lines and give context to the content.',
          img: require('../assets/img/m1.jpg'),
          link: 'google.com',
          userName: "UserName",
          userImg: require('../assets/img/user.png')
        }
      ]
    }
  },
  created: function () {

  },
  mounted: function () {
    this.$nextTick(function () {
      $('.banner').unslider({
        speed: 1000,              //  The speed to animate each slide (in milliseconds)
        delay: 3000,              //  The delay between slide animations (in milliseconds)
        complete: function () {
          },                      //  A function that gets called after every slide animation
        dots: true,               //  Display dot navigation
        fluid: false,             //  Support responsive design. May break non-responsive designs
        autoplay: true,
        arrows: false,
        infinite: true
      });
    })
  }
}
</script>

<style scoped>
  body {
  }
  .test {
   margin: 20px;
  }

  .banner {
    position: relative;
    overflow: auto;
    height:750px;
    width: 100%;
  }
  .banner li {
    list-style: none;
  }
  .banner ul li {
    float: left;
  }

  .cover-text {
    width: 100%;
    height: 750px;
    background-color: rgba(0, 0, 0, 0.5);
    position: absolute;
    left: 0;
    top: 0;
    text-align: center;
  }
  .cover-content {
    position: relative;
    top:50%;
    transform:translateY(-50%)
  }
  .cover-text h1 {
    color: white;
    font-size: 80px;
  }
  .cover-text p {
    position: relative;
    color: white;
    font-size: 20px;
  }
</style>


<template>
  <div class="Home">
    <div class="banner">
      <ul>
        <li><img style="width: 100%" src="../assets/img/m1.jpg"></li>
        <li><img style="width: 100%" src="../assets/img/claudio-testa-232180.jpg"/></li>
      </ul>
      <div class="cover-text">
        <div class="cover-content">
          <h1> {{ title }}</h1>
          <p> {{ subtitle }}</p>
        </div>
      </div>
    </div>
    <div class="test">
      <div class="ui four cards">
        <div class="ui card"  v-for="m in museums">
          <div class="image dimmable">
            <img :src = "m.img">
          </div>
          <div class="content">
            <div class="header">
              <a class="header" :href="m.link"> {{ m.title }}</a>
            </div>
            <div class="meta">
              <a class="group">{{ m.tag }}</a>
            </div>
            <div class="description">{{ m.description }}</div>
          </div>
          <div class="extra content">
            <a class="friends" :href="m.link">Arbitrary</a>
          </div>
        </div>
      </div>
    </div>
    <div class="ui three column grid" v-for="p in posts">
      <div class="two wide column"></div>
      <div class="twelve wide column">
        <div class="ui container">
          <div class="ui relaxed divided items">
            <div class="item">
              <div class="ui small image">
                <img :src="p.img"/>
              </div>
              <div class="content">
                <a class="header" :href="p.link">{{ p.title }}</a>
                <div class="meta">
                  <a>{{ p.tag }}</a>
                </div>
                <div class="description">
                  {{ p.description }}
                </div>
                <div class="extra">
                  <img :src="p.userImg" class="ui circular avatar image"> {{ p.userName }}
                  <div class="ui right floated primary button">
                    Learn more<i class="right chevron icon"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="two wide column"></div>
    </div>
  </div>
</template>
