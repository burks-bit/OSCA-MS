// Composables
import { createRouter, createWebHistory } from 'vue-router'
import AdminLayout from '@/layouts/AdminLayout.vue'
import ClientLayout from '@/layouts/ClientLayout.vue'

const routes = [
  {
    path: '',
    name: 'Login',
    // route level code-splitting
    // this generates a separate chunk (Home-[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import('@/components/Login.vue'),
  },
  {
    path: '/admin',
    name: 'AdminHome',
    // route level code-splitting
    // this generates a separate chunk (Home-[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import('@/views/Admin/Index.vue'),
    meta: {
      layout: AdminLayout
    },
  },
  {
    path: '/client',
    name: 'ClientHome',
    // route level code-splitting
    // this generates a separate chunk (Home-[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import('@/views/Client/Index.vue'),
    meta: {
      layout: ClientLayout
    },
  },
  {
    path: '/admin/users',
    name: 'UserList',
    // route level code-splitting
    // this generates a separate chunk (Home-[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import('@/views/Admin/Users/UserList.vue'),
    meta: {
      layout: AdminLayout
    },
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
})

export default router
