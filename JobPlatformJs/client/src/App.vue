<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({

  setup () {
  },
  name: 'App',
  mounted() {
    // 创建一个<link>标签
    const linkTag = document.createElement('link');
    linkTag.rel = 'stylesheet';
    linkTag.href = 'https://fonts.googleapis.com/icon?family=Material+Icons';

    // 将<link>标签添加到<head>中
    document.head.appendChild(linkTag);
  }
});
</script>
