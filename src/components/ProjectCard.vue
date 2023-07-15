<script>
    export default {
        props: {
            data: Object,
        },
    }

</script>

<template>

<ul>
    <li>
        {{ data.title }}
    </li>
    <li>
        {{ data.creation_date }}
    </li>
    <li>
        {{ data.description }}
    </li>
    <li>
        <a :href=data.link_github>
            Github
        </a>
    </li>
    <li>
        Technologies:
        <ul>
            <li
                v-for="tech in data.technologies" 
                :key="tech.id"
            >
                {{ tech.name }}
            </li>
        </ul>
    </li>

</ul>

</template>

<style lang=scss scoped>


</style>
