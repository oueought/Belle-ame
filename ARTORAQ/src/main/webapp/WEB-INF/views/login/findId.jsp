<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
        
    //이름 입력창에 포커스주기
    $("input").eq(0).focus()
    
    //휴대폰 번호 입력창에 엔터키 입력 시 submit
    $("input").eq(1).keydown(function(e) {
        if( e.keyCode == 13 ) { //엔터키
            $("#btnFindId").click();
        }
    })
})

</script>

<!-- css -->
<style type="text/css">

.findId-form > h3 {
	font-weight: bold;
}

.findId-form > hr {
	height: 1px;
	background: gray;
}

.findId-form { 
	width: 500px;   
	margin: 0 auto;
	padding: 40px 0;
}
   
.findId-form form {
	padding: 40px;
	border-radius: 6px;
}
   
.findId-form h3 {
	text-align: center;
	font-size: 30px;
	margin: 0 0 15px;
}
   
.findId-form .form-group {
	margin-bottom: 20px;
}

.findId-form .form-control, .findId-form .btn  {        
	border-radius: 0px;
	min-height: 40px;
	transition: all 0.3s;
	outline: none;
}

#btnLoginCk { 
  	background-color: #ffffff; /* 버튼 색상 */ 
 	font-size: 16px; 
 	min-height: 50px;
	border: 2px solid #6aafe6;
	color: #6e6e6e;
} 

#btnLoginCk:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
}

.findId-form label {
	color: #black;
	font-weight: normal;
}

</style>

<!-- 아이디 찾기 -->
<div class="findId-form">
	<h3 style="text-align: center;">아이디 찾기</h3><hr>

	<form action="/login/findid" method="post">
		<div class="form-group">
			<label for="customer_name">이름</label>
			<input type="text" class="form-control" id="customer_name" name="customer_name" required>
		</div>
		
		<div class="form-group">
			<label for="customer_phone">휴대폰 번호</label>
			<input type="text" class="form-control" id="customer_phone" name="customer_phone" required>
		</div>
		
		<button type="submit" class="btn btn-block" id="btnLoginCk">아이디 찾기</button>
		
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>