import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import { createMetaManager } from "vue-meta";

const app = createApp(App);
const metaManager = createMetaManager();
app.use(metaManager)
app.use(router);
app.use(store);
app.mount('#app')

