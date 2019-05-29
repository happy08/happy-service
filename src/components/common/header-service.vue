<template>
    <header class="main">
      <div class="logo">
        <div class="menu-bar" @click="toggleMenu">
          <span></span> 
          <span></span> 
          <span></span> 
          <div class="menu-down" >
              <router-link :to="'/project/?id='+item.id+'&title='+item.title" v-for="item in products" :key="item.id">{{item.title}}</router-link>
          </div>
        </div>
 
        <router-link to="/"><img src="../../assets/images/logo.png"> </router-link>
        <span class="logo-text">台灣冷凍空調家電專業維修中心</span> 
        <!-- <span class="logo-text visible-xs">冷凍空調家電維修</span>   -->
        
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
            <router-link to="/project">服務項目▼</router-link>
            <!-- <a @click.native="toggleMenu()">服務項目▼</router-link> -->
            <div class="menu-down">
              <router-link :to="'/project/?id='+item.id" v-for="item in products" :key="item.id">{{item.title}}</router-link>
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
  name: 'header-service',
 data () {
    return {
      products: '',
      menuShow: false,
    }
  }, 
  created (){
    this.axios.get('/products/')
    .then(res => {
      //console.log(1,res.data);
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

<style scoped>
 
@media (min-width:768px) {
  .logo{
    display: flex; 
    width: 100%;
    padding-left: 100px;
  }
  .logo a{
    /* display: inline-block; */
  }
  .logo-text {
    font-size: 30px;
    padding-top: 40px;
  }
  .menu-bar{
    display: block;
    left: 15px;
    top: 50%;
    margin-top:-40px;
  }
  .logo .menu-down{
    display: block;
    width: 270px;
    top: 100%;
    left: 10px;
    padding-top: 40px;
   }
  .logo .menu-bar:hover .menu-down{
    left: 0px;
    opacity: 1;
    visibility: visible;
  }
  nav{display: none;}

}
</style>
