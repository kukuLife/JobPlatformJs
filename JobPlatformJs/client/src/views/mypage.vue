<template>
    <div class="d-flex">
        <siteHeader />
        <sideBar />
        <div class="main-frame d-flex">
            <div class="d-flex info-part">
                <h4>Basic Information</h4>
                <div class="d-flex">
                    <label>NAME</label>
                    <div class="d-flex"><input type="text" placeholder="your first name" value="fusang"/></div>
                </div>
                 <div class="d-flex">
                    <label>Email Address</label>
                    <div class="d-flex"><input type="text" placeholder="your email address" value="fusang.wan@rakuten.com"/></div>
                </div>
                <div class="d-flex">
                    <label>Tel</label>
                    <div class="d-flex"><input type="text" placeholder="your tel" value="08076984539"/></div>
                </div>
                <div class="d-flex">
                    <label>keyword</label>
                    <div class="d-flex"><input type="text" placeholder="your keyword" value="key word"/></div>
                </div>
            </div>
            <div class="d-flex info-part">
                <h4>Change Password</h4>
                <div class="d-flex">
                    <label>NEW PASSWORD</label>
                    <div class="d-flex"><input type="text" placeholder="new password" value="new password"/></div>
                </div>
                <div class="d-flex">
                    <label>CONFIRM PASSWORD</label>
                    <div class="d-flex"><input type="text" placeholder="confirm password" value="confirm password"/></div>
                </div>
            </div>
            <div class="d-flex button">
                <button>Save Changes</button>
            </div>
        </div>
    </div>
</template>

<script>
    import sideBar from '@/components/sideBar'
    import siteHeader from '@/components/siteHeader'
    import "@/assets/css/common-pc.css"

    export default {
        name: 'mypage',
        components: {
            siteHeader,
            sideBar,
        }
    }
</script>

<style scoped>

div {
    flex-direction: column;
}

.main-frame div {
    margin: 10px;
}

.info-part {
    padding: 0.75rem 1.25rem;
    background-color: #fff;
    border: 1px solid #f0f1f2;
}

.main-frame {
    margin-left: 200px;
    margin-right: 10px;
    margin-top: 50px;

}

label {
    font-size: .75rem;
    text-transform: uppercase;
    font-weight: 500;
    color: rgba(56,59,61,.5);
}

button {
    background-color: #66bb6a;
    border-color: #66bb6a;
    box-shadow: inset 0 1px 0 hsl(0deg 0% 100% / 15%), 0 1px 1px rgb(0 0 0 / 8%);
    font-size: .9375rem;
    color: #fff;
    text-align: center;
    border: 1px solid transparent;
    padding: 0.5rem 1rem;
    border-radius: 0.25rem;
    min-width: 150px;
    max-width: 150px;
    margin: auto;
}

</style>
