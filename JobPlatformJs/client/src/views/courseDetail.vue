<template>
    <div class="d-flex main-frame">
        <siteHeader />
        <sideBar />
        <div class="d-flex course-main-frame">
            <div class="d-flex">
                <div class="d-flex">
                    <h2>The MVC architectural pattern</h2>
                    <div>
                        <iframe width="100%" height="315" src="https://www.youtube.com/embed/_pITrQOCdXw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="d-flex course-list">
                    <ul>
                        <li>
                            <div>1.</div>
                            <div>install</div>
                            <div>2:20</div>
                        </li>
                        <li>
                            <div>2.</div>
                            <div>The Mvc Archetecture pattern</div>
                            <div>3:30</div>
                        </li>
                        <li>
                            <div>3.</div>
                            <div>Database Model</div>
                            <div>25:10</div>
                        </li>
                        <li>
                            <div>4.</div>
                            <div>Database Access</div>
                            <div>23:10</div>
                        </li>
                        <li>
                            <div>5.</div>
                            <div>Eloquent Basics</div>
                            <div>32:30</div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="d-flex">
                <div class="course-desc">course description</div>
                <div class="course-rating">Rating</div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.course-main-frame {
    flex-direction: row;
    margin-left: 200px;
    margin-top: 50px;
}

.course-main-frame  > div:nth-child(1) {
    flex-direction: column;
    flex-basis: 70%;
}

.course-main-frame > div:nth-child(2) {
    flex-direction: column;
    flex-basis: 30%;
}


.course-main-frame > div > div {
    flex-direction: column;
}

.course-list {
    display: flex;
    flex-direction: column;
}

.course-list ul {
    border: 1px solid #f0f1f2;
    list-style: none;
    margin-bottom: 1.5rem;
    padding-left: 0;
    border-radius:0;
    align-items: flex-start;
}

.course-list li {
    display: flex;
    padding: 0.75rem 0.75rem;
    padding-left: 0;
    border: 1px solid #f0f1f2;
    background-color: #fff;
    background-clip: border-box;
}

.course-list ul li > div:nth-child(1) {
    flex-basis: 5%;
    display: flex;
}

.course-list ul li > div:nth-child(2) {
    flex-basis: 80%;
    display: flex;
}

.course-list ul li > div:nth-child(3) {
    flex-basis: 15%;
    display: flex;
}

.course-desc {
    margin-top: 150px;
    display: flex;
    flex-basis: 50%;
}

.course-rating {
    margin-top: 60px;
    display: flex;
    flex-basis: 50%;
}

.main-frame {
    
}
</style>


<script>
import "@/assets/css/common-pc.css"
import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'

export default {
    name: 'courseDetail',
    components: {
        siteHeader,
        sideBar,
    }

}
</script>
