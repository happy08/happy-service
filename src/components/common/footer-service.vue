<template>
    <footer>
      <a class="toTop" id="toTop" href="javascript:;" @click="toTop"><img src="../../assets/images/top.png" alt=""> </a>
      <div class="footer">
      <div class="main">
        <div class="row">
          <div class="col col-xs-12">
            <div class="foot-contact">
            服務時間：24H  線上報修    <br/>
            報修LINE ID：{{seo.lineID}}<br/>
            免費服務專線：{{seo.tel}}<br/>
            電子郵件：{{seo.email}}<br/>
            </div>
          </div>
          <div class="col col-8 col-xs-12">
            <div class="foot-text text-right">
              誠信＊專業＊熱忱＊服務＊創新＊環保節能<br/>
              <img src="../../assets/images/tel2.png" alt="tel" width="25"> 30年維修經驗，免費來電提供您簡易故障排除
            </div>
          </div>
        </div>
        <a class="foot-line" :href="seo.line"><img src="../../assets/images/line2.png" alt="line"> </a>
      </div>  
      </div>  
      <div class="copyright text-center">
        {{seo.copyright}}
      </div>
      <div class="main">
        <div class="foot-nav">
            <a :href="'tel:'+seo.tel"><img src="../../assets/images/tel.png">免費撥打</a>
            <!-- <a :href="'/repair/線上報修'"><img src="../../assets/images/email.png">線上報修</a> -->
            <router-link to="/repair/線上報修"><img src="../../assets/images/email.png">線上報修</router-link>
            <a :href="seo.line" target="_blank"><img src="../../assets/images/line.png">LINE報修</a>
        </div>
      </div>
    </footer>
</template>

<script>
export default {
  name: 'footer-bottom',
 data () {
    return {
      seo:{}
    }
  },
  created () {
    this.axios
      .get('/seo/')
      .then(res => {
        console.log(res.data);
        this.seo=res.data;       
      })
    this.$nextTick(function(){  
      window.onscroll= function(){
          var t = document.documentElement.scrollTop||document.body.scrollTop;
          var scrollup = document.getElementById('toTop');
          if(t>=300){
              scrollup.style.display="block";
          }else{
              scrollup.style.display="none";
          }
      }  
    })
  },
  methods:{
    toTop(){
       var pp=document.documentElement;
        var stop=document.body;
       var timer = setInterval(function(){
            //获取滚动条的滚动高度
            var osTop = pp.scrollTop || stop.scrollTop;
            //用于设置速度差，产生缓动的效果
            var speed = Math.floor(-osTop / 6);
             pp.scrollTop=stop.scrollTop = osTop + speed;
            //isTop =true;  //用于阻止滚动事件清除定时器
            if(osTop == 0){
                clearInterval(timer);
            }
        },30);
    }
  }

}
</script>

<style scoped>
@media (min-width:768px) {
  .footer,.copyright{
    display: none; 
  }
}
</style>
