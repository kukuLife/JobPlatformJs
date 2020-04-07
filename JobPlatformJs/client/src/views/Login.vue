<template>
    <div class="background">
        <div class="login-box">
            <div class="login-elem-div">
                <input class="login-elem" type="text" placeholder="input userId" v-model.trim="userId">
            </div>
            <div class="login-elem-div">
                <input class="login-elem" type="text" placeholder="input passWord" v-model.trim="passWord">
            </div>
            <button class="login-btn" @click="login()">Login</button>
            <router-view></router-view>
        </div>
    </div>
</template>

<script>
    import router from '../router';
    import axios from 'axios';
    import qs from 'qs'
    axios.defaults.withCredentials = true;

    export default {
        data() {
            return {
                userId : '',
                passWord : '',
            };
        },
        methods : {
            login() {

                const paramsBeforeFormat = {
                    'userId' : this.userId,
                    'passWord' : this.passWord
                }

                const config = {
                    header : {
                        'X-Requested-With' : 'XMLHttpRequest',
                        'Content-Type' : 'application/x-www-form-urlencoded',
                        'withCredentials' : true,
                        'Access-Control-Allow-Origin' : true
                    },
                    url : 'http://localhost:8080/login',
                    method : 'post',
                    data : qs.stringify(paramsBeforeFormat)
                };
                
               
                axios(config).then((res) => {
           
                    if (res.data) {
                      
                        router.push({ name: 'userInfo', query : {userId : this.userId, userName : this.userName}});
                    }

                }).catch((res) => {
                    app.result = res.data;
                    alert(res);
                });

            },
        },
    };
</script>

<style>

body {
    background: url('~@/assets/loginBackground.jpg')
}

.login-box {
    text-align: center;
}

.login-elem-div {
    margin: 20px 0 0;
}

.login-elem-div input{
    height: 35px;
    width: 500px;
}

.login-btn {
    margin-top: 20px;
}

</style>
