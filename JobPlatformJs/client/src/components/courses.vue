<template>
    <div class="d-flex courses">
        <div class="d-flex course-header">
            <div>
                <h4>Courses</h4>
            </div>
            <div>
                <span>all courses</span>
            </div>
        </div>
        <div class="d-flex">
            <table>
                <thead>
                    <tr>
                        <th><a @click="sortBy('courseName')" class="sort" href="javascript:void(0)">courseName</a></th>
                        <th><a @click="sortBy('courseCategory')" class="sort" href="javascript:void(0)">courseCategory</a></th>
                        <th><a @click="sortBy('date')" class="sort" href="javascript:void(0)">Date</a></th>
                        <th><a @click="sortBy('Popularity')" class="sort" href="javascript:void(0)">Popularity</a></th>
                    </tr>
                </thead>
                <tbody>
                    <tr :key="tr.index" v-for="tr in sort_courses">
                        <td><a href="javascript:void(0)">{{ tr.courseName }}</a></td>
                        <td><a href="javascript:void(0)">{{ tr.courseCategory }}</a></td>
                        <td><a href="javascript:void(0)">{{ tr.dateTime }}</a></td>
                        <td><a href="javascript:void(0)">{{ tr.Popularity }}</a></td>
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
    data: function() {
        return {
            courseList : [{courseName: 'course1', courseCategory:"category1", Popularity: 1, dateTime:'19900890', imageUrl:""}, {courseName: 'course2', courseCategory:"category2", Popularity: 2, dateTime:'19900890', imageUrl:""}, {courseName: 'course3', courseCategory:"category3", Popularity: 3, dateTime:'19900890', imageUrl:""}],
            sort_key: "",
            sort_asc: true,
        }
    },
    computed: {
        sort_courses() {
            console.log("sort be triggered")
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