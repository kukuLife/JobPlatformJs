<template>
    <div class="d-flex">
        <siteHeader />
        <sideBar />
        <div class="main-frame d-flex">
            <h4 class="card-title">Sign Up</h4>
            <p class="card-subtitle">Create a new account</p>
            <div class="d-flex google-link">
                <a href="student-dashboard.html" class="google-link">
                    Continue with Google
                </a>
                <div class="d-flex">or</div>
            </div>
            <form class="d-flex">
                <div class="d-flex">
                    <label>NAME:</label>
                    <div class="input-group input-group-merge">
                        <span class="material-icons md-light">people</span><input id="email" type="email" required="" class="form-control form-control-prepended" placeholder="Your Name">
                    </div>
                   
                </div>
                <div class="d-flex">
                    <label>EMAIL ADDRESS:</label>
                    <div class="input-group input-group-merge">
                        <span class="material-icons md-light">mail</span><input id="email" type="email" required="" class="form-control form-control-prepended" placeholder="Your email address">
                    </div>
                </div>
                <div class="d-flex">
                    <label>PASSWORD:</label>
                    <div class="input-group input-group-merge">
                        <span class="material-icons md-light">password</span><input id="password" type="password" required="" class="form-control form-control-prepended" placeholder="Choose a password">
                    </div>
                </div>
                <div class="d-flex">
                    <label>CONFIRM PASSWORD:</label>
                    <div class="input-group input-group-merge">
                        <span class="material-icons md-light">password</span><input id="password2" type="password" required="" class="form-control form-control-prepended" placeholder="Confirm password">
                    </div>
                </div>
            </form>
            <button type="submit"><router-link to="/userInfo">Sign Up</router-link></button>
            <div class="d-flex">
                <div class="custom-control custom-checkbox">
                    <input id="terms" type="checkbox" checked="" required="">
                    <label for="terms">I agree to the <a href="#" style="text-decoration: underline;">Terms of Use</a></label>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import router from '../router';
import "@/assets/css/common-pc.css"
import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'
import axios from 'axios';
import qs from 'qs'
axios.defaults.withCredentials = true;

export default {
    head: {
        link: [
            { rel: 'stylesheet', href: 'https://fonts.googleapis.com/icon?family=Material+Icons' }
        ],
    },
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
    components: {
        siteHeader,
        sideBar,
    }
};
</script>

<style scoped>
   .main-frame {
       flex-direction: column;
       flex-basis: 100%;
       margin-top:100px;
       margin-left: 180px;
       background-color: #fff;
   }

   p {
        color: #b8bdc2;
        text-transform: uppercase;
        font-size: .707rem;
        font-weight: 500;
        padding: 0.75rem 1.25rem;
        margin-bottom: 0;
        background-color: #fff;
        border-bottom: 1px solid #f0f1f2;
    }

    .google-link a {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        color: #212529;
        border-color: #f8f9fa;
        box-shadow: inset 0 1px 0 hsl(0deg 0% 100% / 15%), 0 1px 1px rgb(0 0 0 / 8%);
        font-size: .9375rem;
    }

    .google-link div {
        margin: auto;
    }

    .google-link {
        flex-direction: column;
        background-color: #f0f1f2;
    }

    form {
        flex-direction: column;
    }

    form div {
        flex-direction: column;
    }

    button {
        margin-top: 10px;
    }

    label {
        font-size: .75rem;
        text-transform: uppercase;
        font-weight: 500;
        color: rgba(56,59,61,.5);
    }

    span {
        margin-right: 10px;
    }
</style>
