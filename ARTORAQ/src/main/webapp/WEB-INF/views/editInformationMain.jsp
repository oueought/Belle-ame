<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

<script type="text/javascript">

// $(document).ready(function() {
// 	$("#identity").click(function() {	//확인버튼 클릭 시
// 		$(location).attr('href', '/join') //회원정보 수정 url 이동
// 	})
// })

</script>

<style type="text/css">
.wrapper {
	max-width: 1024px;
	width: 90%;
	margin: 0 auto;
}

.SignUp {
	margin: auto;
	left: 555px;
	width: 200px;
	height: 69px;
}

.line {
	size: 40px;
	height: 1px;
	width: 50%;
	background: gray;
}

.name {
	font-size: 14px;
	font-weight: bold;
	width: 400px;
	height: 69px;
}

.form-group {
	width: 40%;
}

.button-wrap {
	width: 100%;
	display: inline-block;
}

/* 버튼 css */
.w-btn-gray-outline {
	border: 2px solid #a3a1a1;
	color: #6e6e6e;
}

.w-btn-outline {
	position: relative;
	border-radius: 0px;
	font-family: "paybooc-Light", sans-serif;
	text-decoration: none;
	font-weight: 600;
}

.button {
	background-color: white; /* 버튼 색상 */
	font-size: 16px;
	min-height: 50px;
	border: 2px solid #6aafe6;
	border-radius: 0px; /* 버튼 테두리 둥글게 */
	width: 100%;	
}

/* 회원가입 hover색상 */
.button:hover {
	background: #6aafe6;
	outline: none;
	color: white;
}
</style>

<body>

<div class="wrapper">
<div class="SignUp">
<div style="font-weight:bold; font-size:24px;">마이 페이지</div>
</div>

<hr class="line" >
<br><br>

<div class="name">회원정보 수정</div>

<div class="psw-check">
	<div class="form-group">
	<p style="font-size: 13px; font-weight: bold;">보안을 위해 비밀번호를 재확인합니다.</p>
	<input type="password" id="passwordchk" name="passwordchk" class="form-control" required><br><br><br>
	<button class="w-btn-outline w-btn-gray-outline button" type="button" id="identify">확인</button>
</div>
	</div><br>
			
			
</div>
</body>

<%@ include file="../layout/footer.jsp"%>
