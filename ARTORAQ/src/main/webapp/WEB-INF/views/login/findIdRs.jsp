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
	
	$("#btnFindId").click(function() {
		$(location).attr('href', '/login/findid') //아이디 찾기 url 이동
	})
	
	$("#btnJoin").click(function() {
		$(location).attr('href', '/join') //회원가입 url 이동
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

#btnLogin, #btnFindId { 
	min-height: 50px;
	border: 2px solid #6aafe6;
	color: #6e6e6e;
}

#btnFindPw, #btnJoin {
 	min-height: 50px;
	border: 2px solid #a3a1a1;
	color: #6e6e6e;
}

#btnLogin:hover, #btnFindId:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
}

#btnFindPw:hover, #btnJoin:hover {
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

	<!-- 등록된 회원 정보가 없을 경우 -->
	<% if(session.getAttribute("findId") == null ) { %>
	<p style="text-align:center;">등록된 회원 정보가 없습니다</p><br>
	
	<button type="button" class="btn btn-block" id="btnFindId">아이디 찾기</button>
	<button type="button" class="btn btn-block" id="btnJoin">회원가입</button>
	<% } %>

	<!-- 등록된 회원 정보가 있을 경우 이름/아이디 보여주기 -->
	<% if(session.getAttribute("findId") != null && (boolean) session.getAttribute("findId") ) { %>
		<div class="form-group">
			<label for="memname">이름</label>
			<div class="pull-right">
				<%=session.getAttribute("memname") %>
			</div>
		</div><br>
		
		<div class="form-group">
			<label for="memid">아이디</label>
			<div class="pull-right">
				<%=session.getAttribute("memid") %>
			</div>
		</div><br>
		
		<button type="button" class="btn btn-block" id="btnLogin">로그인</button>
		<button type="button" class="btn btn-block" id="btnFindPw">비밀번호 찾기</button>
	<% } %>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>