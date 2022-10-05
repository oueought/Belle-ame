<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>


<!-- js -->
<script type="text/javascript">

	$(document).ready(function() {
		$("#btnLogin").click(function() {
			$(location).attr('href', '/login') //로그인 url 이동
		})
		
		$("#btnFindId").click(function() {
			$(location).attr('href', '/login/findpw') //비밀번호 찾기 url 이동
		})
	})

</script>

<!-- css -->
<style>

.findIdRs-form { 
	width: 500px;   
	margin: 0 auto;
	padding: 40px 0;
}
   
.findIdRs-form form {
	background: #fff;
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
	transition: all 0.5s;
	outline: none;
}

 .findIdRs-form .btn { 
  	background-color: #ffffff; /* 버튼 색상 */ 
 	font-size: 16px; 
 	min-height: 50px;
	border: 3px solid #1e6b7b;
	border-radius: 15px; /* 버튼 테두리 둥글게 */
 } 

#btnLogin:hover {
  	background: #dde9ed;  /* 버튼 hover 색상 */ 
	outline: none;
	color: black;
}

.findIdRs-form label {
	color: #black;
	font-weight: normal;
}
	
</style>

<div class="findIdRs-form">
	
	<form>
	    <h3 style="text-align: center;">아이디 찾기</h3><br><br>
	       
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

<%@ include file="../../layout/footer.jsp" %>