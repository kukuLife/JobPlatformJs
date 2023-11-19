<template>
    <div class="content-center">
        <siteHeader />
        <sideBar />
        <div class="main-frame">
            <div class="d-flex content-center">
                <h2>quizs</h2>
            </div>
            <div 
            @mouseover="hover = true"
            @mouseleave="hover = false"
            class="quiz-filter">
                <a href="#"><i class="material-icons">tune</i></a>
                <div class="filter-dropdown" v-if="hover">
                    <div class="dropdown-item">
                        <form action="#">
                            <div class="form-group mb-0">
                                <label class="form-label" for="custom-select">Category</label><br>
                                <select id="custom-select" class="form-control custom-select" style="width: 100px;">
                                    <option selected="">All categories</option>
                                    <option value="1">Vue.js</option>
                                    <option value="2">Node.js</option>
                                    <option value="3">GitHub</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="d-flex" v-for="(item, index) in puzzleList" :key="index">
                {{ item }}
                <div class="d-flex quiz">
                    <div class="d-flex quiz-img">
                        <a href="/test">
                            <img src="@/assets/images/vuejs.png"/>
                        </a>
                    </div>
                    <div class="d-flex quiz-wording">
                        <h4>
                            {{ item.fields.puzzle_title }}
                        </h4>
                    </div>
                </div>
                <div class="d-flex quiz">
                    <div class="d-flex quiz-img">
                        <a href="/test">
                            <img src="@/assets/images/nodejs.png"/>
                        </a>
                    </div>
                    <div class="d-flex quiz-wording">
                        <h4>
                            {{ item.fields.puzzle_title }}
                        </h4>
                    </div>
                </div>
                <div class="d-flex quiz">
                    <div class="d-flex quiz-img">
                        <a href="/test">
                            <img src="@/assets/images/github.png"/>
                        </a>
                    </div>
                    <div class="d-flex quiz-wording">
                        <h4>
                            {{ item.fields.puzzle_title }}
                        </h4>
                    </div>
                </div>
            </div>


            <div class="d-flex content-center quizs">
                <div class="d-flex quiz">
                    <div class="d-flex quiz-img">
                        <a href="/test">
                            <img src="@/assets/images/vuejs.png"/>
                        </a>
                    </div>
                    <div class="d-flex quiz-wording">
                        <h4>
                            <a href="/test">quiz vue js</a>
                        </h4>
                    </div>
                </div>
                <div class="d-flex quiz">
                    <div class="d-flex quiz-img">
                        <a href="/test">
                            <img src="@/assets/images/nodejs.png"/>
                        </a>
                    </div>
                    <div class="d-flex quiz-wording">
                        <h4>
                            <a href="/test">quiz nodes</a>
                        </h4>
                    </div>
                </div>
                <div class="d-flex quiz">
                    <div class="d-flex quiz-img">
                        <a href="/test">
                            <img src="@/assets/images/github.png"/>
                        </a>
                    </div>
                    <div class="d-flex quiz-wording">
                        <h4>
                            <a href="/test">quiz github </a>
                        </h4>
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
</template>

<script>
  import "@/assets/css/common-pc.css"
  import sideBar from '@/components/sideBar'
  import siteHeader from '@/components/siteHeader'
  import axiosHttp from "@/http/headerHandler.js"

  export default {
    data() {
        return {
            puzzleList:[],
            hover:false
        };
    },
    beforeMount() {
        const config = {
            header : {
                'X-Requested-With' : 'XMLHttpRequest',
                'Content-Type' : 'application/json',
                'Access-Control-Allow-Origin' : true
            },
            url : 'http://192.168.2.110:8000/mainBack/puzzles/',
            method : 'get',
        };

        axiosHttp(config).then((res) => {
                if (res) {
                    this.puzzleList = JSON.parse(res.data);
                }
            }).catch((res) => {
                app.result = res.data;
                console.log(res)
            });
        
    },
  components: { 
      siteHeader,
      sideBar
    },
    name: 'quizs'
  }
</script>

<style scoped>
    .quizes {
        flex-direction: column;
    }

    .quiz {
        flex-direction: row;
        flex: 50% 50%;
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

    div.quiz-img a img {
        width: 4rem;
        height: 4rem;
    }

    .quiz-img {
         justify-content: center;
    }

    div.quiz {
        background-color:#fff;
        flex-basis: 48%;
        margin-top: 20px;
        margin-left: 10px; 
        flex-direction: column;
    }

    div.quizs {
        flex-wrap: wrap;
        justify-content: flex-start;
    }

    .quiz-wording {
        flex-direction: column-reverse;
    }

    .quiz-filter {
        display: flex;
        justify-content: center;
        flex-direction: column;
        width: 50px;
        margin: auto;
    }

    .filter-dropdown {
        max-width: 100px;
        min-width: 100px;
        display: flex;
        margin: auto;
        justify-content: center;
        background: white;
    }

    .main-frame {
        margin-left: 100px;
        margin-top: 50px;
    }

    ul {
        list-style-type: none;
        flex-direction: row;
    }

    li {
        padding-left: 30px;
    }

</style>