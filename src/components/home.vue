<template>
  <div class="home">
      <banner-top></banner-top>  
    <div class="title text-center">
      服務項目
    </div>
    <div class="main">
      <div class="row">

        <div v-for="item in items" :key="item.id" class="service-item col col-xs-6">
          <div class="row">
            <div class="col col-md-7 col-xs-12">
              <router-link :to="{path:'/project',query:{id:item.id,title:item.title}}" class="img" >
                <img :src="item.image1" alt="">
              </router-link>
            </div>
            <div class="col col-md-5 col-xs-12">
              <h2>{{item.title}}</h2>
              <p class="mome text-blue">
                {{item.mome}}
              </p>
              <p class="mome text-greed">
                {{item.pro_text1}}
              </p>
              <a class="tel" href="tel:0800200938"><img src="../assets/images/tel2.png" alt="tel">0800-200-938</a>
            </div>
          </div>
        </div>
         

      </div>

      <div style="padding:20px 0;" v-html="content">

      </div>

    </div>


  </div>
</template>

<script>
import bannerTop from './common/banner'

export default {
  name: 'home',
  data () {
    return {
      items: '',
      content:''
    }
  },
    created () {
      this.init();        
    },
  methods:{
    async init() {
      await this.axios.get('/products/')
            .then(res => {
              console.log(res.data);
              this.items=res.data.data;
            })
      await this.axios.get('/about_4/')
            .then(res => {
              console.log(res.data);
              this.content=res.data[0].mycontent;
            })
    }
  },
  components: {
    bannerTop
  },

}
</script>

<style scoped>
.title{
  color: #0066cc;
  font-size: 40px;
  max-width: 400px;
  margin: 60px auto;
  padding-bottom: 10px;
  border-bottom: solid 2px #0066cc
}
@media (max-width: 767px) {
  .title{
    font-size: 24px;
    max-width: 200px;
    margin: 40px auto;
    border-bottom: solid 1px #0066cc
  }
}
</style>
