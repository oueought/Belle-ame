<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>


<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
	$("#btnLogin").click(function() {
		$(location).attr('href', '/login') //로그인 url 이동
	})
})

</script>

<!-- css -->
<style>

.findPwRs-form {
	width: 500px;   
	margin: 0 auto;
	padding: 40px 0;
}
   
.findPwRs-form form {
	padding: 40px;
	border-radius: 6px;
}
   
.findPwRs-form h3 {
	text-align: center;
	font-size: 30px;
	margin: 0 0 15px;
}
   
.findPwRs-form .form-group {
	margin-bottom: 20px;
}

.findPwRs-form .form-control, .findPwRs-form .btn  {        
	border-radius: 2px;
	min-height: 40px;
	transition: all 0.3s;
	outline: none;
}

#btnLogin { 
  	background-color: #ffffff;
 	font-size: 16px; 
 	min-height: 50px;
	border: 3px solid #6aafe6;
	border-radius: 15px; /* 버튼 테두리 둥글게 */
	color: #6e6e6e;
 } 

#btnLogin:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
	font-weight: bold;
}

.findPwRs-form label {
	color: #black;
	font-weight: normal;
}

p {
	text-align: center;
}

.findPwRs-form > hr {
	height: 1px;
	background: gray;
}

</style>

<!-- 비밀번호 재설정 -->
<div class="findPwRs-form">
	<h3 style="text-align: center;">비밀번호 재설정</h3><hr>
	
	<form action="/login/findpw" method="post">
        <div>
        	<p>임시 비밀번호가 고객님의 휴대폰 번호로 전송되었습니다.</p>
       		<p>로그인 후 마이페이지 -> 회원정보수정에서 변경해주세요.</p><br><br>
		</div>
		
		<div class="form-group">
			<label for="userid">아이디</label>
			<% %>
		</div><br>
		
		<div class="form-group">
			<label for="userph">휴대폰 번호</label>
			<% %>
		</div><br>
		
		<button type="button" class="btn btn-block" id="btnLogin">로그인</button>
		
	</form>
</div>
<%@ include file="../../layout/footer.jsp" %>