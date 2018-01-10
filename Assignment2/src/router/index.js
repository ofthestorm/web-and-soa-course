import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Museum from '@/components/Museum'
import Collection from '@/components/Collection'
import AddCollection from '@/components/AddCollection'
import Post from '@/components/Post'
import AddMuseum from '@/components/AddMuseum'

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
      path: '/Museum/:mId',
      name: 'Museum',
      component: Museum
    },
    {
      path: '/Collection/:cId',
      name: 'Collection',
      component: Collection
    },
    {
      path: '/AddCollection',
      name: 'AddCollection',
      component: AddCollection
    },
    {
      path: '/AddMuseum',
      name: 'AddMuseum',
      component: AddMuseum
    },
    {
      path: '/Post/:pId',
      name: 'Post',
      component: Post
    }
  ]
})
