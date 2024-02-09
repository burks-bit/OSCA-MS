<template>
    <v-app id="inspire">
        <v-navigation-drawer v-model="drawer" class="bg-deep-purple" theme="">
            <v-list>
                <v-list-item class="text-center">
                    <!-- <img :src="imageSrc" alt="Example Image" height="60"/> -->
                    <h1>Sample App</h1>
                </v-list-item>
                <v-list-item link href="/client" prepend-icon="mdi-view-dashboard-outline" title="Dashboard"></v-list-item>
                <!-- <v-list-group value="">
                    <template v-slot:activator="{ props }">
                        <v-list-item
                            prepend-icon="mdi-list-box-outline"
                            v-bind="props"
                            title="Test / Procedures"
                        >
                        </v-list-item>
                    </template>
                    <v-list-item title="Test Codes" to="/admin/test_codes"></v-list-item>
                    <v-list-item title="Test Groups" to="/admin/test_groups"></v-list-item>
                </v-list-group> -->
          
                <!-- <v-list-group>
                    <template v-slot:activator="{ props }">
                        <v-list-item
                            prepend-icon="mdi-slot-machine-outline"
                            v-bind="props"
                            title="Instruments"
                        >
                        </v-list-item>
                    </template>
                    <v-list-item title="Instruments" to="/admin/instruments"></v-list-item>
                    <v-list-item title="Instrument Sets" to="/admin/instrument_sets"></v-list-item>
                </v-list-group> -->
              
                <v-list-item link href="/client/members" prepend-icon="mdi-account-group" title="Members"></v-list-item>
                <v-list-item link href="/client/reports" prepend-icon="mdi-chart-line" title="Reports"></v-list-item>
                <!-- <v-list-group>
                    <template v-slot:activator="{ props }">
                        <v-list-item
                            prepend-icon="mdi-cog"
                            v-bind="props"
                            title="Settings"
                        >
                        </v-list-item>
                    </template>
                    <v-list-item title="Branches" to="/admin/branches"></v-list-item>
                    <v-list-item title="Locations" to="/admin/locations"></v-list-item>
                </v-list-group> -->
            </v-list>
        <template v-slot:append>
            <div class="pa-2">
                <div v-if="!logoutspinner">
                    <v-btn block @click="logout" color="default">
                        Logout
                    </v-btn>
                </div>
                <div v-if="logoutspinner">
                    Logging out...
                    <v-progress-linear color="default" indeterminate :height="2"></v-progress-linear>
                </div>
            </div>
        </template>
        </v-navigation-drawer>
  
        <v-app-bar :elevation="1">
            <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
            <v-app-bar-title style="font-size:14px;">
                <p v-if="userRole === '1'">Welcome, <b>User!</b></p>
                <!-- <p v-else-if="userRole === '30'">Hello, <b>Medtech!</b></p>
                <p v-else-if="userRole === '35'">Hello, <b>Phlebo!</b></p>
                <p v-else-if="userRole === '45'">Hello, <b>Patho!</b></p>
                <p v-else> </p> -->
            </v-app-bar-title>
        </v-app-bar>
        <v-main>
            <v-container>
                <div v-if="!isLoggedIn">
                    <Login />
                </div>
                <div v-if="isLoggedIn">
                    <router-view />
                </div>
            </v-container>
        </v-main>
    </v-app>
</template>
  
  <script setup>
    import { ref } from 'vue';
    import Login from '@/components/Login.vue';
    const drawer = ref(null);
  </script>
  
  <script>
    import axios from 'axios';
    import imageSrc from '@/assets/webhistopath_logo.png';
    export default {
      data() {
        return {
          logoutspinner: false,
          imageSrc: imageSrc,
          isLoggedIn: !!localStorage.getItem('token'),
          userRole: localStorage.getItem('userRole') || 'Guest',
        };
      },
      methods: {
        async logout() {
          try {
  
            this.logoutspinner = true;
            // Make a request to the logout endpoint on the Laravel backend
            await axios.post('http://127.0.0.1:1234/api/logout', null, {
              headers: {
                Authorization: `Bearer ${localStorage.getItem('token')}`,
                // 'X-XSRF-TOKEN': document.head.querySelector('meta[name="csrf-token"]').content,
              },
            });
  
            // Clear user-related data from localStorage
            localStorage.removeItem('token');
            localStorage.removeItem('userRole');
            // Redirect to the login page or perform other actions as needed
            this.$router.push({ name: 'Login' });
  
            this.logoutspinner = false;
          } catch (error) {
            console.error('Logout failed', error.response.data);
            // Handle error, show a message, etc.
          }
        },
      },
    }
    // import DefaultDrawer from './NavigationDrawer.vue'
    // import DefaultView from './View.vue'
  </script>
  