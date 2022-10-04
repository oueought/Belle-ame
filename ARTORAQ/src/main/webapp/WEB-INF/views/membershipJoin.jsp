<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp"%>

<script type="text/javascript">

var agreeAll = document.querySelector("input[name=agreeAll]").checked;
var agree = document.querySelector("input[name=agree]").checked;

console.log(agreeAll);
console.log(agree;)

//동의 모두선택 / 해제
const agreeChkAll = document.querySelector('input[name=agree_all]');
    agreeChkAll.addEventListener('change', (e) => {
    let agreeChk = document.querySelectorAll('input[name=agree]');
    for(let i = 0; i < agreeChk.length; i++){
      agreeChk[i].checked = e.target.checked;
    }
});
    
</script>    

<style type="text/css">
.SignUp {
	margin: auto;
	left: 555px;
	width: 100px;
	height: 69px;
}

.line {
	size: 40px;
	height: 1px;
	width: 50%;
	background: gray;
}

.wrapper {
	max-width: 1024px;
	width: 90%;
	margin: 0 auto;
}

.form-control {
	width: 40%;
}

.form {
	padding-left: 250px;
}

#joinbtn {
	width: 20%;
}

label {
  display: block;
}




</style>

<body>

	<div class="wrapper">
		<div class="SignUp">
			<div style="font-weight: bold; font-size: 24px;">회원가입</div>
			<br>
		</div>
		<hr class="line">
		<br>

		<form action="/join" method="post" class="form-horizontal">

			<div class="form">
				<div class="form-group">
					<label for="userid" class="col-xs-2 control-label">아이디</label>
					<div class="col-xs-10">
						<input type="text" id="userid" name="userid" class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label for="userpw" class="col-xs-2 control-label">비밀번호</label>
					<div class="col-xs-10">
						<input type="password" id="userpw" name="userpw"
							class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label for="userpwchk" class="col-xs-2 control-label">비밀번호
						확인</label>
					<div class="col-xs-10">
						<input type="password" id="userpwchk" name="userpwchk"
							class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label for="username" class="col-xs-2 control-label">이름</label>
					<div class="col-xs-10">
						<input type="text" id="username" name="username"
							class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label for="usernick" class="col-xs-2 control-label">닉네임</label>
					<div class="col-xs-10">
						<input type="text" id="usernick" name="usernick"
							class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label for="userphon" class="col-xs-2 control-label">휴대전화</label>
					<div class="col-xs-10">
						<input type="tel" id="userphon" name="userphon"
							class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label for="chknum" class="col-xs-2 control-label"></label>
					<div class="col-xs-10">
						<input type="text" id="chknum" name="chknum" class="form-control">
					</div>
					<br> <br> <br>

					<div class="form-group">
						<label for="useremail" class="col-xs-2 control-label">이메일</label>
						<div class="col-xs-10">
							<input type="email" id="useremail" name="usermail"
								class="form-control">
						</div>
					</div>
				</div>
			</div>
		</form>
			<label for="agree_all">
			  <input type="checkbox" name="agree_all" id="agree_all">
			  <span>모두 동의합니다</span>
			</label>
			<label for="agree">
			  <input type="checkbox" name="agree" value="1">
			  <span>이용약관 동의<strong>(필수)</strong></span>
			</label>
			<label for="agree">
			  <input type="checkbox" name="agree" value="2">
			  <span>개인정보 수집, 이용 동의<strong>(필수)</strong></span>
			</label>
			<label for="agree">
			  <input type="checkbox" name="agree" value="3">
			  <span>개인정보 이용 동의<strong>(필수)</strong></span>
			</label>
			<label for="agree">
			  <input type="checkbox" name="agree" value="4">
			  <span>이벤트, 혜택정보 수신동의<strong class="select_disable">(선택)</strong></span>
			</label>

			<button type="button" class="btn btn-outline-dark btn-block"
				id="joinbtn">회원가입</button>
			<button type="button" class="btn btn-outline-secondary">취소</button>
			
			
		</div>


</body>


<%@ include file="../layout/footer.jsp"%>
