import Vue from 'vue';
import Router from 'vue-router';
import registe from './views/register.vue';
import login from './views/login.vue';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/registe',
      name: 'registe',
      component: registe,
    },
    {
      path: '/login',
      name: 'login',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: login,
    },
    {
      path: '/userInfo',
      name: 'userInfo',
      component: () => import(/* webpackChunkName: "about" */ './views/userInfo.vue'),
    },
    {
      path: '/quizs',
      name: 'quizs',
      component: () => import(/* webpackChunkName: "about" */ './views/quizs.vue'),
    },
    {
      path: '/jobInfoDetail',
      name: 'jobInfoDetail',
      component: () => import(/* webpackChunkName: "about" */ './views/jobInfoDetail.vue'),
    },
    {
      path: '/quizeDetail',
      name: 'quizeDetail',
      component: () => import(/* webpackChunkName: "about" */ './views/quizeDetail.vue'),
    }
  ],
});


