// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import '@/assets/css/css.css'
import axios from 'axios'
//import qs from 'qs'
import querystring from 'querystring'
import MetaInfo from 'vue-meta-info'
Vue.use(MetaInfo);

axios.defaults.baseURL = 'https://www.happy-service.tw/';
Vue.prototype.axios = axios;
Vue.prototype.qs = querystring;





Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
