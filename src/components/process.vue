<template>
  <div class="process">
    <banner-top></banner-top> 
    <div class="main">
    <div class="map">
      <a href="/">首頁</a> / <span>維修流程</span>
    </div>
    <div class="content" v-html="data.mycontent">
    </div>
    </div> 
  </div>
</template>

<script>
import bannerTop from './common/banner'

export default {
  name: 'process',
    metaInfo() {
      return {
        title: this.data.seo_title==null?'維修流程':this.data.seo_title,
        meta: [{
          name: 'keywords',
          content: this.data.seo_keywords
        },{
          name: 'description',
          content: this.data.seo_description
        }]
      }      
  },

  data () {
    return {
      data: {
        seo_title:'',
        seo_keywords:'',
        seo_description:''
      }
    }
  },
  created (){
    this.axios.get('/process/')
    .then(res => {
      console.log(1,res.data);
      this.data=res.data[0];
    })
  },
  components: {
    bannerTop
  }
}
</script>

<style scoped>

</style>
