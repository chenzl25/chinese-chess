<template> 

<div class = "home"  :style="{ backgroundImage: 'url(' + img + ')' }">
  
  <canvas id="Mycanvas" ref="canvas"></canvas>

  <div class = "home_main">
    <div class = "home_main_body" >

      <div class = "home_header">
        <div id="home_title">弈乎</div>
        <div id = "home_title2">与世界分享你的棋艺、经验和技巧</div>
      </div>

      <div class = "home_navs">
        <div class = "home_navs_header">
          <span class="home_nav" v-bind:class="{
            active_tab: activeTab === 'login'
          }"
          @click="handleTabChange('login')">登录</span>

          <span class="home_nav" v-bind:class="{
            active_tab: activeTab === 'register'
          }"
          @click="handleTabChange('register')">注册</span>

          <span class="home_nav" v-bind:class="{
            active_tab: activeTab === 'guest'
          }"
          @click="handleTabChange('guest')">游客</span>

        </div>
        
        <div class = "home_navs_body" v-if="activeTab === 'login'">
          <form id="home_login" name="home_login" method="post" class="form">
            <mu-text-field class="home_input" label="username" hintText='username'/><br/>
            <mu-text-field class="home_input" label="password" hintText='password' type="password" labelFloat/><br/>
            <mu-raised-button @click="login()" type='submit' label="登录游戏中心" class="home_button" to="/" secondary/>
          </form>
        </div>
        <div class = "home_navs_body" v-if="activeTab === 'register'">
          <form id="home_register" name="home_register" method="post" class="form">
            <mu-text-field class="home_input" label="username" hintText='用户名不能以数字或下划线开头'/><br/>
            <mu-text-field class="home_input" label="password" hintText='密码长度为6-16个字符' type="password" labelFloat/><br/>
            <mu-raised-button type='submit' label="确认注册并登录" class="home_button" @click="register()" to="/" secondary/>
          </form>
        </div>
        <div class = "home_navs_body" v-if="activeTab === 'guest'">
          <form id="home_guest" name="home_guest" method="post" class="form">
            <mu-text-field v-model="username" class="home_input" label="username" hintText='用户名不能以数字或下划线开头'/><br/>
            <mu-raised-button type='submit' label="进入游戏大厅" class="home_button" @click="register()" to="/"  secondary />
          </form>
        </div>

      </div>
    </div>
  </div>

</div>
</template>

