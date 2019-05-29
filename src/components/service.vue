<template>
  <div class="home">
      <banner-top></banner-top>  
    <div class="main">

    <div class="title text-center">
      服務項目
    </div>

      <div class="row">

        <div v-for="item in products" :key="item.id" class="service-item col col-xs-6">
          <div class="row">
            <div class="col">
              <router-link :to="{path:'/project',query:{id:item.id,title:item.title}}" class="img" >
                <img :src="item.image1" >
                 <h2>{{item.title}}</h2>
              </router-link>
              
            </div>
          </div>
        </div>
         
      </div>  

    <div class="title text-center">
      各區服務站
    </div>

      <div class="row">

        <div v-for="item in items" :key="item.id" class="service-tel col col-xs-6">
              <a :href="'tel:'+item.tel">
                <img src="../assets/images/tel3.png" alt="tel">
                <h2>
                  {{item.title}}<br/>
                  {{item.tel}}
                </h2>
              </a>
        </div>
         
      </div>


    </div>

<br/><br/><br/><br/><br/><br/><br/>

  </div>
</template>

<script>
import bannerTop from './common/banner'

export default {
  name: 'home',
    metaInfo: {
      title: '全省服務-快樂先生-台灣冷凍空調家電專業維修中心',
      // meta: [{                 // set meta
      //   name: 'keywords',
      //   content: 'My Example App'
      // }]
  },
  data () {
    return {
      products: '',
      items: '',
     
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
              this.products=res.data.data;
            })
      await this.axios.get('/stores/')
            .then(res => {
              console.log(res.data);
              this.items=res.data;
            })
            
    }
 

  },
  components: {
    bannerTop
  },

}
</script>

<style scoped>
.main{max-width: 860px;}
.service-item a.img {
  margin:0 1rem
}
.service-tel{
  padding:0 20px 30px 20px;
}
.service-tel a{
  display: flex;
  padding: 20px;
  text-align: center;
  border:solid 1px #cccccc;
  align-items: center;
  justify-content: center;
}
.service-tel a h2,.service-tel a img{
  margin: 0;
  padding: 0 5px;
  transition: .2s ease-in;
}
.service-tel a:hover h2{
  -webkit-transform: translateX(10px);
  transform: translateX(10px);
}
.service-tel a:hover img{
  -webkit-transform: translateX(-10px);
  transform: translateX(-10px);
}


.service-item a.img h2{
  position: absolute;
  bottom: 0px;
  width: 100%;
  left: 0;
  padding: 0 1rem;
  font-size: 40px;
  color: #fff;
  text-shadow:0px 0px 15px #000;
   
  text-align: center;
}
.title{
  font-weight: 800;
  font-size: 40px;
  max-width: 270px;
  margin: 60px auto;
  padding-bottom: 10px;
  border-bottom: solid 1px #ff0033
}
.item{
    margin-bottom: 15px;
    clear: both;
    font-size: 30px;
    color: #666;
}
.item label {
    float: left;
    display: block;
    padding: 9px 15px;
    width: 160px;
    font-weight: 400;
    line-height: 35px;
    font-size: 30px;
    color: #666;
    text-align: right;
}
.item .input {
    position: relative;
    margin-left: 160px;
    min-height: 36px;
}
input,select{
  padding: 10px;
  font-size: 20px;
  border:solid 1px #999;
  width: 100%;
}
.clip{
    position: absolute;
    top: 0;
    right: 0;
    z-index: 10;
    display: block;
    padding: 5px 2px;
    color: #818a91;
    white-space: nowrap;
    cursor: pointer;
    background-color: transparent;
}
.sex{
  background: #ccc;
  padding: 0 10px;
  color: #000
}
.sex.cur{
  background: #666;
  color: #fff
}
.submit{
  padding: 10px 70px;
  background: #3399cc;
  border-radius: 2px;
  color: #fff;
  font-size: 30px;
  border:0;
  cursor: pointer;
}
.submit:hover{
  background: #2b8aaf
}
@media (max-width: 767px) {
  .title{
    font-size: 24px;
    max-width: 200px;
    margin: 40px auto;
    border-bottom: solid 1px #0066cc
  }
  .service-tel{
    padding: 0 10px 10px 10px;
  }
  .service-tel a{
    padding: 10px;
  }
  .service-tel a img{
    width: 35px;
  }
  .service-tel a h2{
    font-size: 1rem;
  }
  .service-item a.img {
    margin: 0;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.6);
  }
  .service-item a.img h2{
    font-size: 20px;
  }
  .item label {
    display: none;
  }
  .item .input {
      margin-left: 0px;
  }
}
</style>
