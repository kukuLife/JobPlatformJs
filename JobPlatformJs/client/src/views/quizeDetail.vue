<template>
    <div>
        <div class="task_info">
            taskinfo
            <div class="taskInfo">
                <p>{{ taskInfo.taskAnswer }}</p>
                <p>{{ taskInfo.taskContent }}</p>
                <textarea cols="30" rows="10" v-model="taskInfo.taskAnswer"></textarea>
            </div>
        </div>
        <div class="task_response">
            <P>{{ task_response }}</P>
            <button @click="updateAnswer()">Run</button>
        </div>
    </div>

</template>

<script>

    import axios from 'axios';
    import qs from 'qs'
    axios.defaults.withCredentials = true;

export default {
    data() {
        return {
            taskInfo : this.$route.query.taskObj,
            userId : this.$route.query.userId,
            task_response : ""
        }
    },

    methods: {
         updateAnswer() {
            const paramsBeforeFormat = {
                'taskId' : this.taskInfo.taskId,
                'taskAnswer' : this.taskInfo.taskAnswer
            }

            const config = {
                header : {
                    'X-Requested-With' : 'XMLHttpRequest',
                    'Content-Type' : 'application/x-www-form-urlencoded',
                    'withCredentials' : true,
                    'Access-Control-Allow-Origin' : true
                },
                url : 'http://localhost:8080/taskInfo/processTask',
                method : 'post',
                data : qs.stringify(paramsBeforeFormat)
            };
            
            
            axios(config).then((res) => {
        
                if (res.data) {
                    this.task_response = res.data
                    console.log(this.task_response)
                }
            }).catch((res) => {
                app.result = res.data;
                alert(res);
            });
        }
    }
}
</script>

<style scoped>
    .task_info {
        margin-left: 40%;
    }

    .tasksInfoList {
        margin-left: 20px;
    }

    .task_response {
        margin-left: 40%;
        margin-top: 50px;
    }

    .task_answer {
        width: 300px;
        height: 100px;
    }
</style>