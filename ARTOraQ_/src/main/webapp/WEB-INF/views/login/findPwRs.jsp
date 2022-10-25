<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>ARTORAQ</title>

<%@ include file="../layout/header.jsp" %>

<!-- jquery  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

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

p {
	text-align: center;
}

.findPwRs-form > h3 {
	font-weight: bold;
}

.findPwRs-form > hr {
	height: 1px;
	background: gray;
}

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

#btnLogin, #btnFindPw { 
  	background-color: #ffffff;
 	font-size: 16px; 
 	min-height: 50px;
	border: 2px solid #6aafe6;
	color: #6e6e6e;
 } 

#btnLogin:hover, #btnFindPw:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
}

.findPwRs-form label {
	color: #black;
	font-weight: normal;
}

</style>

<!-- 비밀번호 찾기 -->
<div class="findPwRs-form">
	<h3 style="text-align: center;">비밀번호 찾기</h3><hr>

	
	<form action="/login/findpw" method="post">

		<!-- 등록된 회원 정보가 없을 경우 -->
		<% if(session.getAttribute("findPw") == null ) { %>
		<p style="text-align:center;">등록된 회원 정보가 없습니다</p>
		<p style="text-align:center;">아이디와 휴대폰 번호를 다시 확인해주세요.</p><br>
		
		<button type="button" class="btn btn-block" id="btnFindPw">비밀번호 찾기</button>
		<% } %>


		<!-- 등록된 회원 정보가 있을 경우 아이디/비밀번호 보여주기 -->
		<% if(session.getAttribute("findPw") != null && (boolean) session.getAttribute("findPw") ) { %>
		<div class="form-group">
			<label for="memid">아이디</label>
			<div class="pull-right">
				<%=session.getAttribute("memid") %>
			</div>
		</div><br>
		
		<div class="form-group">
			<label for="mempw">비밀번호</label>
			<div class="pull-right">
				<%=session.getAttribute("mempw") %>
			</div>
		</div><br>
		<button type="button" class="btn btn-block" id="btnLogin">로그인</button>
		<% } %>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>
