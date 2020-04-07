<template>
    <div>
        <div class="task_info">
            task infos
            <div class="tasksInfoList" v-for="task in tasksInfoList"  v-bind:key="task.task_id">
                <router-link :to="{path : '/taskInfoDetail/', query:{'taskObj' : task}}">{{ task.task_content }}</router-link>
            </div>
        </div>
    </div>

</template>

<script>

    import axios from 'axios';
    axios.defaults.withCredentials = true;

export default {
    data() {
        return {
            userId : this.$route.query.userId,
            tasksInfoList : []
        }
    },

    async mounted() {
              const config = {
                headers : {
                    'X-Requested-With' : 'XMLHttpRequest',
                    'Content-Type' : 'application / x-www-form-urlencoded',
                    'withCredentials' : true
                },
                params : {
                    'userId' : this.userId
                }
            };

            axios.get('http://localhost:8080/taskInfo/getTaskInfoList', config).then((res) => {
                if (res) {
                    this.tasksInfoList = [];
                    res.data.forEach(element => {
                        this.tasksInfoList.push(element);
                    }); 
                }
            }).catch((res) => {
                app.result = res.data;
            });
    },

    methods: {
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
</style>