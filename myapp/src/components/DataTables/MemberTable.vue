<template>
    <h3>User Accounts</h3>
    <div style="margin-top:15px;margin-bottom:15px;text-align:right">
        <router-link to="/admin/users/add"><v-btn prepend-icon="mdi-account-plus" size="small">Add</v-btn></router-link>
    </div>
    <v-table
        fixed-header
        height="500px"
        width="100%"
        density="compact"
    >
        <thead>
            <tr>
                <th class="text-left">User ID</th>
                <th class="text-left">Complete Name</th>
                <th class="text-left">Username</th>
                <th class="text-left">Role</th>
                <th class="text-center">Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="user in userList.data" :key="user.id">
                <td>{{ user.id }}</td>
                <td>{{ user.last_name }}, {{ user.first_name }} {{ user.initials }}</td>
                <td>{{ user.username }}</td>
                <td>
                    <span v-if="user.role == '0'">Admin</span>
                    <span v-if="user.role == '1'">Normal User</span>
                </td>
                <td class="text-center">
                    <router-link :to="{ path: '/admin/users/edit/'+ user.id }">
                        <v-btn prepend-icon="mdi-square-edit-outline" color="primary" size="small">Edit</v-btn>
                    </router-link>
                    &ensp;
                    <v-btn prepend-icon="mdi-delete-alert-outline" color="red" size="small">Delete</v-btn>
                </td>
            </tr>
        </tbody>
    </v-table>
</template>

<script>
    import axios from 'axios';

    export default {
        data() {
            return {
                loading: false,
                userList: {
                    data: [],
                    prev_page_url: null,
                    next_page_url: null,
                },
            };
        },
        mounted() {
            this.fetchUserList('http://127.0.0.1:1234/api/users/all');
        },
        methods: {
            async fetchUserList(url) {
            try {
                this.loading = true;
                const response = await axios.get(url, {
                headers: {
                    'Authorization': `Bearer ${localStorage.getItem('token')}`,
                },
                });
                console.log(response.data.data);
                this.userList.data = response.data.data;
                this.userList.prev_page_url = response.data.prev_page_url;
                this.userList.next_page_url = response.data.next_page_url;
                this.loading = false;
            } catch (error) {
                console.error('Failed to fetch user list', error);
            }
            },
        },
    };
</script>

<script setup>
    //
</script>