<style scoped>

  .center {
    text-align: center;
  }
  .editArea {
    width: 30%;
  }

  .comments {
    margin: 0 auto;
    width: 60%;
  }

</style>


<template>
  <div class="AddMuseum">
    <br/>
    <div class="ui three column grid">
      <div class="two wide column"></div>
      <div class="twelve wide column">
        <div class="center">
          <form>
            <p>Title</p>
            <div class="ui input editArea"><input type="text" v-model="title"></div>
            <p>Province</p>
            <div class="ui input editArea"><input type="text" v-model="province"></div>
            <p>City</p>
            <div class="ui input editArea"><input type="text" v-model="city"></div>
            <p>District</p>
            <div class="ui input editArea"><input type="text" v-model="district"></div>
            <p>Street</p>
            <div class="ui input editArea"><input type="text" v-model="street"></div>
            <p>Number</p>
            <div class="ui input editArea"><input type="text" v-model="number"></div>
            <p>Class</p>
            <div class="ui input editArea"><input type="text" v-model="type"></div>
            <p>Area code</p>
            <div class="ui input editArea"><input type="text" v-model="area_code"></div>
            <p>Phone number</p>
            <div class="ui input editArea"><input type="text" v-model="phone_code"></div>
            <p>Homepage url</p>
            <div class="ui input editArea"><input type="text" v-model="url"></div>
            <p>Open time on Monday</p>
            <div class="ui input editArea"><input type="text" v-model="one"></div>
            <p>Open time on Tuesday</p>
            <div class="ui input editArea"><input type="text" v-model="two"></div>
            <p>Open time on Wednesday</p>
            <div class="ui input editArea"><input type="text" v-model="three"></div>
            <p>Open time on Thursday</p>
            <div class="ui input editArea"><input type="text" v-model="four"></div>
            <p>Open time on Friday</p>
            <div class="ui input editArea"><input type="text" v-model="five"></div>
            <p>Open time on Saturday</p>
            <div class="ui input editArea"><input type="text" v-model="six"></div>
            <p>Open time on Sunday</p>
            <div class="ui input editArea"><input type="text" v-model="seven"></div>
            <p>Ticket description</p>
            <div class="ui input editArea"><input type="text" v-model="ticket_description"></div>
            <p>Description</p>
            <div class="ui comments editArea" >
              <form class="ui reply form" >
                <div class="field">
                  <textarea v-model="description"></textarea>
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
    name: 'AddMuseum',
    data () {
      return {
          title : "",
          province : "",
          city : "",
          district : "",
          street : "",//回民街
          number : "",//250号
          type : "",//种类，综合性，历史性
          area_code : "",//区号
          phone_code : "",
          url : "",//网站主页
          description : "",//博物馆的描述
          one : "",//开放时间 周一
          two: "",
          three: "",
          four : "",
          five : "",
          six : "",
          seven : "",
          ticket_description : ""//门票信息
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
