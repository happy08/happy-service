<template>
  <div class="home">
      <banner-top></banner-top>  
    <div class="main">

     <div class="title text-center">
        線上報修
     </div>
     
     <div class="item">
       <label class="label">姓名</label>
       <div class="input">
         <input name="name" id="name" v-model="info.name" type="text" placeholder="姓名">
         <input name="sex" v-model="info.sex" type="hidden">
         <div class="clip">
            <span class="sex" :class="{cur:info.sex=='先生'}" @click="sex('先生')">先生</span>
            <span class="sex" :class="{cur:info.sex=='女士'}" @click="sex('女士')">女士</span>
         </div>
       </div>
     </div>
     <div class="item">
       <label class="label">聯絡電話</label>
       <div class="input">
         <input name="tel" id="tel" v-model="info.tel" type="text" placeholder="聯絡電話">
       </div>
     </div>
     <div class="item">
       <label class="label">電子信箱</label>
       <div class="input">
         <input name="email" v-model="info.email" type="text" placeholder="電子信箱">
       </div>
     </div>
     <div class="item">
       <label class="label">購賣日期</label>
       <div class="input">
         <div class="row">
           <div class="col">
                  <select name="year" v-model="info.year">
                    <option value="2019年">2019年</option>
                    <option value="2018年">2018年</option>
                    <option value="2017年">2017年</option>
                    <option value="2016年">2016年</option>
                    <option value="2015年">2015年</option>
                    <option value="2014年">2014年</option>
                    <option value="2013年">2013年</option>
                    <option value="2012年">2012年</option>
                    <option value="2011年">2011年</option>
                    <option value="2010年">2010年</option>
                  </select>
           </div>
           <div class="col">
                  <select name="month" v-model="info.month">
                    <option value="1月">1月</option>
                    <option value="2月">2月</option>
                    <option value="3月">3月</option>
                    <option value="4月">4月</option>
                    <option value="5月">5月</option>
                    <option value="6月">6月</option>
                    <option value="7月">7月</option>
                    <option value="8月">8月</option>
                    <option value="9月">9月</option>
                    <option value="10月">10月</option>
                    <option value="11月">11月</option>
                    <option value="12月">12月</option>                  
                  </select>
           </div>
         </div>
         
       </div>
     </div>
     <div class="item">
       <label class="label">聯絡地址</label>
       <div class="input">
         <div class="row">
           <div class="col">
              <div class="row">
                <div class="col">
                  <select name="city" v-model="info.city" @change="changeCity()"><option value="">縣市</option><option value="基隆市">基隆市</option><option value="臺北市">臺北市</option><option value="新北市">新北市</option><option value="宜蘭縣">宜蘭縣</option><option value="新竹市">新竹市</option><option value="新竹縣">新竹縣</option><option value="桃園市">桃園市</option><option value="苗栗縣">苗栗縣</option><option value="臺中市">臺中市</option><option value="彰化縣">彰化縣</option><option value="南投縣">南投縣</option><option value="嘉義市">嘉義市</option><option value="嘉義縣">嘉義縣</option><option value="雲林縣">雲林縣</option><option value="臺南市">臺南市</option><option value="高雄市">高雄市</option><option value="屏東縣">屏東縣</option><option value="臺東縣">臺東縣</option><option value="花蓮縣">花蓮縣</option><option value="金門縣">金門縣</option><option value="連江縣">連江縣</option><option value="澎湖縣">澎湖縣</option></select>
                </div>
              </div>
           </div>
           <div class="col">
              <div class="row">
                <div class="col">
                  <select name="area" id="area" v-model="info.area">
                    <option value="">鄉鎮市區</option>
                  </select>
                </div>
              </div>
           </div>
         </div>
         
       </div>
     </div>
     <div class="item">
       <label class="label">詳細地址</label>
       <div class="input">
         <input name="name" v-model="info.address" type="text" placeholder="詳細地址">
       </div>
     </div>
     <div class="item">
       <label class="label">維修商品</label>
       <div class="input">
          <select name="product" v-model="info.product">
            <option value="">請選擇維修商品</option>
            <option value="烘衣機維修">烘衣機維修</option>
            <option value="除濕機維修">除濕機維修</option>
            <option value="冷凍冷藏櫃維修">冷凍冷藏櫃維修</option>
            <option value="製冰機維修">製冰機維修</option>
            <option value="洗衣機維修">洗衣機維修 </option>
            <option value="冰箱維修">冰箱維修</option>
            <option value="液晶電視維修">液晶電視維修 </option>
            <option value="冷氣安裝移機">冷氣安裝移機</option>
            <option value="冷氣保養清洗">冷氣保養清洗 </option>
            <option value="冷氣空調維修">冷氣空調維修</option>
           </select>
       </div>
     </div>
     <div class="item">
       <label class="label">型號</label>
       <div class="input">
         <input name="model" v-model="info.model" type="text" placeholder="型號">
       </div>
     </div>
     <div class="item">
       <label class="label">故障現象</label>
       <div class="input">
         <input name="fault" v-model="info.fault" type="text" placeholder="故障現象">
       </div>
     </div>
     <div class="item">
       <label class="label">備註</label>
       <div class="input">
         <input name="remark" v-model="info.remark" type="text" placeholder="備註">
       </div>
     </div>
      <div class="item">
       <label class="label">驗證碼</label>
       <div class="input">
         <input v-model="code" type="text" placeholder="驗證碼" style="width: 50%;"> 
         <input type="button" v-model="vcode" @click="createCode" style="width: 100px"/>
         <!-- <input name="code" v-model="info.code" type="text" placeholder="驗證碼"> -->
       </div>
     </div> 
     <div class="text-center">
      <button @click="submit" class="submit">
        送出
      </button>
      </div>
    </div>

