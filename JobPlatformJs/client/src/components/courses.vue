<template>
    <div class="d-flex courses">
        <div class="d-flex course-header">
            <div>
                <h4><a href="/courses">Courses</a></h4>
            </div>
            <div>
                <span>all courses</span>
            </div>
        </div>
        <div class="d-flex">
            <table>
                <thead>
                    <tr>
                        <th><a @click="sortBy('courseTitle')" class="sort" href="javascript:void(0)">courseTitle</a></th>
                        <th><a @click="sortBy('courseDetail')" class="sort" href="javascript:void(0)">courseDetail</a></th>
                        <th><a @click="sortBy('courseKeyword')" class="sort" href="javascript:void(0)">courseKeyword</a></th>
                        <th><a @click="sortBy('createDatetime')" class="sort" href="javascript:void(0)">createDatetime</a></th>
                    </tr>
                </thead>
                <tbody>
                        <tr :key="tr" v-for="tr in courseList">
                            <td><a href="javascript:void(0)">{{ tr.fields.course_title}}</a></td>
                            <td><a href="javascript:void(0)">{{ tr.fields.course_detail }}</a></td>
                            <td><a href="javascript:void(0)">{{ tr.fields.course_keyword }}</a></td>
                            <td><a href="javascript:void(0)">{{ tr.fields.create_date_time }}</a></td>
                        </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<style>
.course-header {
  flex-direction: column;  
  align-items: flex-start;
}

.courses {
    flex-direction: column;
}

span {
    color: #b8bdc2;
    text-transform: uppercase;
    font-size: .707rem;
    font-weight: 500;
}
</style>

<script>
import "@/assets/css/common-pc.css"
export default {
    name: 'courses',
    props: {
        courseList: {
            type: Array,
            default: []
        }
    },
    mounted() {
        
    },
    data: function() {
        return {
            sort_key: "",
            sort_asc: true,
        }
    },
    computed: {
        sort_courses: function() {
            if (this.courseList && this.courseList[0] && this.courseList[0].fields) {
                if (this.sort_key != "") {
            let set = 1;
            this.sort_asc ? (set = 1) : (set = -1);
            this.courseList.sort((a, b) => {
                if (a[this.sort_key] < b[this.sort_key]) return -1 * set;
                if (a[this.sort_key] > b[this.sort_key]) return 1 * set;
                return 0;
            });
            return this.courseList;
            } else {
            return this.courseList;
            }
            }
              
        }
    },
    methods: {
        sortBy(key) {
            this.sort_key === key
            ? (this.sort_asc = !this.sort_asc)
            : (this.sort_asc = true);
            this.sort_key = key;
            console.log(this.sort_key)
        },
    }
}
</script>

<style scoped>
table th {
    width: 30px !important;
}
</style>