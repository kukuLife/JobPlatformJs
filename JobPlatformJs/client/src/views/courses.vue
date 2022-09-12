<template>
    <div class="content-center courses">
        <sideBar />
        <div>
            <siteHeader />
            <div class="main-frame">
                <div class="d-flex content-center">
                    <h2>courses</h2>
                </div>
                <div class="d-flex content-center">
                    <div class="d-flex filter content-center">
                        <a>
                            <i class="material-icons mr-sm-2">tune</i>
                            <span>Filters</span>
                        </a>
                        <div class="filter-box">
                            <div class="d-flex">
                                <div>
                                    <label>label1</label>
                                    <select>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>                                
                                    </select>
                                </div>
                                <div>
                                    <label>label2</label>
                                    <select>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>                                 
                                    </select>
                                </div>
                                <div><a>link a</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex search-course">
                        <div class="d-flex">
                            <form class="d-flex">
                                <div class="d-flex">
                                    <input class="d-flex" type="text" placeholder="search courses"/>
                                    <button>
                                        <i class="material-icons">search</i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="d-flex content-center lable">
                    <h1>cool courses</h1>
                </div>
                <div class="d-flex content-center part">
                    <div class="d-flex child-part">
                        <div class="d-flex little-part">
                            <div class="l1-part">
                                <a href="/test">
                                    <img src="@/assets/images/vuejs.png"/>
                                </a>
                                <div class="l2-part">
                                    <h4>
                                        <a href="/test">Learn vue js</a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex little-part">
                            <div class="l1-part">
                                <a href="/test">
                                    <img src="@/assets/images/nodejs.png"/>
                                </a>
                                <div class="l2-part">
                                    <h4>
                                        <a href="/test">Learn node</a>
                                    </h4>  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex child-part">
                        <div class="d-flex little-part">
                            <div class="l1-part">
                                <a href="/test">
                                    <img src="@/assets/images/github.png"/>
                                </a>
                                <div class="l2-part">
                                    <h4>
                                        <a href="/test">Learn github</a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex little-part">
                            <div class="l1-part">
                                <a href="/test">
                                    <img src="@/assets/images/gulp.png"/>
                                </a>
                                <div class="l2-part">
                                    <h4>
                                        <a href="/test">Learn gulp</a>
                                    </h4>
                                </div>
                            </div>
                        </div>
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

<script>
  import "@/assets/css/common-pc.css"
  import sideBar from '@/components/sideBar'
  import siteHeader from '@/components/siteHeader'

  export default {
    head : {
        title: {
            inner: 'タイトル',
            separator: '|',
            complement: '捕捉'
        },
        link: [
            { rel: 'stylesheet', href: 'https://fonts.googleapis.com/icon?family=Material+Icons' }
        ],
    },
    name: 'quizs',
    components: {
        siteHeader,
        sideBar,
    }
  }
</script>

<style scoped>
    .courses {
        flex-direction: column;
    }

    .search-course {
        margin-left:30px
    }

    .lable {
        margin-top: 20px;
    }

    .part {
        margin-top: 20px;
        flex-direction: column;
    }

    h2 {
        justify-content: center;
    }

    .filter {
        flex-basis: 10%;
    }

    .search-course {
        flex:1;
        flex-basis: 90%;
    }

    div.search-course div, div.search-course div, div.search-course div form,div.search-course div form div,div.search-course div form div input {
        flex: 1;
    }

    .lable {
        margin-left: 3%;
        justify-content: flex-start;
    }

    .child-part {
        margin-top: 30px;
        flex-direction: row;
    }

    .child-part div {
        flex-basis: 50%;
    }

    .little-part {
        justify-content: center;
        padding: 10px;
    }

    .filter-box {
        position: absolute;
        margin-top: 20px;
    }
    
    .filter-box div {
        flex-direction: column;
    }

    div.pager {
        justify-content: center;
    }

    .main-frame {
        margin-left: 200px;
        margin-top: 50px;
    }
</style>