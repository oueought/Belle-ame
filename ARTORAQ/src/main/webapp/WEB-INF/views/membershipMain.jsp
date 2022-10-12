<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
	$("#btnjoin").click(function() {
		$(location).attr('href', '/join') //회원가입 url 이동
	})
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
      
 <a href="javascript:kakaoLogin();"><img src="/image/kakao_login.png" alt="카카오계정 로그인" style="height: 50px; width:420px;"/></a>

    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        window.Kakao.init('f0ecbc1d9d75323d4f82f073f14941c7');

        
        function kakaoLogin() {
            window.Kakao.Auth.login({
//                 scope: 'profile, account_email, gender, age_range, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                scope: 'profile_image, account_email, gender, age_range, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account)
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
</body>
      <hr>
      <div class="button">
         <button type="button" class="btn btn-block" id="btnjoin">일반 회원가입</button>
      </div>
      </form>
</div>

</body>

<%@ include file="../layout/footer.jsp" %>