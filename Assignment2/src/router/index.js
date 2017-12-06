import Vue from 'vue'
import Router from 'vue-router'
import Wiki from '@/components/Wiki'
import Home from '@/components/Home'
import Museum from '@/components/Museum'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/Wiki',
      name: 'Wiki',
      component: Wiki
    },
    {
      path: '/Museum',
      name: 'Museum',
      component: Museum
    }
  ]
})
