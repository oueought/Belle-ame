<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>


<style type="text/css">

.wrapper {
  max-width: 1024px;
  width: 90%;
  margin: 0 auto;
}

.SignUp {
	margin: auto;  
    left: 555px;
    width: 200px;
    height: 69px;
}

.line {
	size: 40px;
	height: 1px;
	width: 50%;
	background: gray;
}

.name {
 	font-size:14px;
 	font-weight:bold;
    width: 400px;
    height: 69px;
}

.form-group {
	width: 40%;
}


.w-btn-gray-outline {
    border: 3px solid #a3a1a1;
    color: #6e6e6e;
}

.w-btn-outline {
    position: relative;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.btnsmall {
    padding: 5px 10px;
    
}

.w-btn-outline:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}
.w-btn-gray-outline:hover {
    background-color: #a3a1a1;
    color: #e3dede;
}

.button {
	width: 100%;
}

</style>

<body>

<div class="wrapper">
<div class="SignUp">
<div style="font-weight:bold; font-size:24px;">마이 페이지</div>
</div>

<hr class="line" >
<br><br>

<div class="name">회원정보 수정</div>

<div class="psw-check">
	<div class="form-group">
	<p style="font-size: 13px; font-weight: bold;">보안을 위해 비밀번호를 재확인합니다.</p>
	<input type="password" id="passwordchk" name="passwordchk" class="form-control" required><br><br><br>
	<button class="w-btn-outline w-btn-gray-outline btn-sm button" type="button">확인</button>
</div>
	</div><br>
			
			
</div>
</body>

<%@ include file="../layout/footer.jsp"%>
