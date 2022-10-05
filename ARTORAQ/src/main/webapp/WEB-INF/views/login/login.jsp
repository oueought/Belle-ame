<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>

<!-- js -->
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
    
    //회원가입 버튼
    $("#btnJoin").click(function() {
        $(location).attr('href', '/join') //회원가입 url 이동
    })

})
</script>

<!-- css -->
<style>

.login-form { 
	width: 500px;   
	margin: 0 auto;
	padding: 40px 0;
}
   
.login-form form {
	background: #fff;
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
	border-radius: 2px;
	min-height: 40px;
	transition: all 0.5s;
	outline: none;
}

 .login-form .btn { 
  	background-color: #ffffff; /* 로그인 버튼 색상 */ 
 	font-size: 16px; 
 	min-height: 50px;
	border: 3px solid #1e6b7b;
	border-radius: 15px; /* 버튼 테두리 둥글게 */
 } 

#btnLogin:hover {
  	background: #dde9ed;  /* 로그인 버튼 hover 색상 */ 
	outline: none;
	color: black;
}

.login-form label {
	color: #black;
	font-weight: normal;
}

</style>

<!-- 로그인 -->
<div class="login-form">
	<form action="/login" method="post">
	
        <h3 style="text-align: center;">로그인</h3><br><br>
        
		<div class="form-group">
			<label for="userid">아이디</label>
			<input type="text" class="form-control" id="userpw" required>
		</div>
		
		<div class="form-group">
			<label for="userpw">패스워드</label>
			<input type="password" class="form-control" id="userpw" required>
		</div>
		
		
	    <div class="row">
	    	<div class="col-lg-6 text-lg-start">
	        	<input type="checkbox" id="checkId" name="checkId" value="remember-me">
	        	<label for="checkId" class="checkId">아이디 저장</label>
			</div>
			
	        <div class="col-lg-6 text-lg-end text-center">
	            <p><a href="/login/findid">아이디 찾기</a> |
	            <a href="/login/findpw">비밀번호 찾기</a></p>
	        </div>
		</div>
		
		<button type="submit" class="btn btn-block" id="btnLogin">로그인</button>
		
	</form>
</div>

<%@ include file="../../layout/footer.jsp" %>