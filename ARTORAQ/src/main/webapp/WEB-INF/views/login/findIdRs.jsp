<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
	$("#btnLogin").click(function() {
		$(location).attr('href', '/login') //로그인 url 이동
	})
	
	$("#btnFindPw").click(function() {
		$(location).attr('href', '/login/findpw') //비밀번호 찾기 url 이동
	})
})

</script>

<!-- css -->
<style type="text/css">

.findIdRs-form > h3 {
	font-weight: bold;
}

.findIdRs-form > hr {
	height: 1px;
	background: gray;
}

.findIdRs-form { 
	width: 500px;   
	margin: 0 auto;
	padding: 40px 0;
}
   
.findIdRs-form form {
	padding: 40px;
	border-radius: 6px;
}
   
.findIdRs-form h3 {
	text-align: center;
	font-size: 30px;
	margin: 0 0 15px;
}
   
.findIdRs-form .form-group {
	margin-bottom: 20px;
}

.findIdRs-form .form-control, .findIdRs-form .btn  {        
	border-radius: 2px;
	min-height: 40px;
	transition: all 0.3s;
	outline: none;
}

/* 버튼 스타일 */
.btn {
  	background-color: #ffffff;
  	font-size: 16px; 
 	min-height: 50px;
}

#btnLogin { 
	min-height: 50px;
	border: 2px solid #6aafe6;
	color: #6e6e6e;
}

#btnFindPw {
 	min-height: 50px;
	border: 2px solid #a3a1a1;
	color: #6e6e6e;
}

#btnLogin:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
}

#btnFindPw:hover {
  	background: #a3a1a1; 
	outline: none;
	color: white;
}

.findIdRs-form label {
	color: #black;
	font-weight: normal;
}
	
</style>

<div class="findIdRs-form">
	<h3 style="text-align: center;">아이디 찾기</h3><hr>

	<form>
		<div class="form-group">
			<label for="username">이름</label>
			 <% %>
		</div><br>
		
		<div class="form-group">
			<label for="userph">휴대폰 번호</label>
			<% %>
		</div><br>
		
		<button type="button" class="btn btn-block" id="btnLogin">로그인</button>
		<button type="button" class="btn btn-block" id="btnFindPw">비밀번호 찾기</button>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>