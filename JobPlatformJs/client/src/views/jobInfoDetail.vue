<template>
    <div>
        <div class="jobName">
            {{ jobName }}
            <router-view></router-view>
        </div>

        <div class="jobInfo">
            {{ jobInfo }}
            <router-view></router-view>
        </div> 
    </div>   
</template>

<script>
export default {
    data() {
        return {
            jobName : '',
            jobInfo : '',
        }
    },

    mounted() {
        this.jobName = this.$route.query.jobName
        this.jobInfo = this.$route.query.jobInfo
    }
}
</script>

<style scoped>
    .jobInfo {
        text-align: center
    }
</style>