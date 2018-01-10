import Vue from 'vue'
import router from './router'
import App from './App.vue'

Vue.config.productionTip = false

new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
})
