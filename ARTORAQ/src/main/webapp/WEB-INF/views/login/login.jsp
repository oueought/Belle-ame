<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>
</head>
<body>
	
<!-- header include  -->
<%@ include file="../layout/header.jsp" %>

<!-- 로그인 js -->
<script type="text/javascript">

$(document).ready(function() {
        
    //아이디 입력창에 포커스주기
    $("input").eq(0).focus()
    
    //패스워드 입력창에 엔터키 입력 시 submit
    $("input").eq(1).keydown(function(e) {
        if( e.keyCode == 13 ) { //엔터키
            $("#btnLogin").click();
        }
    })
})

</script>

<!-- 로그인 css -->
<style type="" >

.login-form > h3 {
	font-weight: bold;
}

.login-form > hr {
	height: 1px;
	background: gray;
}

.login-form { 
	width: 500px;   
	margin: 0 auto;
	padding: 40px 0;
}
   
.login-form form {
	padding: 40px;
	border-radius: 6px;
}
   
.login-form h3 {
	text-align: center;
	font-size: 30px;
	margin: 0 0 15px;
}
   
.login-form .form-group {
	margin-bottom: 20px;
}

.login-form .form-control, .login-form .btn  {        
	border-radius: 0px;
	min-height: 40px;
	transition: all 0.3s;
	outline: none;
}

#btnLogin { 
  	background-color: #ffffff; /* 로그인 버튼 색상 */ 
	border-radius: 0;
 	font-size: 16px; 
 	min-height: 50px;
	border: 2px solid #6aafe6;
	color: #6e6e6e;
 } 

#btnLogin:hover {
  	background: #6aafe6;  /* 로그인 버튼 hover 색상 */ 
	outline: none;
	color: white;
}

.login-form label {
	color: black;
	font-weight: normal;
}

</style>

<!-- 로그인 -->
<section>
<div class="container">
	<div class="login-form">
		<h3 style="text-align: center;">로그인</h3><hr>

		<form action="/login" method="post">
			<div class="form-group">
				<label for="userid">아이디</label>
				<input type="text" class="form-control" id="userpw" required>
			</div>
			
			<div class="form-group">
				<label for="userpw">패스워드</label>
				<input type="password" class="form-control" id="userpw" required>
			</div>
			
			<div class="remember">
				<div class="pull-left">
					<input type="checkbox" id="remember" >
					<label for="remember">아이디 저장</label>
				</div>
				
				<div class="pull-right">
					<a href="/login/findid" id="findId">아이디 찾기</a> |
					<a href="/login/findpw" id="findPw">비밀번호 찾기</a>
				</div>
			</div>
			
			<button type="submit" class="btn btn-block" id="btnLogin">로그인</button>
			
		</form>
	</div>
</div>
</section>


<!-- footer include -->
<%@ include file="../layout/footer.jsp" %>
</body>
</html>