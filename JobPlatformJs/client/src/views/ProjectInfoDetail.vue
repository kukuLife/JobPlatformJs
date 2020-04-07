<template>
    <div>
        <div class="projectName">
            {{ projectName }}
            <router-view></router-view>
        </div>

        <div class="projectContent">
            {{ projectContent }}
            <router-view></router-view>
        </div> 
    </div>   
</template>

<script>
export default {
    data() {
        return {
            projectName : '',
            projectContent : '',
        }
    },

    mounted() {
        this.projectName = this.$route.query.projectName
        this.projectContent = this.$route.query.projectContent
    }
}
</script>

<style scoped>
    .projectContent {
        text-align: center
    }
</style>