<template>
    <div class="d-flex">
        <siteHeader />
        <sideBar />
        <div class="main-frame">
            <div class="d-flex">HOME/JOBS</div>
            <div class="d-flex second-frame">
                <div>JOBS</div>
                <div><input placeholder="search jobs"/></div>
                <div class="d-flex column">
                    <div class="d-flex">
                         <a><img src="@/assets/images/vuejs.png" height="50" width="50"/></a>
                        <div class="d-flex d-wording">vue js</div>
                    </div>
                    <div class="d-flex">
                        <ul class="list-group d-flex">
                            <li class="list-group-item">1</li>
                            <li class="list-group-item">2</li>
                            <li class="list-group-item">3</li>
                        </ul>
                    </div>
                </div>
                <div class="d-flex column">
                    <div class="d-flex">
                         <a><img src="@/assets/images/gulp.png" height="50" width="50"/></a>
                        <div class="d-flex d-wording">node js</div>
                    </div>
                    <div class="d-flex">
                        <ul class="list-group d-flex">
                            <li class="list-group-item">1</li>
                            <li class="list-group-item">2</li>
                            <li class="list-group-item">3</li>
                        </ul>
                    </div>
                </div>
                <div class="d-flex column">
                    <div class="d-flex">
                        <a><img src="@/assets/images/github.png" height="50" width="50"/></a>
                        <div class="d-flex d-wording">github</div>
                    </div>
                    <div class="d-flex">
                        <ul class="list-group d-flex">
                            <li class="list-group-item">1</li>
                            <li class="list-group-item">2</li>
                            <li class="list-group-item">3</li>
                        </ul>
                    </div>
                </div>
                <div class="d-flex pager">
                    <ul class="pager d-flex">
                        <li>
                            <a>
                                <span class="material-icons">chevron_left</span>
                                <span>PRIEVE</span>
                            </a>
                        </li>
                        <li>
                            <a>
                                1
                            </a>
                        </li>
                        <li>
                            <a>
                                2
                            </a>
                        </li>
                        <li>
                            <a>
                                <span>NEXT</span>
                                <span class="material-icons">chevron_right</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>

.main-frame {
    margin-top: 50px;
    flex-direction: column;
    flex-basis: 100%;
}

.second-frame {
    margin-left: 200px;
    flex-direction: column;
    flex-basis: 100%;
}

.list-group {
    margin-bottom: 0;
    border-top: 0;
    border-radius: 0;
    border: 1px solid #f0f1f2;
    flex-direction: column;
    flex-basis: 80%;
}

.list-group-item {
    padding: 0.75rem 1.25rem;
    background-color: #fff;
    border: 1px solid #f0f1f2;
}

.column {
    flex-direction: column;
}

ul {
    padding-left: 0px;
    margin-top: 10px;
    padding-bottom: 10px;
}

li {
    margin-top: 0px;
}

.d-wording {
    flex-direction: column-reverse;
}

input {
    margin-left: 100px;
}

</style>
<script>
import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'

export default {
    name:"jobsView",
    data () {
        return {

        }    
    },
    components: {
        siteHeader,
        sideBar,
    }
}

</script>