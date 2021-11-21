<template>
    <div>
        <div class="quiz-header d-flex">
            <div class="h2 quizCount">100</div>
            <div class="languageWording">
                <h3>Javascript</h3>
                <p>quizCount</p>
            </div>
            <div class="languageSelector">
                <vSelect :options="options">select</vSelect>
            </div>
        </div>
       
        <div class="quiz-body d-flex">
            <div id="chart" class="category-chart flex-full">
                <div><h4>categoryGraph</h4></div>
                <VueApexCharts type="donut" width="380" :options="chartOptionsCategory" :series="seriesCategory"></VueApexCharts>
            </div>
            <div class="line-chart flex-full">
                <div><h4>lineGraph</h4></div>
                <VueApexCharts type="bar" width="350" :options="chartOptionsTimeLine" :series="seriesTimeLine"></VueApexCharts>
            </div>
        </div>
    </div>
</template>

<script>
import "@/assets/css/common-pc.css"
import "vue-select/dist/vue-select.css";
import vSelect from "vue-select"
import VueApexCharts from 'vue-apexcharts'
export default {
    name: 'quizs',
    data: function() {
        return { 
            options : ["option1", "option2", "option3"],
            seriesCategory: [44, 55, 41, 17, 15],
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
                labels: ["Comedy", "Action", "SciFi", "Drama", "Horror"],
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
            
            xaxis: {
              categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
              position: 'top',
              axisBorder: {
                show: false
              },
              axisTicks: {
                show: false
              },
              crosshairs: {
                fill: {
                  type: 'gradient',
                  gradient: {
                    colorFrom: '#D8E3F0',
                    colorTo: '#BED1E6',
                    stops: [0, 100],
                    opacityFrom: 0.4,
                    opacityTo: 0.5,
                  }
                }
              },
              tooltip: {
                enabled: true,
              }
            },
            yaxis: {
              axisBorder: {
                show: false
              },
              axisTicks: {
                show: false,
              },
              labels: {
                show: false,
                formatter: function (val) {
                  return val + "%";
                }
              }
            
            },
            title: {
              text: 'Monthly Inflation in Argentina, 2002',
              floating: true,
              offsetY: 330,
              align: 'center',
              style: {
                color: '#444'
              }
            }
          },
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
