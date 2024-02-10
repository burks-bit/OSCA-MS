// Composables
import { createRouter, createWebHistory } from 'vue-router'
import AdminLayout from '@/layouts/AdminLayout.vue'
import ClientLayout from '@/layouts/ClientLayout.vue'

// Function to check if the user is logged in
function isLoggedIn() {
  return localStorage.getItem('token') !== null;
}

function requireAuth(to, from, next) {
  const loggedInUserRole = localStorage.getItem('userRole');
  if (to.meta.requiresAuth && !isLoggedIn()) {
    next({ name: 'Login' }); // Redirect to login page if not logged in
  } else if (to.name === 'Login' && isLoggedIn() && loggedInUserRole === '0') {
    next({ name: 'AdminHome' });
  } else if (to.name === 'Login' && isLoggedIn() && loggedInUserRole === '1') {
    next({ name: 'ClientHome' });
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
      role: ['0'],
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
      },
      {
        path: 'edit/:id',
        name: 'EditUser',
        component: () => import('@/views/Admin/Users/EditUser.vue'), 
      }
    ]
  },
  {
    path: '/client',
    component: ClientLayout,
    meta: {
      role: ['1'],
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

router.beforeEach(requireAuth);

export default router
