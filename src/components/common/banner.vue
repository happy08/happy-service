<template>
    <div class="banner">
      <div class="swiper-container">
        <div class="swiper-wrapper text-center">

          <div v-for="item in items" :key="item.id" class="swiper-slide" :style="{backgroundImage:'url('+item.background.replace(/\\/g,'/')+')'}">

              <p class="ani title" swiper-animate-effect="fadeInUp" swiper-animate-duration="1.5s" swiper-animate-delay="0.1s">
                {{item.title}}
              </p>
              <p class="ani title2" swiper-animate-effect="fadeInUp" swiper-animate-duration="1.5s" swiper-animate-delay="1s">
                {{item.title2}}
              </p>
              <!-- <p class="ani title3" swiper-animate-effect="fadeInUp" swiper-animate-duration="1.5s" swiper-animate-delay="1.5s">
                <a href="tel:080200938"> <span class="hidden-xs"> 免費撥打</span> <img src="../../assets/images/b-tel.png" alt=""></a>
              </p> -->
          </div>
          
         
        </div>
    </div>
    </div>
</template>

<script>
 export default {
  name: 'banner',
 data () {
    return {
       items:'',
       //isActive:false
    }
  },
  created() {
    this.init();  
  },
  methods:{
     async init() {
        await this.axios
          .get('/banner/')
          .then(res => {
            console.log(res.data);
            this.items=res.data;       
        });
        await new Swiper('.swiper-container', {
            //loopAdditionalSlides: 6,
            loop: true,
            speed:500,
            autoplay: {// 自动滑动
              delay: 4500,//1秒切换一次
              disableOnInteraction: false
            },
            // 如果需要前进后退按钮
            navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
            },
            // pagination: {// 如果需要分页器
            //   el: '.swiper-pagination'
            // },
            // observer: true, // 启动动态检查器(OB/观众/观看者)
            // observeParents: true, // 修改swiper的父元素时，自动初始化swiper

          on:{
            init: function(){
              swiperAnimateCache(this); //隐藏动画元素 
              swiperAnimate(this); //初始化完成开始动画
            }, 
            slideChangeTransitionEnd: function(){ 
              swiperAnimate(this); //每个slide切换结束时也运行当前slide动画
            }
          } 
        });
         
     }

  }
}
</script>

<style scoped>
@import '../../../static/css/swiper.min.css';
@import '../../../static/css/animate.min.css';
.banner{
  background: #ccc;
}
.swiper-container{
  /* opacity: 0; */
  font-size:16px;
  height: calc(100vh - 165px);
  min-height: 200px;
}
.swiper-container.cur{
  opacity: 1;
}
.swiper-slide{
  padding: 10% 20px;
  color: #fff;
  text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center
}
.swiper-slide a{color: #fff;}
.swiper-slide .title{
  font-size: 8em;
}
.swiper-slide .title2{
  font-size: 5em;
}
.swiper-slide .title3{
  font-size: 3em;
}

@media (max-width: 767px){
  .hidden-xs{display: none;}

  .swiper-container{
    font-size:4px;
    height: calc(100vh - 450px);
  }
  .swiper-slide .title2{
    font-size: 4em;
  }


}
 

</style>
