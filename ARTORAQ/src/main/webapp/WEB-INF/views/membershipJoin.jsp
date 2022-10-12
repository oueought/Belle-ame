<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<%@ include file="../layout/header.jsp"%>

<script type="text/javascript">
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
	width: 60%;
	display: inline;
}
.form {
	padding-left: 200px;
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
#join { 
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
#join:hover {
    background: #6aafe6;
   outline: none;
   color: white;
}
.button {
	width: 30%
}
</style>

<body>
<div class="container">
      <h3 style="text-align: center; font-weight: bold;">회원가입</h3>
		<hr class="line"><br><br>

		<form action="/join" method="post" accept-charset="utf-8">

			<div class="form">
				<div class="form-group">
					<div class="button-wrap">
						<label for="userid" class="col-xs-2 control-label">아이디</label>
						<div class="col-xs-10">
							<input type="text" id="customer_id" name="customer_id" class="form-control" placeholder="5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능" required>
							<button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall" type="button">
								중복확인</button>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="userpw" class="col-xs-2 control-label">비밀번호</label>
					<div class="col-xs-10">
						<input type="password" id="customer_pw" name="customer_pw" class="form-control" placeholder="8~16자 영문 대 소문자, 숫자, 특수문자 사용가능" required><br><br>
					</div>
				</div>
				<br>

				<div class="form-group">
					<label for="userpwchk" class="col-xs-2 control-label">비밀번호
						확인</label>
					<div class="col-xs-10">
						<input type="password" id="customer_pwchk" name="customer_pwchk" class="form-control" required><br><br>
					</div>
				</div>
				<br>

				<div class="form-group">
					<label for="username" class="col-xs-2 control-label">이름</label>
					<div class="col-xs-10">
						<input type="text" id="customer_name" name="customer_name"
							class="form-control" required><br> <br>
					</div>
				</div>
				<br> <br> <br>
					<div class="form-group">
						<label for="usernick" class="col-xs-2 control-label">닉네임</label>
						<div class="col-xs-10">
							<input type="text" id="customer_nickname"
								name="customer_nickname" class="form-control"><br>
							<br>
						</div>
					</div>
					<br>

					<div class="form-group">
						<div class="button-wrap">
							<label for="userphon" class="col-xs-2 control-label">휴대전화</label>
							<div class="col-xs-10">
								<input type="tel" id="customer_phone" name="customer_phone"
									class="form-control" placeholder="전화번호 입력" required>
								<button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall"
									type="button">인증번호 받기</button>
								<br>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="button-wrap">

							<label for="chknum" class="col-xs-2 control-label"></label>
							<div class="col-xs-10">
								<input type="text" id="customer_chknum" name="customer_chknum"
									class="form-control" placeholder="인증번호를 입력하세요." required>
								<button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall"
									type="button">확인</button>
								<br>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="useremail" class="col-xs-2 control-label">이메일</label>
						<div class="col-xs-10">
							<input type="email" id="customer_email" name="customer_email"
								class="form-control"><br>
						</div>
					</div><br><br><br>
				<div class="form-group">
					<label for="customer_birth" class="col-xs-2 control-label">생년월일</label>&nbsp;&nbsp;&nbsp;
					<tr>
						<td><input type="date" name="customer_birth" style="height: 35px; width: 100px; margin: auto;"></td>
					</tr>
				</div>
				</div>
				<br><br><br><br>
			<div class="button">
			<button type="submit" class="btn btn-block" id="join">회원가입</button><br>
			</div>
			<div class="button">
			<button type="button" class="btn btn-block" id="cancel">취소</button>
			</div><br><br><br>
		</form>
</div>
			
</body>


<%@ include file="../layout/footer.jsp"%>
