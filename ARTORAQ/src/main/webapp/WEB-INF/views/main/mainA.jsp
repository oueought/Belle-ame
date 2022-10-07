<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<link href="https://vjs.zencdn.net/7.19.2/video-js.css" rel="stylesheet" />
<script src="https://vjs.zencdn.net/7.19.2/video.min.js"></script>


<meta charset="UTF-8">

<title>메인페이지(로그인 전)</title>

<style>

body {
 	width: 90%; 
    margin: 2em auto !important;
    font: 1em/1.3 Arial, Helvetica, sans-serif;
}

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
   padding: 10;
   width:180px;
   font-size: 20px;
   display: inline-block;
   margin-top: 0px;
   
}

.menu>li>a{
   text-decoration: none;
   line-height: 100px;
   text-align: left;
   color: black;
   width: 180px;
   height: 100px;
   padding:0;
   margin: 0 auto;
   font-size: 22px;
}

.menu>li>a:hover{
   cursor: pointer;
}

.menu>li{
   list-style:none;
   width: 180px;
   height: 100px;
   padding: 20px;
   text-indent: 30px;
   
}

.photobox{
   width: 180px;
   height: 600px;
   margin-left: 10px;
}

/*오늘 날짜*/
.cal{
   width: 1350px;
   height:30px;
}
.cal>p{
   font-size: 20px;
   font-weight:bold;
   margin-left: 1215px;
   display: inline;  
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
   display: inline-block;
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
    height: 600px;
    margin-right: 20px;
    display: inline-block;
}

.slide-navi{
    height: 1100px;
    line-height: 600px;
    position: absolute;
    top: 0;
    text-align: center;
    opacity: 0.4;
}
.prev{
    left: 0;
}

.next{
    right:0px;
}

.slide-navi>span{
    font-size: 50px;
    color: grey;
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

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
<link href="ARTOraQ\ARTORAQ\src\main\webapp\WEB-INF\views\main\mainA.css" rel="stylesheet"> 

</head>

<body>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="cal">
   <p>| 2022-09-29 |</p>
</div>

<br>

	<div class="center">
      	<div class="menubar">
         	<ul class="menu">
            	<li><a href="#"><b>| 전시정보</b></a></li>
            	<li><a href="#"><b>| 회원가입</b></a></li>
            	<li><a href="#"><b>| 로그인</b></a></li>               
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

	<br><br><br><br><br><br><br><br>
	
	<hr style="border:0.5px solid#808080;"/>

	<div class="bottom"></div>


<br><br><br><br>



<footer>

<script type="text/javascript" async><%@include file="./mainA.js" %></script> 
<%@ include file="../layout/footer.jsp" %>

</footer>

</body>
</html>