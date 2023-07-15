echo "<script>
    export default {
        
    }

</script>

<template>


</template>

<style lang="scss" scoped>


</style>" > src/components/${1}.vue


echo "Copiare nello script di App.vue:"

echo "import ${1} from './components/${1}.vue';
import ${1} from './${1}.vue'; // (o nel genitore del nuovo componente)

export default {
    components: {
        ${1},
    },
};"

echo "Copiare nel template di App.vue (o nel genitore del nuovo componente):"

echo "<${1} />"