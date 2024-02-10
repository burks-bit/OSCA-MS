// Composables
import { createRouter, createWebHistory } from 'vue-router'
import AdminLayout from '@/layouts/AdminLayout.vue'
import ClientLayout from '@/layouts/ClientLayout.vue'

// Function to check if the user is logged in
function isLoggedIn() {
  // Implement your logic to check if the user is logged in
  // For example, you can check if there's a token in local storage
  return localStorage.getItem('token') !== null;
}

// Navigation guard to check authentication
function requireAuth(to, from, next) {
  if (to.meta.requiresAuth && !isLoggedIn()) {
    next({ name: 'Login' }); // Redirect to login page if not logged in
  } else {
    next(); // Proceed to the route
  }
}

const routes = [
  {
    path: '',
    name: 'Login',
    component: () => import('@/components/Login.vue'),
  },
  {
    path: '/admin',
    component: AdminLayout,
    meta: {
      requiresAuth: true,
    },
    children: [
      {
        path: '',
        name: 'AdminHome',
        component: () => import('@/views/Admin/Index.vue'),
      },
      {
        path: 'users',
        name: 'UserList',
        component: () => import('@/views/Admin/Users/UserList.vue'), 
      }
    ]
  },
  {
    path: '/client',
    component: ClientLayout,
    meta: {
      requiresAuth: true,
    },
    children: [
      {
        path: '',
        name: 'ClientHome',
        component: () => import('@/views/Client/Index.vue'),
      },
      {
        path: 'members',
        name: 'Members',
        component: () => import('@/views/Client/Members/Members.vue'),
      },
      {
        path: 'reports',
        name: 'Reports',
        component: () => import('@/views/Client/Reports/Reports.vue'),
      }
    ]
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
})

// Add global navigation guard
router.beforeEach(requireAuth);

export default router