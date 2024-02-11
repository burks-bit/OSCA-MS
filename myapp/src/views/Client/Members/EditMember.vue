<template>
    <h3>Edit</h3>
</template>

<script>
    export default {
        props: ['id'],
        setup(props) {
            console.log(props.id); // Logging the id prop

            return {
            // Any other setup logic here
            };
        },
        mounted() {
            // Code for mounted hook, if needed
        },
        methods: {
            // Any other methods here
        }
    }
</script>