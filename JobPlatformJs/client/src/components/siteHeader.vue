<template>
    <div class="siteHeader  w-full">
        <span class="headerWording m-auto">LearnPlus</span>
    </div>
</template>

<style scoped>
.siteHeader {
    position: fixed;
    top: 0;
    left: 0;
    background-color: #2196f3;
    height:50px;
    display: flex;
}

.headerWording {
    color: #fff;
    font-size: 1.6rem;
    font-weight: 500;
}
</style>

<script>
import "@/assets/css/common-pc.css"
export default {
    name: 'siteHeader'
}
</script>
