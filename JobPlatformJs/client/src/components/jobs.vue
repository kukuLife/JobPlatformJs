<template>
    <div class="d-flex jobs">
        <div class="d-flex">
            <div class="d-flex title">
                <h4><a href="/jobs">jobs</a></h4>
                <p>by categories</p>
            </div>
        </div>
        <div class="d-flex jobList">
            <ul v-for="job in jobList">
                <li>
                    <div class="d-flex">
                        <a><img src="@/assets/images/gulp.png" height="50" width="50"/></a>
                        <div class="job-name">{{ job.fields.job_title }}</div>
                        <div class="job-amount">{{ job.fields.job_detail }}</div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</template>

<style scoped>
.jobs {
    margin-left: 30px;
}
</style>

<script>
import "@/assets/css/common-pc.css"
export default {
    name: 'jobs',
    props: {
        jobList: {
            type: Array
        }
    }
}
</script>

<style scoped>

.jobs {
    flex: 1;
    flex-direction: column;
}

.title {
    flex: 1 1 0%;
    flex-direction: column;
    align-items: flex-start;
}

.job-name {
    flex:1
}
.job-amount {
    padding-left: 10px;
}

.jobList {
    flex-direction: column;
}

p {
    margin-top: 3px;
}

ul {
    padding-left: 0;
    flex: 1;
    flex-direction: column;
    display: flex;
}

a {
    font-family: Oswald,Helvetica Neue,Arial,sans-serif;
    font-weight: 400;
    line-height: 1.5;
    color: #fff;
    padding: .25rem .5rem;
    border-radius: .2rem;
    background-color: #2196f3;
    border-color: #2196f3;
    box-shadow: inset 0 1px 0 hsl(0deg 0% 100% / 15%), 0 1px 1px rgb(0 0 0 / 8%);
}

p {
    color: #b8bdc2;
    text-transform: uppercase;
    font-size: .707rem;
    font-weight: 500;
}

div {
    padding-left: 10px;
}
</style>
