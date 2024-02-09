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
    component: () => import('@/views/Admin/Index.vue'),
    meta: {
      layout: AdminLayout
    },
  },
  {
    path: '/client',
    name: 'ClientHome',
    component: () => import('@/views/Client/Index.vue'),
    meta: {
      layout: ClientLayout
    },
  },
  {
    path: '/client/reports',
    name: 'Reports',
    component: () => import('@/views/Client/Reports/Reports.vue'),
    meta: {
      layout: ClientLayout
    },
  },
  {
    path: '/client/members',
    name: 'Members',
    component: () => import('@/views/Client/Members/Members.vue'),
    meta: {
      layout: ClientLayout
    },
  },
  {
    path: '/admin/users',
    name: 'UserList',
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
