<script>
    import axios from 'axios';
    export default {
        data() {
            return {
                arrProjects: [],
            };
        },
        created() {
            axios
              .get('http://localhost:8000/api/projects')
            .then(response => (this.arrProjects = response.data));
        },
    }

</script>

<template>

<ul>
    <li v-for="project in arrProjects" :key="project.id">
        {{ project.title }}
    </li>
</ul>

</template>

<style lang=scss scoped>


</style>