<br/><br/><br/><br/><br/><br/><br/>

  </div>
</template>

<script>
import bannerTop from './common/banner'

export default {
  name: 'repair',
    metaInfo: {
      title: '線上報修-快樂先生-台灣冷凍空調家電專業維修中心',
     
  },
  data () {
    return {
      code:"",
      vcode:"",
      products: '',
      items: '',
      info: {
        name:"",
        sex:"先生",
        tel:"",
        email:"",
        year:"2019年",
        month:"1月",
        city:"",
        area:"",
        address:"",
        product:"",
        model:"",
        fault:"",
        remark:"",
        //code:""
      },
      allcity : {
        '基隆市': {'仁愛區': '200', '信義區': '201', '中正區': '202', '中山區': '203', '安樂區': '204', '暖暖區': '205', '七堵區': '206'},
        '臺北市': {'中正區': '100', '大同區': '103', '中山區': '104', '松山區': '105', '大安區': '106', '萬華區': '108', '信義區': '110', '士林區': '111', '北投區': '112', '內湖區': '114', '南港區': '115', '文山區': '116'},
        '新北市': {
          '萬里區': '207', '金山區': '208', '板橋區': '220', '汐止區': '221', '深坑區': '222', '石碇區': '223',
          '瑞芳區': '224', '平溪區': '226', '雙溪區': '227', '貢寮區': '228', '新店區': '231', '坪林區': '232',
          '烏來區': '233', '永和區': '234', '中和區': '235', '土城區': '236', '三峽區': '237', '樹林區': '238',
          '鶯歌區': '239', '三重區': '241', '新莊區': '242', '泰山區': '243', '林口區': '244', '蘆洲區': '247',
          '五股區': '248', '八里區': '249', '淡水區': '251', '三芝區': '252', '石門區': '253'
        },
        '宜蘭縣': {
          '宜蘭市': '260', '頭城鎮': '261', '礁溪鄉': '262', '壯圍鄉': '263', '員山鄉': '264', '羅東鎮': '265',
          '三星鄉': '266', '大同鄉': '267', '五結鄉': '268', '冬山鄉': '269', '蘇澳鎮': '270', '南澳鄉': '272',
          '釣魚臺列嶼': '290'
        },
        '新竹市': {'東區': '300', '北區': '300', '香山區': '300'},
        '新竹縣': {
          '竹北市': '302', '湖口鄉': '303', '新豐鄉': '304', '新埔鎮': '305', '關西鎮': '306', '芎林鄉': '307',
          '寶山鄉': '308', '竹東鎮': '310', '五峰鄉': '311', '橫山鄉': '312', '尖石鄉': '313', '北埔鄉': '314',
          '峨眉鄉': '315'
        },
        '桃園市': {
          '中壢區': '320', '平鎮區': '324', '龍潭區': '325', '楊梅區': '326', '新屋區': '327', '觀音區': '328',
          '桃園區': '330', '龜山區': '333', '八德區': '334', '大溪區': '335', '復興區': '336', '大園區': '337',
          '蘆竹區': '338'
        },
        '苗栗縣': {
          '竹南鎮': '350', '頭份市': '351', '三灣鄉': '352', '南庄鄉': '353', '獅潭鄉': '354', '後龍鎮': '356',
          '通霄鎮': '357', '苑裡鎮': '358', '苗栗市': '360', '造橋鄉': '361', '頭屋鄉': '362', '公館鄉': '363',
          '大湖鄉': '364', '泰安鄉': '365', '銅鑼鄉': '366', '三義鄉': '367', '西湖鄉': '368', '卓蘭鎮': '369'
        },
        '臺中市': {
          '中區': '400', '東區': '401', '南區': '402', '西區': '403', '北區': '404', '北屯區': '406', '西屯區': '407', '南屯區': '408',
          '太平區': '411', '大里區': '412', '霧峰區': '413', '烏日區': '414', '豐原區': '420', '后里區': '421',
          '石岡區': '422', '東勢區': '423', '和平區': '424', '新社區': '426', '潭子區': '427', '大雅區': '428',
          '神岡區': '429', '大肚區': '432', '沙鹿區': '433', '龍井區': '434', '梧棲區': '435', '清水區': '436',
          '大甲區': '437', '外埔區': '438', '大安區': '439'
        },
        '彰化縣': {
          '彰化市': '500', '芬園鄉': '502', '花壇鄉': '503', '秀水鄉': '504', '鹿港鎮': '505', '福興鄉': '506',
          '線西鄉': '507', '和美鎮': '508', '伸港鄉': '509', '員林市': '510', '社頭鄉': '511', '永靖鄉': '512',
          '埔心鄉': '513', '溪湖鎮': '514', '大村鄉': '515', '埔鹽鄉': '516', '田中鎮': '520', '北斗鎮': '521',
          '田尾鄉': '522', '埤頭鄉': '523', '溪州鄉': '524', '竹塘鄉': '525', '二林鎮': '526', '大城鄉': '527',
          '芳苑鄉': '528', '二水鄉': '530'
        },
        '南投縣': {
          '南投市': '540', '中寮鄉': '541', '草屯鎮': '542', '國姓鄉': '544', '埔里鎮': '545', '仁愛鄉': '546',
          '名間鄉': '551', '集集鎮': '552', '水里鄉': '553', '魚池鄉': '555', '信義鄉': '556', '竹山鎮': '557',
          '鹿谷鄉': '558'
        },
        '嘉義市': {'東區': '600', '西區': '600'},
        '嘉義縣': {
          '番路鄉': '602', '梅山鄉': '603', '竹崎鄉': '604', '阿里山鄉': '605', '中埔鄉': '606', '大埔鄉': '607',
          '水上鄉': '608', '鹿草鄉': '611', '太保市': '612', '朴子市': '613', '東石鄉': '614', '六腳鄉': '615',
          '新港鄉': '616', '民雄鄉': '621', '大林鎮': '622', '溪口鄉': '623', '義竹鄉': '624', '布袋鎮': '625'
        },
        '雲林縣': {
          '斗南鎮': '630', '大埤鄉': '631', '虎尾鎮': '632', '土庫鎮': '633', '褒忠鄉': '634', '東勢鄉': '635',
          '臺西鄉': '636', '崙背鄉': '637', '麥寮鄉': '638', '斗六市': '640', '林內鄉': '643', '古坑鄉': '646',
          '莿桐鄉': '647', '西螺鎮': '648', '二崙鄉': '649', '北港鎮': '651', '水林鄉': '652', '口湖鄉': '653',
          '四湖鄉': '654', '元長鄉': '655'
        },
        '臺南市': {
          '中西區': '700', '東區': '701', '南區': '702', '北區': '704', '安平區': '708', '安南區': '709',
          '永康區': '710', '歸仁區': '711', '新化區': '712', '左鎮區': '713', '玉井區': '714', '楠西區': '715',
          '南化區': '716', '仁德區': '717', '關廟區': '718', '龍崎區': '719', '官田區': '720', '麻豆區': '721',
          '佳里區': '722', '西港區': '723', '七股區': '724', '將軍區': '725', '學甲區': '726', '北門區': '727',
          '新營區': '730', '後壁區': '731', '白河區': '732', '東山區': '733', '六甲區': '734', '下營區': '735',
          '柳營區': '736', '鹽水區': '737', '善化區': '741', '大內區': '742', '山上區': '743', '新市區': '744',
          '安定區': '745'
        },
        '高雄市': {
          '新興區': '800', '前金區': '801', '苓雅區': '802', '鹽埕區': '803', '鼓山區': '804', '旗津區': '805',
          '前鎮區': '806', '三民區': '807', '楠梓區': '811', '小港區': '812', '左營區': '813',
          '仁武區': '814', '大社區': '815', '東沙群島': '817', '南沙群島': '819', '岡山區': '820', '路竹區': '821',
          '阿蓮區': '822', '田寮區': '823',
          '燕巢區': '824', '橋頭區': '825', '梓官區': '826', '彌陀區': '827', '永安區': '828', '湖內區': '829',
          '鳳山區': '830', '大寮區': '831', '林園區': '832', '鳥松區': '833', '大樹區': '840', '旗山區': '842',
          '美濃區': '843', '六龜區': '844', '內門區': '845', '杉林區': '846', '甲仙區': '847', '桃源區': '848',
          '那瑪夏區': '849', '茂林區': '851', '茄萣區': '852'
        },
        '屏東縣': {
          '屏東市': '900', '三地門鄉': '901', '霧臺鄉': '902', '瑪家鄉': '903', '九如鄉': '904', '里港鄉': '905',
          '高樹鄉': '906', '鹽埔鄉': '907', '長治鄉': '908', '麟洛鄉': '909', '竹田鄉': '911', '內埔鄉': '912',
          '萬丹鄉': '913', '潮州鎮': '920', '泰武鄉': '921', '來義鄉': '922', '萬巒鄉': '923', '崁頂鄉': '924',
          '新埤鄉': '925', '南州鄉': '926', '林邊鄉': '927', '東港鎮': '928', '琉球鄉': '929', '佳冬鄉': '931',
          '新園鄉': '932', '枋寮鄉': '940', '枋山鄉': '941', '春日鄉': '942', '獅子鄉': '943', '車城鄉': '944',
          '牡丹鄉': '945', '恆春鎮': '946', '滿州鄉': '947'
        },
        '臺東縣': {
          '臺東市': '950', '綠島鄉': '951', '蘭嶼鄉': '952', '延平鄉': '953', '卑南鄉': '954', '鹿野鄉': '955',
          '關山鎮': '956', '海端鄉': '957', '池上鄉': '958', '東河鄉': '959', '成功鎮': '961', '長濱鄉': '962',
          '太麻里鄉': '963', '金峰鄉': '964', '大武鄉': '965', '達仁鄉': '966'
        },
        '花蓮縣': {
          '花蓮市': '970', '新城鄉': '971', '秀林鄉': '972', '吉安鄉': '973', '壽豐鄉': '974', '鳳林鎮': '975',
          '光復鄉': '976', '豐濱鄉': '977', '瑞穗鄉': '978', '萬榮鄉': '979', '玉里鎮': '981', '卓溪鄉': '982',
          '富里鄉': '983'
        },
        '金門縣': {'金沙鎮': '890', '金湖鎮': '891', '金寧鄉': '892', '金城鎮': '893', '烈嶼鄉': '894', '烏坵鄉': '896'},
        '連江縣': {'南竿鄉': '209', '北竿鄉': '210', '莒光鄉': '211', '東引鄉': '212'},
        '澎湖縣': {'馬公市': '880', '西嶼鄉': '881', '望安鄉': '882', '七美鄉': '883', '白沙鄉': '884', '湖西鄉': '885'}
      }

    }
  },
    created () {
      this.createCode();//初始化生成一个4位数的验证码
    },
  methods:{
    createCode(){
      var code = "";
      var codeLength = 4;//验证码的长度
      var random = new Array(0,1,2,3,4,5,6,7,8,9//,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
      );//随机数
      for(var i = 0; i < codeLength; i++) {
      //循环操作
      var index = Math.floor(Math.random()*10);//36 取得随机数的索引（0~35）
      code += random[index];//根据索引取得随机数加到code上
      }
      this.vcode = code;//把code值赋给验证码
      //console.log(2,code)
    },
    
    sex: function(sex){ 
      this.info.sex=sex;
    },
    changeCity:function(){
       var city=this.allcity;
        for(i in city){
            if(i==this.info.city){
              var str='<option value="">鄉鎮市區</option>';
              for(j in city[i]){
              str+="<option value='"+j+"'> "+j+" </option>";
              }
              this.info.area="";
              document.getElementById('area').innerHTML =str
              //console.log(str);
            }
          // console.log(city[i]);
        }
    },
    submit: function() {
      var code = this.code.toUpperCase();//输入内容全部转化为大写
     if(code != this.vcode){
      alert("驗證碼錯誤");
      this.code='';
      this.createCode();return;
     }

        if(this.info.name==""){
          alert("請输入姓名");
          document.getElementById('name').focus()
          return;
        }
        if(this.info.tel==""){
          alert("請输入聯絡電話");
          document.getElementById('tel').focus()
          return;
        }

        //console.log(this.info)
        //delete this.year; delete this.month; delete this.city; delete this.area;
        var info=this.qs.stringify(this.info)
 
         // this.$store.commit('showLoading');
         this.axios.post("/contact/",info).then(res => {
           console.log(res);
            this.info.name="";
            this.info.sex="先生";
            this.info.tel="";
            this.info.email="";
            this.info.year="2019年";
            this.info.month="1月";
            this.info.city="";
            this.info.area="";
            this.info.address="";
            this.info.product="";
            this.info.model="";
            this.info.fault="";
            this.info.remark="";
           alert("發訊完成");
              // if(res.statu=="1"){
              //   alert("發訊完成");
              //   //$("input[type=text]").val("");
              // }else{
              //   alert(res.statu);                  
              // }
              //$("input[type=submit]").attr("disabled",false);
          }, err => {
              alert("請稍後再試！")
              //$("input[type=submit]").attr("disabled",false);
          })
        // this.$store.commit('hideLoading');
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
