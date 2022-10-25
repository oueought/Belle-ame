<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>ARTORAQ</title>
<%@ include file="../layout/header.jsp" %>


<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>    

<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
	$("#btnjoin").click(function() {
		$(location).attr('href', '/join') //회원가입 url 이동
	})
})

    //카카오톡으로 로그인 버튼 클릭시 카카오 로그인 실행
    $("#btnKakao").click(function() {
    	kakaoLogin();
    	$(location).attr('href', 'javascript:void(0)')
    })

</script>

<!-- css -->
<style type="text/css">

.line {
/*    size: 40px; */
   height: 1px;
/*    width: 40%;   */
   background: gray;
}

.SignUp { 
   width: 500px;   
   margin: 0 auto;
   padding: 40px 0;
}
   
.SignUp form {
   background: #fff;
   padding: 40px;
   border-radius: 0px;
}
   
.SignUp h3 {
   text-align: center;
   margin: 0 0 15px;
}
   
.SignUp .form-control, .SignUp .btn  {        
/*    border-radius: 2px; */
   min-height: 40px;
   transition: all 0.3s;
   outline: none;
}

.SignUp .btn { 
   background-color: white; /* 버튼 색상 */ 
   font-size: 16px; 
   min-height: 50px;
   border: 3px solid #6aafe6;
   border-radius: 0px; /* 버튼 테두리 둥글게 */
 }
 
#btnjoin {
   background-color: white; /* 버튼 색상 */ 
   font-size: 16px; 
   min-height: 50px;
   border: 3px solid #a3a1a1;
}

/* 일반 회원가입 hover색상 */
#btnjoin:hover {
   background: #a3a1a1;  /* 버튼 hover 색상 */ 
   outline: none;
   color: white;
}

</style>

<body>

<div class="SignUp">
      <h3 style="text-align: center; font-weight: bold;">회원가입</h3>
         <hr class="line">
   <form>
      <div class="SNS">
      <p style="font-size:14px; text-align: center; font-weight: bold;">SNS 계정으로 간편 회원가입</p>
      </div><br>
      	<a href="javascript:kakaoLogin();">
         <img src="https://ifh.cc/g/7XpWOg.png" alt="카카오계정 로그인" style="height: 50px; width:420px;"/></a>
         
			<!-- 카카오 로그인 API -->
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
			<script type="text/javascript">
				Kakao.init('07342ca3cd0f77a0ba1a1383fb5a9435'); //카카오 로그인 API 앱 키
				console.log(Kakao.isinitialized()); //sdk초기화여부판단

				//카카오로그인
				function kakaoLogin() {
					Kakao.Auth.login({
						success : function(response) {
							Kakao.API.request({
								url : '/v2/user/me',
								success : function(response) {
									console.log(response)
								},
								fail : function(error) {
									console.log(error)
								},
							})
						},
						fail : function(error) {
							console.log(error)
						},
					})
				}
			</script></body>
      <hr>
      <div class="button">
         <button type="button" class="btn btn-block" id="btnjoin">일반 회원가입</button>
      </div>
      </form>
</div>

</body>

<%@ include file="../layout/footer.jsp" %>