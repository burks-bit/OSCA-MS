<!-- eslint-disable vue/multi-word-component-names -->
<template>
    <h3>Reports</h3>

    <div style="margin-top:15px;margin-bottom:15px;text-align:right">
        To Add: date started || date end || type of report 
        <router-link to="/admin/users/add"><v-btn prepend-icon="" size="small">Submit</v-btn></router-link>
    </div>
    <div v-if="loading" class="text-center" style="align-items:center;vertical-align:middle;">
        <v-progress-linear color="blue-lighten-3" indeterminate></v-progress-linear>
    </div>
    <div v-else>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                loading: true
            }
        }
    }
</script>