import registe from './views/register.vue';
import login from './views/Login.vue';
import { createRouter, createWebHistory } from 'vue-router'



const routes = [
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
      path: '/registerComplete',
      name: 'registerComplete',
      component: () => import(/* webpackChunkName: "about" */ './views/registerComplete.vue'),
    },
    {
      path: '/userInfo',
      name: 'userInfo',
      component: () => import(/* webpackChunkName: "about" */ './views/userInfo.vue'),
    },
    {
      path: '/courses',
      name: 'courses',
      component: () => import(/* webpackChunkName: "about" */ './views/courses.vue'),
    },
    {
      path: '/quizs',
      name: 'quizs',
      component: () => import(/* webpackChunkName: "about" */ './views/quizs.vue'),
    },
    {
      path: '/jobs',
      name: 'jobs',
      component: () => import(/* webpackChunkName: "about" */ './views/jobs.vue'),
    },
    {
      path: '/quizeDetail',
      name: 'quizeDetail',
      component: () => import(/* webpackChunkName: "about" */ './views/quizeDetail.vue'),
    },
    {
      path: '/courseDetail',
      name: 'courseDetail',
      component: () => import(/* webpackChunkName: "about" */ './views/courseDetail.vue'),
    },
    {
      path: '/jobDetail',
      name: 'jobDetail',
      component: () => import(/* webpackChunkName: "about" */ './views/jobDetail.vue'),
    },
    {
      path: '/mypage',
      name: 'mypage',
      component: () => import(/* webpackChunkName: "about" */ './views/mypage.vue'),
    },
    {
      path: '/myprofile',
      name: 'myprofile',
      component: () => import(/* webpackChunkName: "about" */ './views/myprofile.vue'),
    },
    {
      path: '/notifications',
      name: 'notifications',
      component: () => import(/* webpackChunkName: "about" */ './views/notification.vue'),
    }
  ];

  const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;




