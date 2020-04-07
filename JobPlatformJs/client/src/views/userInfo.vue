<template>
    <div class="all_info">
        <div>Hello UserInfo</div> <!-- banner -->
        <div class="user_info">
            <span class="userId">userId : {{userId}}</span>
            <span class="userName">userName : {{userName}}</span>
            <div class="taskInfo">
                <router-link :to="{path : '/taskInfo/', query:{ 'userId' : userId }}">taskInfo</router-link>
            </div>
        </div>
        <div class="project_info">
            recommended projects
            <div class="projectList">
                <ul>
                    <li v-for="project in projectList"  v-bind:key="project.PJ_ID">
                        <router-link :to="{path : '/projectInfoDetail/', query:{ 'projectName' : project.PJ_NAME, 'projectContent' : project.PJ_INFO}}">{{ project.PJ_NAME }}</router-link>
                    </li>
                </ul>
            </div>
        </div>
     <router-view></router-view>
    </div>
</template>

<script>

    import axios from 'axios';
    axios.defaults.withCredentials = true;

    export default {
        data() {
            return {
                userId : this.$route.query.userId,
                userName : this.$route.query.userName,
                passWord : '',
                projectList : []
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
                    'projectKeyWord' : ''
                }
            };

            axios.get('http://localhost:8080/projectInfo/getProject', config).then((res) => {
                if (res) {
                    this.projectList = [];
                    res.data.forEach(element => {
                        this.projectList.push(element);
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
        },
    };
</Script>

<style scoped>

.all_info {
    width: 600px;
    margin-left: 40%
}

.user_info {
    margin-left: 20px;
}

.userName{
    margin-left: 100px;
}

.taskInfo {
    margin-top: 10px;
}

.project_info {
    margin-top: 50px;
}

.projectList {
    margin-left: 20px;
}

.projectList ul {
    padding-left: 0px;
}

.projectList li {
    list-style: none;  
    margin-top: 10px;
}
</style>