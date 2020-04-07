<template>
    <div>
        <div class="userId">
            <label class="userIdSpan">userId</label>
            <input type="text" class="userIdInput" v-model.trim=userId>
        </div>

        <div class="passWord">
            <label class="passWordSpan">passWord</label>
            <input type="text" class="passWordInput" v-model.trim="passWord">
        </div>

        <div class="mailAddress">
            <label class="mailAddressSpan">mailAddress</label>
            <input type="text" class="mailAddressInput" v-model.trim="mailAddress">
        </div>
        <div class="register-btn">
            <button @click="register()">Registe</button>
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
            userId : 'test',
            passWord : 'test',
            mailAddress : 'test',
        };
    },
    methods : {
        register: function() {

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

<style>
    .userId {
        margin-top: 20px;
    }

    label{
        margin-left: 40%;
        width:100px;
        display:inline-block;
        color: yellow;
    }

    .passWord {
        margin-top: 20px;
    }

    .mailAddress {
        margin-top: 20px;
    }

    .register-btn {
         margin-top: 20px;
         margin-left: 45%;
    }

    body {
        background: url('~@/assets/registBack.jpeg')
    }
</style>
