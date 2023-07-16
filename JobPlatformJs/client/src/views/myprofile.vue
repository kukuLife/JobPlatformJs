<template>
    <div class="d-flex">
        <siteHeader />
        <sideBar />
        <div class="main-frame d-flex">
            <div class="d-flex">
                <h1>profile</h1>
            </div>
            <div class="d-flex profile-box">
                <div class="d-flex">
                    <div class="d-flex"><label>your photo</label></div>
                    <div class="d-flex">your avatar photo</div>
                </div>
                <div class="d-flex">
                    <div class="d-flex"><label>profile name</label></div>
                    <div class="d-flex">alenxder</div>
                </div>
                <div class="d-flex">
                    <div class="d-flex"><label>About you</label></div>
                    <div class="d-flex">About you</div>
                </div>
                <div class="d-flex">
                    <div class="d-flex"><label>privacy</label></div>
                    <div class="d-flex">
                        <input type="checkbox"/>
                        <h4> everyone to see your profile </h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'
import "@/assets/css/common-pc.css"

export default {
    name: 'myprofile',
    components: {
        siteHeader,
        sideBar,
    }
}
</script>

<style scoped>
.main-frame {
    margin-left: 200px;
    margin-top: 50px;
    flex-direction: column;
    background-color: #fff;
    border: 1px solid #f0f1f2;
    flex-basis: 100%;
} 

h1 {
    margin: auto;
}


.main-frame div {
    flex-basis: 100%;
    margin-top: 10px;
}

.profile-box {
    flex-direction: column;
}

.profile-box div {
    flex-direction: row;
    margin-left: 0px;
    flex-basis: 100%;
}

/* .profile-box div:nth-child(1) {
    flex-basis: 30%;
} */

label {
    font-size: .75rem;
    text-transform: uppercase;
    font-weight: 500;
    color: rgba(56,59,61,.5);
}
</style>
