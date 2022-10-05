<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>

<!-- js -->
<script type="text/javascript">
    $(document).ready(function() {
            
        //아이디 입력창에 포커스주기
        $("input").eq(0).focus()
        
        //휴대폰 번호 입력창에 엔터키 입력 시 submit
        $("input").eq(1).keydown(function(e) {
            if( e.keyCode == 13 ) { //엔터키
                $("#btnCk").click();
            }
        })

    })
</script>

<!-- css -->

<style>

.findPw-form { 
	width: 500px;   
	margin: 0 auto;
	padding: 40px 0;
}
   
.findPw-form form {
	padding: 40px;
	border-radius: 6px;
}
   
.findPw-form h3 {
	text-align: center;
	font-size: 30px;
	margin: 0 0 15px;
}
   
.findPw-form .form-group {
	margin-bottom: 20px;
}

.findPw-form .form-control, .findPw-form .btn  {        
	border-radius: 2px;
	min-height: 40px;
	transition: all 0.5s;
	outline: none;
}

#btnFindPw { 
  	background-color: #ffffff; /* 버튼 색상 */ 
 	font-size: 16px; 
 	min-height: 50px;
	border: 3px solid #6aafe6;
	border-radius: 15px; /* 버튼 테두리 둥글게 */
	color: #6e6e6e;
 } 

#btnFindPw:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
	font-weight: bold;
}

.findPw-form label {
	color: #black;
	font-weight: normal;
}

p {
	text-align: center;
}

</style>

<!-- 비밀번호 재설정 -->
<div class="findPw-form">
	<form action="/login/findpw" method="post">
	
        <h3 style="text-align: center;">비밀번호 재설정</h3><br><br>
        
        <div>
        	<p>등록하신 회원 아이디와</p>
       		<p>인증번호를 받으실 휴대폰 번호를 입력해주세요.</p><br>
		</div>
		
		<div class="form-group">
			<label for="userid">아이디</label>
			<input type="text" class="form-control" id="userid" required>
		</div>
		
		<div class="form-group">
			<label for="userph">휴대폰 번호</label>
			<input type="text" class="form-control" id="userph" required>
		</div>
		
		<button type="submit" class="btn btn-block" id="btnFindPw">확인</button>
		
	</form>
</div>

<%@ include file="../../layout/footer.jsp" %>