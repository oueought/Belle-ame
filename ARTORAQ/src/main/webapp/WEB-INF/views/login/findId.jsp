<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>

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

<style>

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
	border-radius: 2px;
	min-height: 40px;
	transition: all 0.5s;
	outline: none;
}

#btnLoginCk { 
  	background-color: #ffffff; /* 버튼 색상 */ 
 	font-size: 16px; 
 	min-height: 50px;
	border: 3px solid #6aafe6;
	border-radius: 15px; /* 버튼 테두리 둥글게 */
	color: #6e6e6e;
} 

#btnLoginCk:hover {
  	background: #6aafe6;  /* 버튼 hover 색상 */ 
	outline: none;
	color: white;
	font-weight: bold;
}

.findId-form label {
	color: #black;
	font-weight: normal;
}

</style>

<!-- 아이디 찾기 -->
<div class="findId-form">
	<form action="/login/findid" method="post">
	
        <h3 style="text-align: center;">아이디 찾기</h3><br><br>
        
		<div class="form-group">
			<label for="username">이름</label>
			<input type="text" class="form-control" id="username" required>
		</div>
		
		<div class="form-group">
			<label for="userph">휴대폰 번호</label>
			<input type="text" class="form-control" id="userph" required>
		</div>
		
		<button type="submit" class="btn btn-block" id="btnLoginCk">아이디 찾기</button>
		
	</form>
</div>


<%@ include file="../../layout/footer.jsp" %>