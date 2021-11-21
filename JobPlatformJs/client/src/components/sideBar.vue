<template>
    <div class="side-bar-all">
        <div>
            <div class="side-bar-header">user Info</div>
            <div>
                <ul class="side-bar-item">
                    <li>quizs</li>
                    <li>jobs</li>
                    <li>course</li>
                </ul>
            </div>
        </div>
        <div>
            <div class="side-bar-header">User Account</div>
            <div>
                <ul class="side-bar-item">
                    <li>user account</li>
                    <li>messages</li>
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
 
 .side-bar-header {
     padding-left: 20px;
     color : #dfe2e6
 }

 .side-bar-item {
     padding-left: 35px;
     color: hsla(0,0%,100%,.54);
 }

</style>