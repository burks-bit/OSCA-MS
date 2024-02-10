<!-- eslint-disable vue/multi-word-component-names -->
<template>
    <h3>Members</h3>
    <div style="margin-top:15px;margin-bottom:15px;text-align:right">
        <router-link to="/admin/users/add"><v-btn prepend-icon="mdi-account-plus" size="small">Add</v-btn></router-link>
    </div>
    <div v-if="loading" class="text-center" style="align-items:center;vertical-align:middle;">
        <v-progress-linear color="blue-lighten-3" indeterminate></v-progress-linear>
    </div>
    <div v-else>
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
                    <th class="text-left">Age</th>
                    <th class="text-left">Gender</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="members in memberList.data" :key="members.id">
                    <td>{{ members.id }}</td>
                    <td>{{ members.last_name }}, {{ members.first_name }} {{ members.middle_name }}</td>
                    <td>{{ members.age }}</td>
                    <td>{{ members.gender }}</td>
                    <td class="text-center">
                        <router-link :to="{ path: '/client/members/edit/'+ members.id }">
                            <v-btn prepend-icon="mdi-square-edit-outline" color="primary" size="small">Edit</v-btn>
                        </router-link>
                        &ensp;
                        <v-btn prepend-icon="mdi-delete-alert-outline" color="red" size="small">Delete</v-btn>
                    </td>
                </tr>
            </tbody>
        </v-table>
        <nav>
            <v-btn @click="fetchMemberList(memberList.prev_page_url)" :disabled="!memberList.prev_page_url" size="small">Previous</v-btn> &ensp;
            <v-btn @click="fetchMemberList(memberList.next_page_url)" :disabled="!memberList.next_page_url" size="small">Next</v-btn>
        </nav>
    </div>
    
</template>

<script>
    import axios from 'axios';
    
    export default {
        data() {
            return {
                loading: false,
                memberList: {
                    data: [],
                    prev_page_url: null,
                    next_page_url: null,
                },
            };
        },
        mounted() {
            this.fetchMemberList('http://127.0.0.1:1234/api/members/all');
        },
        methods: {
            async fetchMemberList(url) {
            try {
                this.loading = true;
                const response = await axios.get(url, {
                headers: {
                    'Authorization': `Bearer ${localStorage.getItem('token')}`,
                },
                });
                // console.log(response.data.data);
                this.memberList.data = response.data.data;
                this.memberList.prev_page_url = response.data.prev_page_url;
                this.memberList.next_page_url = response.data.next_page_url;
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