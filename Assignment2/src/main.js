// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import router from './router'
// import MintUI from 'mint-ui'
// import 'mint-ui/lib/style.css'
// import './css/style.css'
import App from './App.vue'
// window.semantic_ui_icon = require("semantic-ui-icon")


// 引入全部组件
// Vue.use(MintUI)

// import { Tabbar, TabItem } from 'mint-ui';
//
// Vue.component(Tabbar.name, Tabbar);
// Vue.component(TabItem.name, TabItem);
//
// import { Swipe, SwipeItem } from 'mint-ui';
//
// Vue.component(Swipe.name, Swipe);
// Vue.component(SwipeItem.name, SwipeItem);


Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
})
