<template>
    <div class="side-bar-all">
        <div class="d-flex">
            <div class="side-bar-header"><router-link to="/userInfo">user Info</router-link></div>
            <div>
                <ul class="side-bar-item">
                    <li><router-link to="/quizs">quizs</router-link></li>
                    <li><router-link to="/jobs">jobs</router-link></li>
                    <li><router-link to="/courses">course</router-link></li>
                </ul>
            </div>
        </div>
        <div class="d-flex">
            <div class="side-bar-header">User Account</div>
            <div>
                <ul class="side-bar-item">
                    <li><router-link to="/mypage">user account</router-link></li>
                    <li><router-link to="/myprofile">user profile</router-link></li>
                    <li><router-link to="/notifications">notifications</router-link></li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
    import "@/assets/css/common-pc.css"
    export default {
        name: 'sideBar'
    }
</script>

<style scoped>
 .side-bar-all {
     position: fixed;
     top: 50px;
     bottom: 0;
     left: 0;
     width: 160px;
     text-align: left;
     background-color: #39444d;
 }
 
 .side-bar-header a {
     padding-left: 20px;
     color: #8a9299;
     text-decoration:none;
 }

 .side-bar-header {
     color: #8a9299;
 }

 .side-bar-item {
     padding-left: 35px;
     color: hsla(0,0%,100%,.54);
 }

 ul li a{
     color: #8a9299;
     text-decoration:none;
 }

 .side-bar-all div {
     flex-direction: column;
 }

</style>