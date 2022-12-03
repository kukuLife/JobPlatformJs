<template>
    <div class="all_info d-flex">
        <siteHeader />
        <sideBar />
        <div class="d-flex m-auto m-top user-info">
            <div>
                <quizs />
            </div>
            <div class="d-flex course-job">
                <courses />
                <jobs />
            </div>
        </div>
     <router-view></router-view>
    </div>
</template>

<script>
import router from '../router'
import axios from 'axios';
import qs from 'qs'
import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'
import courses from '@/components/courses'
import quizs from '@/components/quizs'
import jobs from '@/components/jobs'
import "@/assets/css/common-pc.css"

    axios.defaults.withCredentials = true;
    export default {
        data() {
            return {
                userId : this.$route.query.userId,
                userName : this.$route.query.userName,
                userKeyWord : this.$route.query.userKeyWord,
                jobList : []
            };
        },
        async mounted() {
            const config = {
                headers : {
                    'X-Requested-With' : 'XMLHttpRequest',
                    'Content-Type' : 'application / x-www-form-urlencoded',
                    'withCredentials' : true,
                },
                params : {
                    'userId' : this.userId,
                    'userKeyWord' : this.userKeyWord
                }
            };

            axios.get('http://localhost:8080/#/jobs', config).then((res) => {
                if (res) {
                    this.jobList = [{'jobName':'job1'}, {'jobName':'job2'}, {'jobName':'job3'}, {'jobName':'job4'}, {'jobName':'job5'}];
                    this.jobList.forEach(element => {
                        this.jobList.push(element);
                    }); 
                }
            }).catch((res) => {
                app.result = res.data;
                alert(res);
            });
        },
        methods: {
            getUserInfo() {
               alert('getUserInfo');
            },
            logout() {
                const paramsBeforeFormat = {
                    'userId' : this.userId
                }
                const config = {
                    header : {
                        'X-Requested-With' : 'XMLHttpRequest',
                        'Content-Type' : 'application/x-www-form-urlencoded',
                        'withCredentials' : true,
                        'Access-Control-Allow-Origin' : true
                    },
                    url : 'http://localhost:8080/logout',
                    method : 'post',
                    data : qs.stringify(paramsBeforeFormat)
                };
                
               
                axios(config).then((res) => {
                    if (res.data) {
                        router.push({ name: 'login'});
                    }

                }).catch((res) => {
                    app.result = res.data;
                    alert(res);
                });

            },
        },
        components: {
            siteHeader,
            sideBar,
            courses,
            quizs,
            jobs
        }
    };
</Script>

<style scoped>

.user-info {
    flex-direction: column;
    width: 80%;
    margin-left: 200px;
}

.userName{
    margin-left: 100px;
}

.taskInfo {
    margin-top: 10px;
}

.jobInfo {
    margin-top: 50px;
}

.jobList {
    margin-left: 20px;
}

.jobList ul {
    padding-left: 0px;
}

.jobList li {
    list-style: none;  
    margin-top: 10px;
}

.course-job {
    flex:1 1 0%;
}
</style>