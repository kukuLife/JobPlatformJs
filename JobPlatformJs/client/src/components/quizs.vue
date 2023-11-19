<template>
    <div>
       <div>
       </div>
        <div class="quiz-body d-flex">
            <div id="chart" class="category-chart d-flex">
                <div><h4>puzzleGraph</h4></div>
                <VueApexCharts type="donut" width="380" ref="chart" :options="chartOptionsCategory" :series="seriesCategory"></VueApexCharts>
            </div>
            <div class="d-flex">
              <div>
                <h4><a href="/quizs">puzzleList</a></h4>
                <table>
                <thead>
                    <tr>
                        <th>puzzleTitle</th>
                        <th>puzzleDetail</th>
                        <th>puzzleKeyword</th>
                        <th>puzzleCreateTime</th>
                    </tr>
                </thead>
                <tbody>
                        <tr :key="tr" v-for="tr in puzzleList">
                  
                            <td>{{ tr.fields.puzzle_title}}</td>
                            <td>{{ tr.fields.puzzle_detail }}</td>
                            <td>{{ tr.fields.puzzle_key_word }}</td>
                            <td>{{ tr.fields.create_date_time }}</td>
                        </tr>
                </tbody>
            </table>
              </div>
            </div>
        </div>
    </div>
</template>

<script>
import "@/assets/css/common-pc.css"
import { reactive, computed } from 'vue'
import "vue-select/dist/vue-select.css";
import { toRefs } from 'vue'
import vSelect from "vue-select"
import VueApexCharts from 'vue3-apexcharts'



export default {
    name: 'puzzles',
    props: {
        puzzleList: {
            type: Array,
            default: [44, 55, 41, 17, 15]
        }
    },
    data: function() {
        return {
            seriesCategory: this.puzzleList.map(e => e.pk),
            chartOptionsCategory: {
                chart: {
                width: 380,
                type: 'donut',
                dropShadow: {
                    enabled: true,
                    color: '#111',
                    top: -1,
                    left: 3,
                    blur: 3,
                    opacity: 0.2
                }
                },
                stroke: {
                width: 0,
                },
                plotOptions: {
                pie: {
                    donut: {
                    labels: {
                        show: true,
                        total: {
                        showAlways: true,
                        show: true
                        }
                    }
                    }
                }
                },
                 labels: this.puzzleList.map(e => e.pk),
                dataLabels: {
                dropShadow: {
                    blur: 3,
                    opacity: 0.8
                }
                },
                fill: {
                type: 'pattern',
                opacity: 1,
                pattern: {
                    enabled: true,
                    style: ['verticalLines', 'squares', 'horizontalLines', 'circles','slantedLines'],
                },
                },
                states: {
                hover: {
                    filter: 'none'
                }
                },
                theme: {
                palette: 'palette2'
                },
                title: {
                text: ""
                },
                responsive: [{
                breakpoint: 480,
                options: {
                    chart: {
                    width: 200
                    },
                    legend: {
                    position: 'bottom'
                    }
                }
                }]
          },
          seriesTimeLine: [{
            name: 'Inflation',
            data: [2.3, 3.1, 4.0, 10.1, 4.0, 3.6, 3.2, 2.3, 1.4, 0.8, 0.5, 0.2]
          }],
          chartOptionsTimeLine: {
            chart: {
              height: 350,
              type: 'bar',
            },
            plotOptions: {
              bar: {
                borderRadius: 10,
                dataLabels: {
                  position: 'top', // top, center, bottom
                },
              }
            },
            dataLabels: {
              enabled: true,
              formatter: function (val) {
                return val + "%";
              },
              offsetY: -20,
              style: {
                fontSize: '12px',
                colors: ["#304758"]
              }
            },
            
           
          },
        }
    },
    mounted() {
     
    },
    computed: {
      puzzleKeyWords: function puzzleKeyWords() {
        return this.puzzleList
      }
    },

    components : {
        vSelect,
        VueApexCharts
    } 
}


</script>

<style scoped>
.quiz-header {
    padding: 20px;
}

.quizCount {
    text-align: left;
    margin-top: 10px;
    margin-right: 20px;
}

.languageWording {
    margin-right: 20px;
}

.languageSelector {
    margin-top: 30px;
    margin-left: auto;
    width: 300px;
}

.category-chart {
  text-align: left;
}

.line-chart {
  text-align: left;
}
</style>
