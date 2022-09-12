<template>
    <div class="d-flex">
        <siteHeader />
        <sideBar />
        <div class="main-frame d-flex">
            <div class="d-flex course-img">
                <img src="@/assets/images/vuejs.png" width=100% height=80px>
            </div>
            <div class="d-flex">
                <div class="d-flex job-basic-info">
                    <h1>Job Basic Info</h1>
                    <h3>name</h3>
                    <div>name desc</div>
                    <h3>about me</h3>
                    <div>about me desc</div>
                    <h3>connect</h3>
                    <div>connect desc</div>
                </div>
                <div class="d-flex related-course">
                    <h1>related courses</h1>
                    <div class="d-flex">
                        <img height="100%" width="150px" src="@/assets/images/vuejs.png"/>
                        <div class="d-flex">
                            <h3>vue js</h3>
                            <div>vue js desc</div>
                        </div>
                    </div>
                    <div class="d-flex">
                        <img height="100%" width="150px" src="@/assets/images/nodejs.png"/>
                        <div class="d-flex">
                            <h3>node</h3>
                            <div>node js desc</div>
                        </div>
                    </div>
                    <div class="d-flex">
                        <img height="100%" width="150px" src="@/assets/images/github.png"/>
                        <div class="d-flex">
                            <h3>github</h3>
                            <div>github desc</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'

export default {
    data () {
        return {

        }    
    },
    components: {
        siteHeader,
        sideBar,
    }
}

</script>

<style scoped>
.course-img {
    flex-basis: 25%;
}

.main-frame {
    flex-direction: column;
    margin-top: 50px;
    margin-left: 160px;
    flex-basis: 100%;
}

.main-frame > div:nth-child(2) {
    flex-direction: row;
    flex-basis: 100%;
}

.main-frame > div:nth-child(2) > div {
    flex-direction: column;
}

h1, h3, h1 div {
    text-align: left;
}

.job-basic-info {
    text-align: left;
    flex-basis: 70%;
}

.job-basic-info div {
    margin-left: 20px;
}

.related-course h3 {
    margin-left: 10px;
}

.related-course {
    flex-basis: 30%;
}

.related-course > div {
    margin-top: 20px;
}

.related-course > div > div {
    flex-direction: column;
}
</style>
