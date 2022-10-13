<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

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
<style type="text/css">

.findPw-form > h3 {
	font-weight: bold;
}

.findPw-form > hr {
	height: 1px;
	background: gray;
}

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
	transition: all 0.3s;
	outline: none;
}

#btnFindPw { 
  	background-color: #ffffff; /* 버튼 색상 */ 
 	font-size: 16px; 
 	min-height: 50px;
	border: 2px solid #6aafe6;
	color: #6e6e6e;
 } 

#btnFindPw:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
}

.findPw-form label {
	color: #black;
	font-weight: normal;
}

p {
	text-align: center;
}

</style>

<!-- 비밀번호 찾기 -->
<div class="findPw-form">
	<h3 style="text-align: center;">비밀번호 찾기</h3><hr>
	
	<form action="/login/findpw" method="post">
		<div class="form-group">
			<label for="memid">아이디</label>
			<input type="text" class="form-control" id="memid" name="memid" required>
		</div>
		
		<div class="form-group">
			<label for="memphone">휴대폰 번호</label>
			<input type="text" class="form-control" id="memphone" name="memphone" required>
		</div>
		
		<button type="submit" class="btn btn-block" id="btnFindPw">확인</button>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>