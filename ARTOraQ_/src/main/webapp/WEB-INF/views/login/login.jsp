<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ARTORAQ</title>
</head>
<body>
	
<!-- header include  -->
<%@ include file="../layout/header.jsp" %>

<!-- jquery  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

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
  	
    //카카오톡으로 로그인 버튼 클릭시 카카오 로그인 실행
    $("#btnKakao").click(function() {
    	kakaoLogin();
    	$(location).attr('href', 'javascript:void(0)')
    })
    
})

</script>


<!-- 카카오 로그인 API -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
Kakao.init('de38421943e35b2dda8a0ae71d64c89e'); //카카오 로그인 API 앱 키
console.log(Kakao.isinitialized()); //sdk초기화여부판단

//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }

</script> <!-- 카카오 로그인 API end -->


<!-- 로그인 css -->
<style type="text/css" >

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

/* 카카오 로그인 버튼 */
#btnKakao {
	background: #ffffff;
	font-size: 16px;
	min-height: 50px;
	border: 2px solid #fee500;
	color: #6e6e6e;
}

#btnKakao:hover {	/* 카카오 로그인 버튼 hover */
	background: #fee500;
	outline: none;
	color: #000000;
}

/* 로그인 밑 <hr>태그 or */
.hr-or {
	display: flex;
	flex-basis: 100%;
	align-items: center;
	color: rgba(0, 0, 0, 0.35); /* 폰트 색상 */
	font-size: 12px;
	margin: 8px 0px;
}

.hr-or::before, .hr-or::after {
	content: "";
	flex-grow: 1;
	background: rgba(0, 0, 0, 0.35); /* hr선 색상 */
	height: 1px;
	font-size: 0px;
	line-height: 0px;
	margin: 0px 16px;
}

</style>

<!-- 로그인 -->

<section>
<div class="container">
	<div class="login-form">
		<h3 style="text-align: center;">로그인</h3><hr>

		<form action="/login" method="post">
			<div class="form-group">
				<label for="memid">아이디</label>
				<input type="text" class="form-control" id="memid" name="memid" required>
			</div>
			
			<div class="form-group">
				<label for="mempw">패스워드</label>
				<input type="password" class="form-control" id="mempw" name="mempw" required>
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
			
			<button type="submit" class="btn btn-block" id="btnLogin">로그인</button><br>
			
  			<div class="hr-or">or</div><br>
  					
			<a href="javascript:kakaoLogin();">
			<img src="https://ifh.cc/g/7XpWOg.png" alt="카카오계정 로그인" style="height: 50px; width:420px;"/></a>
			
		</form>
	</div>
</div>
</section>

<!-- footer include -->
<%@ include file="../layout/footer.jsp" %>
</body>
</html>