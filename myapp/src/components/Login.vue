<!-- eslint-disable vue/multi-word-component-names -->
<template>
    <v-container class="fill-height">
        <v-responsive class="align-center text-center fill-height">
            <div v-if="loading">
                <Spinner />
            </div>
            <div v-if="!loading">
                <!-- <img :src="imageSrc" alt="Example Image" height="150"/> -->
                <v-sheet width="300" class="mx-auto">
                    <h3 style="color:rgb(77, 0, 148)" class="mt-8">Login Page</h3>
                    <v-form @submit.prevent="login">
                        <v-text-field
                            v-model="username"
                            :counter="10"
                            label="Username"
                            required
                            hide-details
                            class="mt-2" color="purple"
                        ></v-text-field>

                        <v-text-field
                            v-model="password"
                            label="Password"
                            hide-details
                            required
                            type="password"
                            class="mt-2" color="purple"
                        ></v-text-field>

                        <v-btn type="submit" block class="mt-2" color="indigo" >Login</v-btn>
                    </v-form>
                    <div v-if="message">
                        <br>
                        <h3 style="color: rgb(243, 85, 85);"><v-icon>mdi-alert</v-icon> {{ error_message }}</h3>
                    </div>
                </v-sheet>
            </div>
        </v-responsive>
    </v-container>
</template>
  
  
<script setup>
    import Spinner from '@/components/Spinner.vue'
</script>
  
<script>
    import axios from 'axios';
//   import imageSrc from '@/assets/webhistopath_logo.png';
    export default {
        data() {
            return {
                message: false,
                loading: false,
                error_message: null,
                // imageSrc: imageSrc,
                username: '',
                password: '',
            };
        },
    methods: {
        async login() {
            try {
                const response = await axios.post('http://127.0.0.1:1234/api/login', {
                    username: this.username,
                    password: this.password,
                });
              
                if(response.data.status == 401){
                    this.message = true;
                    this.error_message = response.data.message;
                } else {
                    localStorage.setItem('userRole', response.data.role);
                    localStorage.setItem('token', response.data.token);
                    this.loading = true;
                    if(response.data.role == '0'){
                        this.$router.push({ name: 'AdminHome' });
                    } else {
                        this.$router.push({ name: 'ClientHome' });
                    }
                    this.loading = false;
                }
            } catch (error) {
                console.error('Login failed', error.response.data);
                // Handle error, show a message, etc.
            }
        },
  
        // async getUserRole() {
        //     try {
        //         const response = await axios.get('http://127.0.0.1:1234/api/getUserRole', {
        //             headers: {
        //                 Authorization: `Bearer ${localStorage.getItem('token')}`,
        //             },
        //         });
        //         console.log(response.data);
        //         console.log(this.tokenToVerify);
        //         localStorage.setItem('userRole', response.data.role);
          
        //         if(response.data.role == '0'){
        //             this.$router.push({ name: 'AdminHome' });
        //         } else {
        //             this.$router.push({ name: 'MedtechHome' });
        //         }
          
        //     } catch (error) {
        //         console.error('Failed to get user role', error.response.data);
        //         // Handle error, show a message, etc.
        //     }
        // },
    },
};
</script>
  