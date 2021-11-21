<template>
    <div class="background">
        <div class="registe-wrapper m-auto d-flex m-top f-wrap">
            <div class="registe-elem m-auto w-full ">
                <div class="registe-box d-flex m-auto">
                    <label>User Id</label>
                    <div w-full>
                        <input type="text" v-model.trim=userId>
                    </div>
                </div>
            </div>
            <div class="registe-elem m-auto w-full">
                <div class="registe-box d-flex m-auto">
                    <label>Pass Word</label>
                    <div w-full>
                        <input type="text" v-model.trim="passWord">
                    </div>
                </div>
            </div>

            <div class="registe-elem m-auto w-full">
                <div class="registe-box d-flex m-auto">
                    <label>User Key Word</label>
                    <div w-full>
                        <input type="text" v-model.trim="userKeyWord">
                    </div>
                </div>
            </div>
            <button class="registe-btn m-auto" @click="login()">Login</button>
        </div>
    </div>
</template>

<script>
import router from '../router';
import "@/assets/css/common-pc.css"
import axios from 'axios';
import qs from 'qs'
axios.defaults.withCredentials = true;

export default {
    data() {
        return {
            userId : '',
            passWord : '',
            userKeyWord : '',
        };
    },
    methods : {
        register: function() {
            const paramsBeforeFormat = {
                'userId' : this.userId,
                'passWord' : this.passWord,
                'userKeyWord' : this.userKeyWord
            }

            const config = {
                header : {
                    'X-Requested-With' : 'XMLHttpRequest',
                    'Content-Type' : 'application/x-www-form-urlencoded',
                    'withCredentials' : true,
                    'Access-Control-Allow-Origin' : true
                },
                url : 'http://localhost:8080/register',
                method : 'post',
                data : qs.stringify(paramsBeforeFormat)
            };

            axios(config).then((res) => {
                if (res.data.isSuccess) {
                    router.push({ name: 'registerComplete'});
                }
            }).catch((res) => {
                app.result = res.data;
                alert(res);
            });
        },
    },
};
</script>

<style scoped>
    .registe-wrapper {
        min-width: 400px;
        flex: 0 0 50%;
        max-width : 50%;
        background-color: #fff;
    }

    .registe-elem input{
        height: 30px;
        min-width: 300px;
    }

    .registe-btn {
        margin-top: 10px;
    }

    .registe-box {
        flex-direction: column;
        max-width: 300px;
    }

</style>
