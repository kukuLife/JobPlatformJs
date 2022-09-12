<template>
    <div class="d-flex">
        <siteHeader />
        <sideBar />
        <div class="main-frame">
            <div class="title d-flex">
                <h1>notification</h1>
            </div>
            <div class="body d-flex">
                <ul>
                    <li>notification 11111111111</li>
                    <li>notification 22222222222</li>
                    <li>notification 33333333333</li>
                    <li>notification 44444444444</li>
                    <li>notification 55555555555</li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
    import sideBar from '@/components/sideBar'
    import siteHeader from '@/components/siteHeader'
    import "@/assets/css/common-pc.css"

    export default {
        head : {
            title: {
                inner: 'タイトル',
                separator: '|',
                complement: '通知'
            },
            link: [
                { rel: 'stylesheet', href: 'https://fonts.googleapis.com/icon?family=Material+Icons' }
            ],
        },
        name: 'notification',
        components: {
            siteHeader,
            sideBar,
        }
    }
</script>

<style scoped>

.main-frame {
    margin: auto;
    margin-top: 50px;
}

ul {
    padding-left: 0px;
}


</style>