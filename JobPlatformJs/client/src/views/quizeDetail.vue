<template>
    <div class="d-flex main-frame">
        <siteHeader />
        <sideBar />
        <div class="quiz-main-frame">
            <div class="d-flex quiz-header">
                <h1>Quize Detail</h1>
            </div>
            <div class="d-flex quiz-frame">
                <div class="d-flex quiz-part">
                    <div class="d-flex quize-info">
                        <div class="d-flex">
                            <div class="d-flex">
                                <h4 class="d-flex">Basic Information</h4>
                                <label>title</label>
                                <div class="d-flex quiz-td input-back">Title</div>
                                <label>Description</label>
                                <div class="d-flex quiz-td input-back">Description</div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex answer-frame">
                        <input/>
                    </div>
                    <div class="quize-submit-btn">
                        <a>submit</a>
                    </div>
                </div>
                <div class="d-flex category-part">
                    <h4 class="d-flex">Meta</h4>
                    <label>EXTRA OPTIONS</label>
                    <label>CATEGORY</label>
                    <div class="d-flex input-back">
                        <select>
                            <option value="">--Please choose an option--</option>
                            <option value="dog">Dog</option>
                            <option value="cat">Cat</option>
                            <option value="hamster">Hamster</option>
                            <option value="parrot">Parrot</option>
                            <option value="spider">Spider</option>
                            <option value="goldfish">Goldfish</option>
                        </select>
                    </div>
                    <label>Duration</label>
                    <div class="d-flex input-back">duration</div>
                    <label>start date</label>
                    <div class="d-flex">
                        <flat-pickr v-model="date"></flat-pickr>
                    </div>
                    <label>end date</label>
                    <div class="d-flex">
                        <flat-pickr v-model="date"></flat-pickr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>

import sideBar from '@/components/sideBar'
import siteHeader from '@/components/siteHeader'
import flatPickr from 'vue-flatpickr-component'
import 'flatpickr/dist/flatpickr.css'
import { Japanese } from 'flatpickr/dist/l10n/ja'

export default {
    data () {
        return {
            date: null,
            config: {
                locale: Japanese,
                static: true,
                altInput: true,
                altFormat: 'n/j(D)',
                minDate: 'today',
                maxDate: moment().add(2, 'months').endOf('month').format('YYYY-MM-DD')
            }
        }
    },
    components: {
        siteHeader,
        sideBar,
        flatPickr
    }
}
</script>

<style scoped>
    .quiz-main-frame {
        margin-left: 200px;
        margin-top: 50px;
    }

    .main-frame {
        flex-direction: column;
    }

    .quiz-part {
        flex-basis: 50%;
        flex-direction: column;
        background-color: #fff
    }

    .quize-info div {
        flex-direction: column;
    }

    .quiz-frame {
        flex-direction: row;
    }

    .category-part {
        margin-left: 20px;
        flex-basis: 50%;
        flex-direction: column;
        background-color: #fff;
    }

    label {
        color: rgba(56,59,61,.5);
        margin-top: 20px;
    }

    .quiz-td {
        padding: 0.5rem 0.75rem;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #f0f1f2;
        border-radius: 0.25rem;
        box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    }

    .answer-frame {
        margin-top: 30px;
    }

    .answer-frame input {
        height: 100px;
        width:500px;
    }

    .quize-submit-btn {
        background-color: #66bb6a;
        border-color: #66bb6a;
        box-shadow: inset 0 1px 0 hsl(0deg 0% 100% / 15%), 0 1px 1px rgb(0 0 0 / 8%);
        width: 200px;
        margin: 50px auto;
    }

    .input-back {
        border: 1px solid #f0f1f2;
        border-radius: 0.25rem;
        box-shadow: inset 0 1px 2px rgb(0 0 0 / 8%);
        padding: 0.5rem 1.75rem 0.5rem 0.75rem;
    }
</style>