<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<link href="https://vjs.zencdn.net/7.19.2/video-js.css" rel="stylesheet"/>
<script src="https://vjs.zencdn.net/7.19.2/video.min.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


<meta charset="UTF-8">

<title>메인페이지(로그인 전)</title>

<style>
.center{
   width: 1500px;
   height: 600px;
   margin: 0 auto;
   padding: 0;
}

.menu{
   padding:0;
   
}

.menubar{
   padding: 0;
   width:250px;
   display: inline-block;
   
}

.menu>li>a{
   text-decoration: none;
   line-height: 100px;
   text-align: left;
   color: black;
   width: 250px;
   height: 100px;
   padding:0;
   margin: 0 auto;
   font-size: 25px;
}

.menu>li>a:hover{
   cursor: pointer;
}

.menu>li{
   list-style:none;
   width: 250px;
   height: 100px;
   /* background-color: yellow; */
   padding: 23px;
   text-indent: 30px;
   
}

/*오늘 날짜*/
.cal{
   width: 1500px;
   height:30px;
   margin: 0 auto;
   margin-right:20px;
   position: relative;
}
.cal>p{
   float: right;
   display: inline;
   margin: 0;
}

/*슬라이더 박스*/
.slide-wrap{
   width:1100px;
   float:right;
   left: -120px;
   margin: 0 auto;
   margin-top: 20px;
   margin-right:30px;
   overflow: hidden;
   position: relative;
}
.slide-wrap>ul{
    margin: 0;
    padding: 0;
    list-style-type: none;
    overflow: hidden;
}

.slide-wrap>ul>li{
    width: 1100px;
    float: left;
}

.slide-wrap>ul>li>img{
    width: 100%;
    height: 500px;
}

.slide-navi{
    height: 500px;
    line-height: 500px;
    position: absolute;
    top: 0;
    text-align: center;
    opacity: 0.4;
}
.prev{
    left: 0;
}

.next{
    right:100px;
}

.slide-navi>span{
    font-size: 30px;
    color: black;
}

.slide-navi:hover{
    cursor:pointer;
    opacity: 0.8;
}

p {
	margin: 0 auto;
	/* margin-left: 100px;
	margin-right: 100px; */
	width: 854px;
	align: center;
}

</style>
</head>

<body>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<br><br>

<div class="cal">
   <p><b>| 2022-10-19 |</b></p>
</div>

	<div class="center">
      	<div class="menubar">
         	<ul class="menu">
            	<li><a href="#"><b>| 전시정보</b></a></li>
            	
            	<!-- 비로그인 상태, 로그인 버튼 보여주기 -->
            	<% if(session.getAttribute("login") == null) { %>
            	<li><a href="#"><b>| 회원가입</b></a></li>
            	<li><a href="#"><b>| 로그인</b></a></li>
            	<% } %>  
            	
            	<!-- 로그인 상태, 로그아웃 버튼 보여주기 -->
            	<% if(session.getAttribute("login") != null && (boolean) session.getAttribute("login")) {%>   
            	<li><a href="#">마이페이지</a></li>
            	<li><a href="/main/logout">로그아웃</a></li>
            	<% } %>       
        	</ul>
      	</div>
	
      	<!-- 슬라이드 이미지 -->
		<div class="slide-wrap">
			<ul>
				<li><img src="https://ifh.cc/g/TwtR7j.jpg"></li>
				<li><img src="https://ifh.cc/g/g1m8qj.jpg"></li>
				<li><img src="https://ifh.cc/g/QvYj6g.jpg"></li>
				<li><img src="https://ifh.cc/g/925dgf.jpg"></li>
			</ul>

			<!-- 슬라이드 화살표 -->
			<div class="slide-navi prev">
				<span class="material-icons">arrow_back_ios_new</span>
			</div>
			<div class="slide-navi next">
				<span class="material-icons">arrow_forward_ios</span>
			</div>

		</div>
	</div>

	<br><br><br><br>
	
	<hr style="border:0.5px solid#808080;"/>
	
	<br><br><br><br><br><br><br><br>

	<div class="bottom" align="middle">
		<iframe width="1100" height="600" src="https://www.youtube.com/embed/cksAc93q0HA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
		allowfullscreen></iframe>
	</div>
	

<br><br><br><br>

<footer>
<%@ include file="../layout/footer.jsp" %>
</footer>
</body>

<script type="text/javascript">

<!-- mainA JS -->
let curPos = 0;

const ul = $(".slide-wrap>ul");
const lastImg =ul.children().last().clone(); 
ul.prepend(lastImg); 
const firstImg = ul.children().eq(1).clone(); 
ul.append(firstImg);
const imgCount = ul.children().length;
const width=1100;
ul.css("width",(width*imgCount)+"px");
   
let imgNo = 1; 
ul.css("transform","translateX("+(imgNo*-1200)+"px)");
let intervalId;
   
$(".prev").on("click",function(){
       if(imgNo != 0){
           clearInterval(intervalId);
          
           imgNo--;
           const move =-imgNo*width;
           ul.css("transform","translateX("+move+"px)").css("transition-duration","1s");
          
           if(imgNo==0){
               imgNo=imgCount-3; 
               setTimeout(function(){
               
               const move =-imgNo*width;
               ul.css("transform","translateX("+move+"px)")
               .css("transition-duration","0s");
               },1000);
           }
           autoSlide(); 
	}
});
   
$(".next").on("click",function(){
       if(imgNo != imgCount-1){
           clearInterval(intervalId); 
          ;
           imgNo++;
           const move = -imgNo*width;
           ul.css("transform","translateX("+move+"px)").css("transition-duration","1s");
          
           if(imgNo==imgCount-1){
               imgNo=1;
               setTimeout(function(){
                   const move = -imgNo*width;
                   ul.css("transform","translateX("+move+"px)").css("transition-duration","0s");
               },1000);
           }
           autoSlide(); 
       }
   });
   
   function autoSlide(){
       intervalId=setInterval(function(){
           $(".next").click(); 
       },4*1000);
   }
</script>

</html>