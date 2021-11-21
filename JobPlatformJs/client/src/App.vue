<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>

import router from './router';

export default {
  mounted() {
    //this.$router.push({ name: 'login'});
  }
}
</script>
