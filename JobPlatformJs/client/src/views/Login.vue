<template>
    <div class="background">
        <siteHeader />
        <sideBar />
        <div class="d-flex login-box">
            <div class="d-flex">
                <h4>Login</h4>
                <p>ACCESS YOUR ACCOUNT</p>
            </div>
            <div class="d-flex link">
                <div class="d-flex">
                    <a href="student-dashboard.html" class="btn btn-light btn-block"><span class="material-icons md-light">face</span>
                        Continue with Google
                    </a>
                </div>
                <div class="d-flex">or</div>
            </div>
            <div class="d-flex">
                <div>
                    <label for="email">Your email address:</label>
                </div>
                <div class="d-flex">
                    <div>
                        <span class="material-icons md-light">mail</span><input id="email" type="email" required="" placeholder="Your email address">
                    </div>
                </div>
            </div>
            <div class="d-flex">
                <div>
                    <label for="password">Your password:</label>
                </div>
                <div class="d-flex">
                    <div>
                        <span class="material-icons md-light">password</span><input id="password" type="password" required="" placeholder="Your password">
                    </div>
                </div>
            </div>
            <div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </div>
            <div class="d-flex">
                <a href="guest-forgot-password.html" style="text-decoration: underline;">Forgot Password?</a>
            </div>
            <div class="d-flex">
                Not yet a student? 
                <router-link to="/registe">Sign Up</router-link>
            </div>
        </div>
    </div>
</template>

<script>
    import "@/assets/css/common-pc.css"
    import axios from 'axios';
    import sideBar from '@/components/sideBar'
    import siteHeader from '@/components/siteHeader'
    axios.defaults.withCredentials = true;

    export default {
        head : {
            link: [
                { rel: 'stylesheet', href: 'https://fonts.googleapis.com/icon?family=Material+Icons' }
            ],
            title : 'login'
        },
        name : 'login',
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
        components: {
            siteHeader,
            sideBar,
        }
    };
</script>

<style scoped>

body {
    background: url('~@/assets/images/loginBackground.jpg')
}

.login-box {
    margin-top: 100px;
    margin-left: 150px;
    flex-direction: column;
}

div {
    flex-direction: column;
    margin-top: 5px;
}

.login-box {
    background-color: #fff;
}

p {
    color: #b8bdc2;
    text-transform: uppercase;
    font-size: .707rem;
    font-weight: 500;
}

div.login-box > div:nth-child(1) {
    border-bottom: 1px solid #f0f1f2;
}

span {
    margin-right: 10px;
}

label {
    font-size: .75rem;
    text-transform: uppercase;
    font-weight: 500;
    color: rgba(56,59,61,.5);
}
</style>
