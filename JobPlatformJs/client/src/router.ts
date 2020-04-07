import Vue from 'vue';
import Router from 'vue-router';
import registe from './views/register.vue';
import login from './views/Login.vue';

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
      path: '/home',
      name: 'home',
      component: () => import(/* webpackChunkName: "about" */ './views/home.vue'),
    },
    {
      path: '/userInfo',
      name: 'userInfo',
      component: () => import(/* webpackChunkName: "about" */ './views/userInfo.vue'),
    },
    {
      path: '/taskInfo',
      name: 'taskInfo',
      component: () => import(/* webpackChunkName: "about" */ './views/taskInfo.vue'),
    },
    {
      path: '/projectInfoDetail',
      name: 'projectInfoDetail',
      component: () => import(/* webpackChunkName: "about" */ './views/ProjectInfoDetail.vue'),
    },
    {
      path: '/taskInfoDetail',
      name: 'taskInfoDetail',
      component: () => import(/* webpackChunkName: "about" */ './views/taskInfoDetail.vue'),
    },
  ],
});


