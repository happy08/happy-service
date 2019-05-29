<template>
  <div class="project">
    <banner-top></banner-top> 
    <div class="main">
    <div class="map">
      <a href="/">首頁</a> / <a href="#/project">服務項目</a> / <span>{{data.title}}</span>
    </div>
    <div class="content" v-html="data.mycontent">
    </div>
    </div> 
  </div>
</template>

<script>
import bannerTop from './common/banner'

export default {
  name: 'project',
    metaInfo() {
      return {
        title: this.data.seo_title==null?'服務項目':this.data.seo_title,
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
      //id:this.$route.params.id,
    }
  },
  watch:{
    $route (to, from) {
     var id=this.$route.query.id?this.$route.query.id:'';
     console.log(id);
     this.getData(id);//重新获取数据
    }
  },  
  created (){
     var id=this.$route.query.id?this.$route.query.id:'';
     console.log(id);
     this.getData(id);//获取数据
  },
  methods:{
      getData(id){
        this.axios.get('/project/'+id)
        .then(res => {
          //console.log(2,res.data);
          this.data=res.data;
        })
      }
  },
  components: {
    bannerTop
  }
}
</script>

<style scoped>

</style>
