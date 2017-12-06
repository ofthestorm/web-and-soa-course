import Vue from 'vue'
import Router from 'vue-router'
import Wiki from '@/components/Wiki'
import Home from '@/components/Home'
import Museum from '@/components/Museum'
import Collection from '@/components/Collection'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      canReuse: false
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
    },
    {
      path: '/Collection',
      name: 'Collection',
      component: Collection
    }
  ]
})