<script>
export default {
  data () {
    return {
      img: require('@/assets/pages/UserSetting/bg.png'),
      activeTab: 'guest',
      width: 800,
      height: 1200,
      pointnum:30,
      canvas:null,
      context:null,
      circles:[],
      username:null
    }
  },
  computed: {
    link : function() {
      return "{ name: 'Chess', params: { username: "+username+" }}"
    }
  },
  methods: {

    handleTabChange (val) {
      this.activeTab = val;
    },

    random(min, max) {
      return Math.floor(Math.random()*(max-min+1)+min);
    },

    Line(begin_x, begin_y, end_x, end_y, opacity) {
      this.begin_x = begin_x;
      this.begin_y = begin_y;
      this.end_x = end_x;
      this.end_y = end_y;
      this.opacity = opacity;
    },

    Circle(x, y, r, move_x, move_y) {
      this.x = x;
      this.y = y;
      this.r = r;
      this.move_x = move_x;
      this.move_y = move_y;
    },

    drawCircle(context, x, y, r, move_x, move_y) {
      context.beginPath();
      context.arc(x,y,r,0,2*Math.PI);
      context.closePath();
      context.fill();
      return {
        x:x,
        y:y,
        r:r,
        move_x:move_x,
        move_y:move_y
      };
    },

    drawLine(context,begin_x, begin_y, end_x, end_y, opacity) {
      var line = new this.Line(begin_x, begin_y, end_x, end_y, opacity);
      context.beginPath();
      context.stokeStyle = 'rgba(0,0,0,'+opacity+')';
      context.moveTo(begin_x, begin_y);
      context.lineTo(end_x,end_y);
      context.closePath();
      context.stroke();
    },

    draw() {
      this.context.clearRect(0,0,this.canvas.width,this.canvas.height);
      for (var i = 0; i < this.pointnum; i++) {
        this.drawCircle(this.context,this.circles[i].x,this.circles[i].y,this.circles[i].r,this.circles[i].move_x,this.circles[i].move_y);
      }
      for (var i = 0; i < this.pointnum; i++) {
        for (var j = i+1; j < this.pointnum; j++) {

          var len = Math.sqrt( (this.circles[i].x-this.circles[j].x)*(this.circles[i].x-this.circles[j].x)+ (this.circles[i].y-this.circles[j].y)*(this.circles[i].y-this.circles[j].y) );
          var lineOpacity = 1/len;
          if (lineOpacity > 0.005 && lineOpacity < 0.04) {
            this.drawLine(this.context,this.circles[i].x,this.circles[i].y,this.circles[j].x,this.circles[j].y,lineOpacity);
          }
        }
      }
    },

    init() {
      this.width = window.innerWidth;
      this.height = window.innerHeight;
      this.canvas = this.$refs.canvas;
      this.context = this.canvas.getContext('2d');
      this.context.strokeStyle = 'rgba(0,0,0,0.02)';
      this.context.strokeWidth = 1,
      this.context.fillStyle = 'rgba(0,0,0,0.05)';
      this.circles = [];
      for (var i = 0; i < this.pointnum; i++) {
        this.circles.push(this.drawCircle(this.context,this.random(0,this.width),this.random(0,this.height),this.random(2,10),Math.random()-0.5,Math.random()-0.5 ) );
       
      }
      this.draw();
    }
  },
  mounted() {
    this.init();
    var that = this;
    setInterval(function() {
      for (var i = 0; i < that.pointnum; i++) {

        that.circles[i].x += that.circles[i].move_x;
        that.circles[i].y += that.circles[i].move_y;
        if (that.circles[i].x < 0)
          that.circles[i].x = that.width;
        else if (that.circles[i].x > that.width)
          that.circles[i].x = 0;

        if (that.circles[i].y < 0)
          that.circles[i].y = that.height;
        else if (that.circles[i].y > that.height)
          that.circles[i].y = 0;
      }
      that.draw();
     },20);

  }
}
</script>

<style>
  
  .home {

    width: 100%;
    height: 100%;
    background-color: #f7fafc;
    background-size: 100% 100%;


    background: no-repeat;
    background-size: 100% 100%
  }


  #Mycanvas {
    width: 100%;
    height: 100%;
    z-index: -1;
    float: right;
  }

  .home_main {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    z-index: 99;

  }

  .home_main_body {

    width: 100%;
    height: 100%;
    max-width: 400px;
    margin: auto;

  }

  .home_header {
    padding: 0%;
    width: 100%;
    height: 20%;
  }

  .home_navs {
    width: 100%;
    height: 60%;
  }

  .home_navs_header {
    cursor: pointer;
    background-color: #fbe9e7;
    margin: 8%;
  }

  .home_navs_body {
    top: 30%;
    width: 100%;
    height: 70%;
    color: grey;
  }

  .home_nav {
    font-size: 4vh;
    font-weight: bold;
    padding: 1%;
    cursor: pointer;
  }

  .active_tab {
    color: #448aff;
  }

  #home_title {
    height: 80%;
    font-size: 12vh;
    color: #ffc107;
    margin-top: 0%;
    font-weight: bold;
    margin-bottom: 0%;
    font-family:Georgia,Serif
  }

  #home_title2 {
    height: 20%;
    font-family:Arial,Verdana,Sans-serif;
    font-size: 2.7vh;
    font-weight: bold;
  }

  .home_button {
    font-size: 4vh;

  }

  .home_input {
    font-size: 2.7vh;
    margin-bottom: 8%;
  }

  .disable {
    pointer-events: none;
    cursor: default;
    opacity: 0.6;
  }

</style>