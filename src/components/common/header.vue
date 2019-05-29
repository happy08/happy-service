<template>
    <header class="main">
        <div class="menu-bar" @click="toggleMenu">
          <span></span> 
          <span></span> 
          <span></span> 
        </div>
      <div class="logo">
 
        <router-link to="/"><img src="../../assets/images/logo.png"> </router-link>
        <span class="logo-text">台灣冷凍空調家電專業維修中心</span> 
        <!-- <span class="logo-text visible-xs">冷凍空調家電維修</span>  -->
      </div>
      <nav :class="{'cur':menuShow===true}" @click="toggleMenu">
        <ul>
          <li>
            <router-link to="/">首頁</router-link>
          </li>
          <li>
            <router-link to="/about/關於我們">關於我們</router-link>
          </li>
          <li>
            <router-link :class="{cur:isActive}" to="/project">服務項目▼</router-link>
            <!-- <a @click.native="toggleMenu()">服務項目▼</router-link> -->
            <div class="menu-down">
              <router-link :to="{path:'/project',query:{id:item.id,title:item.title}}"  v-for="item in products" :key="item.id">{{item.title}}</router-link>
            </div>
          </li>
          <li>
            <router-link to="/process/維修流程">維修流程</router-link>
          </li>
          <li>
            <router-link to="/soul/心靈雞湯">心靈雞湯</router-link>
          </li>
          <li>
            <router-link to="/service/全省服務">全省服務</router-link>
          </li>
          <li>
            <router-link to="/repair/線上報修">線上報修</router-link>
          </li>
        </ul>
      </nav>
    </header>
</template>

<script>
export default {
  name: 'header-top',
 data () {
    return {
      products: '',
      menuShow: false,
      isActive:false
    }
  },
    watch:{
    $route (to, from) {
       console.log("to",to);
      if(to.path.indexOf("/project") != -1){
        this.isActive=true;
      }else{
        this.isActive=false;
      }
     }
  }, 
  created (){
    this.axios.get('/products/')
    .then(res => {
      console.log(1,res.data);
      this.products=res.data.data;
    })
  },
  methods:{
    toggleMenu() {
        this.menuShow = !this.menuShow
    },
    

  }

}
</script>

<style>

</style>
