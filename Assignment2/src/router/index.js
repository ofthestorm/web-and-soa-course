import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/Wiki'
import Test from '@/components/Test'
import Navbar from '@/components/Navbar'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Test',
      component: Test
    }
    // {
    //   path: '/',
    //   name: 'Navbar',
    //   component: Navbar
    // }
  ]
})
