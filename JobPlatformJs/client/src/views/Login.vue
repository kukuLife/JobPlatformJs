<template>
    <div class="background">
        <div class="login-box d-flex f-wrap m-top m-auto">
            <div class="login-elem-div m-auto">
                <div class="login-wrapper d-flex m-auto">
                    <label>Your email address</label>
                    <div w-full>
                        <input type="text" placeholder="input userId" v-model.trim="userId">
                    </div>
                </div>
            </div>
            <div class="login-elem-div w-full m-auto">
                <div class="login-wrapper d-flex m-auto">
                    <label>Your passWord</label>
                    <div w-full>
                        <input type="text" placeholder="input passWord" v-model.trim="passWord">
                    </div>
                </div>
            </div>
            <button class="login-btn m-auto" @click="login()">Login</button>
        </div>
    </div>
</template>

<script>
    import "@/assets/css/common-pc.css"
    import axios from 'axios';
    axios.defaults.withCredentials = true;

    export default {
        data() {
            return {
                userId : '001',
                passWord : '001',
            };
        },
        methods : {
            login() {

                console.log("hello login")
                // const paramsBeforeFormat = {
                //     'userId' : this.userId,
                //     'passWord' : this.passWord
                // }

                // const config = {
                //     header : {
                //         'X-Requested-With' : 'XMLHttpRequest',
                //         'Content-Type' : 'application/x-www-form-urlencoded',
                //         'withCredentials' : true,
                //         'Access-Control-Allow-Origin' : true
                //     },
                //     url : 'http://localhost:8080/login',
                //     method : 'post',
                //     data : qs.stringify(paramsBeforeFormat)
                // };
                
               
                // axios(config).then((res) => {
           
                //     if (res.data) {
                      
                //         router.push({ name: 'userInfo', query : {userId : this.userId, userName : this.userName, userKeyWord : res.data.userKeyWord}});
                //     }

                // }).catch((res) => {
                //     app.result = res.data;
                //     alert(res);
                // });
                //this.$router.push({ name: 'userInfo', query : {userId : this.userId, userName : this.userName, userKeyWord : 'testKeyWord'}});
            },
        },
    };
</script>

<style scoped>

body {
    background: url('~@/assets/images/loginBackground.jpg')
}

.login-box {
    min-width: 400px;
    flex: 0 0 50%;
    max-width : 50%;
    background-color: #fff;
}

.login-elem-div input{
    height: 30px;
    min-width: 300px;
    
}

.login-btn {
    margin-top: 10px;
}

.login-wrapper {
    flex-direction: column;
    max-width: 300px;
}

</style>
