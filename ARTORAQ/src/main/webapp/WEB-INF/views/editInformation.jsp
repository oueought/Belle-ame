<%@page import="dto.Member"%>
<%@page import="membership.dao.face.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>



<script type="text/javascript">

// $(document).ready(function() {
// 	$("#save").click(function() {	//저장버튼 클릭시
// 		$(location).attr('href', '') //마이페이지 메인링크
// 	})
// })

//취소 버튼
$("#cancel").click(function() {
//		history.go(-1) //뒤로가기
	$(location).attr('href', '/main') //메인으로 가기
	})
})


</script>


<style type="text/css">


.line {
/*    	size: 40px;    */
	height: 1px;
   	width: 30%;   
	background: gray;
}

.form-control {
	width: 40%;
	display: inline;
}

.form {
	padding-left: 400px;
}

.label {
	display: block;
}

.button-wrap {
	width: 100%;
	display: inline-block;
}

/* 버튼 css */

.w-btn-gray-outline {
    border: 2px solid #a3a1a1;
    color: #6e6e6e;
}

.w-btn-outline {
    position: relative;
    border-radius: 0px;
    font-family: "paybooc-Light", sans-serif;
    text-decoration: none;
    font-weight: 600;
}

.btnsmall {
    padding: 3.5px 4px;
    margin: 5px;
}


/* 하단 버튼 CSS */
#save { 
     background-color: white; /* 버튼 색상 */ 
    font-size: 16px; 
    min-height: 50px;
   border: 2px solid #6aafe6;
   border-radius: 0px; /* 버튼 테두리 둥글게 */
 }
 
#cancel {
   background-color: white; /* 버튼 색상 */ 
    font-size: 16px; 
    min-height: 50px;
   border: 2px solid #a3a1a1;
   border-radius: 0px; /* 버튼 테두리 둥글게 */
}

/* 취소 hover색상 */
#cancel:hover {
     background: #a3a1a1;  /* 버튼 hover 색상 */ 
   outline: none;
   color: white;
}

/* 회원가입 hover색상 */
#save:hover {
    background: #6aafe6;
   outline: none;
   color: white;
}

.button {
	width: 30%
}
</style>

<body>

      <h3 style="text-align: center; font-weight: bold;">회원정보 수정</h3>
		<hr class="line"><br><br>

		<form action="/editinformation" method="post" class="form-horizontal">

			<div class="form">
				<div class="form-group">
					<div class="button-wrap">
			
					<label for="mempw" class="col-xs-2 control-label">비밀번호</label>
					<div class="col-xs-10">
						<input type="password" id="mempw" name="mempw" class="form-control" placeholder="8~16자 영문 대 소문자, 숫자, 특수문자 사용가능" required>
					</div>
				</div>
				<br><br>

				<div class="form-group">
					<label for="mempwchk" class="col-xs-2 control-label">비밀번호
						확인</label>
					<div class="col-xs-10">
						<input type="password" id="mempwchk" name="mempwchk" class="form-control" required>
					</div>
				</div>
				<br>

				<div class="form-group">
					<label for="memnick" class="col-xs-2 control-label">닉네임</label>
					<div class="col-xs-10">
						<input type="text" id="memnick" name="memnick"
							class="form-control">
					</div>
				</div>
				<br>

				<div class="form-group">
					<div class="button-wrap">
						<label for="memphone" class="col-xs-2 control-label">휴대전화</label>
						<div class="col-xs-10">
							<input type="tel" id="memphonephone" name="memphonephone" class="form-control" placeholder="전화번호 입력 ( ex 010-0000-0000)" required>
							<button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall" type="button">
								인증번호 받기</button>
						</div>
					</div>
				</div>
				<br>

				<div class="form-group">
					<div class="button-wrap">

						<label for="customer_chknum" class="col-xs-2 control-label"></label>
						<div class="col-xs-10">
							<input type="text" id="custsomer_chknum" name="custsomer_chknum" class="form-control" placeholder="인증번호를 입력하세요." required>
							<button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall" type="button">
								확인</button>
							</div>	
						</div>
					</div>
					<br>

					<div class="form-group">
						<label for="custsomer_email" class="col-xs-2 control-label">이메일</label>
						<div class="col-xs-10">
							<input type="email" id="customer_email" name="customer_email"
								class="form-control"><br><br><br>
					<a href="/withdrawal" style="font-weight: bold; font-size:13pt; text-decoration: underline;">회원탈퇴</a>			
						</div>
					</div>
				</div>
			</div>		
			<div class="button">
			<button type="submit" class="btn btn-block" id="save">저장</button><br>
			</div>
			<div class="button">
			<button type="button" class="btn btn-block" id="cancel">취소</button>
			</div><br><br><br>
		</form>
		<br>
			


</body>


<%@ include file="../layout/footer.jsp"%>
