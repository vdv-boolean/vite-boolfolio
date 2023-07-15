<script>
    import axios from 'axios';
    import ProjectCard from './ProjectCard.vue';

    export default {
        data() {
            return {
                arrProjects: [],
                currentProject: 2,
            };
        },
        components: {
            ProjectCard
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

<ProjectCard 
    v-for="project in arrProjects" 
    :key="project.id"
    :data="project"
/>


</template>

<style lang=scss scoped>


</style>
