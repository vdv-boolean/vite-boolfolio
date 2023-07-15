<script>
    import axios from 'axios';
    export default {
        data() {
            return {
                arrProjects: [],
                currentProject: 1,
            };
        },
        methods: {
            getProjects() {
                axios
                .get('http://localhost:8000/api/projects',{
                    params: {
                    page: this.currentProject,
                    }
                })
                .then(response => (this.arrProjects = response.data.data));
            },
        },
        created() {
            this.getProjects()
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
