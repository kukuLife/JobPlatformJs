<template>
    <div class="all_info d-flex">
        <siteHeader />
        <sideBar />
        <div class="d-flex m-auto m-top user-info">
            <div v-if="this.puzzleList && this.puzzleList.length > 0">
                <quizs :puzzleList="this.puzzleList"/>
            </div>
            <div v-else>
                loading......
            </div>
            <div class="d-flex course-job">
                <div v-if=courseList>
                    <courses :courseList="this.courseList" />
                </div>
                <div v-else>
                    loading......
                </div>   
                <div v-if=jobList>
                 <jobs :jobList="this.jobList"/>
                </div>
                <div v-else>
                    loading......
                </div>
            </div>
        </div>
     <router-view></router-view>
    </div>
</template>

<script>
import router from '../router'
import qs from 'qs'
import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'
import courses from '@/components/courses'
import quizs from '@/components/quizs'
import jobs from '@/components/jobs'
import "@/assets/css/common-pc.css"
import axiosHttp from "@/http/headerHandler.js"

  
    export default {
        data() {
            return {
                userId : this.$route.query.userId,
                userName : this.$route.query.userName,
                userKeyWord : this.$route.query.userKeyWord,
                jobList : [],
                courseList : [],
                puzzleList : []
            };
        },
        beforeMount() {
            const config = {
                    header : {
                        'X-Requested-With' : 'XMLHttpRequest',
                        'Content-Type' : 'application/json',
                        'Access-Control-Allow-Origin' : true
                    },
                    url : 'http://192.168.2.110:8000/mainBack/jobs/?userId=1',
                    method : 'get',

                };

            axiosHttp(config).then((res) => {
                if (res) {
                    this.jobList = JSON.parse(res.data);
                }
            }).catch((res) => {
                app.result = res.data;
                alert(res);
            });

            config.url = 'http://192.168.2.110:8000/mainBack/courses/?userId=1';

            axiosHttp(config).then((res) => {
                if (res) {
                    this.courseList = JSON.parse(res.data);
                    console.log("courseList===" + this.courseList)
                }
            }).catch((res) => {
                app.result = res.data;
                alert(res);
            });
            config.url = 'http://192.168.2.110:8000/mainBack/puzzles/?userId=2';
                axiosHttp(config).then((res) => {
                    if (res) {
                        this.puzzleList = JSON.parse(res.data);
                        
                        console.log("puzzleList===" + this.puzzleList)
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
                
               
                axiosHttp(config).then((res) => {
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