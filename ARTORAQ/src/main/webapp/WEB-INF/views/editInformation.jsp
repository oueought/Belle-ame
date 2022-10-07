<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp"%>


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

      <h3 style="text-align: center; font-weight: bold;">회원정보 수정</h3>
		<hr class="line"><br><br>

		<form action="/join" method="post" class="form-horizontal">

			<div class="form">
				<div class="form-group">
					<div class="button-wrap">
			
					<label for="userpw" class="col-xs-2 control-label">비밀번호</label>
					<div class="col-xs-10">
						<input type="password" id="userpw" name="userpw" class="form-control" required>
					</div>
				</div>
				<br><br>

				<div class="form-group">
					<label for="userpwchk" class="col-xs-2 control-label">비밀번호
						확인</label>
					<div class="col-xs-10">
						<input type="password" id="userpwchk" name="userpwchk" class="form-control" required>
					</div>
				</div>
				<br>

				<div class="form-group">
					<label for="usernick" class="col-xs-2 control-label">닉네임</label>
					<div class="col-xs-10">
						<input type="text" id="usernick" name="usernick"
							class="form-control">
					</div>
				</div>
				<br>

				<div class="form-group">
					<div class="button-wrap">
						<label for="userphon" class="col-xs-2 control-label">휴대전화</label>
						<div class="col-xs-10">
							<input type="tel" id="userphon" name="userphon" class="form-control" required>
							<button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall" type="button">
								인증번호 받기</button>
						</div>
					</div>
				</div>
				<br>

				<div class="form-group">
					<div class="button-wrap">

						<label for="chknum" class="col-xs-2 control-label"></label>
						<div class="col-xs-10">
							<input type="text" id="chknum" name="chknum" class="form-control" required>
							<button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall" type="button">
								확인</button>
							</div>	
						</div>
					</div>
					<br>

					<div class="form-group">
						<label for="useremail" class="col-xs-2 control-label">이메일</label>
						<div class="col-xs-10">
							<input type="email" id="useremail" name="usermail"
								class="form-control"><br><br><br>
					<a style="font-weight: bold; font-size:13pt; text-decoration: underline;" href="">회원탈퇴</a>			
						</div>
					</div>
				</div>
			</div>
		</form>
		<br>
			<div class="button">
			<button type="submit" class="btn btn-block" id="join">저장</button><br>
			</div>
			<div class="button">
			<button type="submit" class="btn btn-block" id="cancel">취소</button>
			</div><br><br><br>
			


</body>


<%@ include file="../layout/footer.jsp"%>
