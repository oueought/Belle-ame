<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<!-- mainA.css 연결 -->
<link rel="stylesheet" href="/css/main/mainA.css"> 

<link href="https://vjs.zencdn.net/7.19.2/video-js.css" rel="stylesheet"/>
<script src="https://vjs.zencdn.net/7.19.2/video.min.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


<meta charset="UTF-8">

<title>메인페이지(로그인 전)</title>

</head>

<body>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<br><br>

<div class="cal">
   <p><b>| 2022-10-10 |</b></p>
</div>


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

<!-- mainA.js 연결 -->
<script src="/js/main/mainA.js"></script>

</body>
</html>