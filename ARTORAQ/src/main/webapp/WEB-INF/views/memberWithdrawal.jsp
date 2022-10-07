<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

<style type="text/css">


.line {
/* 	size: 40px; */
	height: 1px;
	width: 30%;
	background: gray;
}

.text {
	text-align: center;
	font-size: 13px;
	font-weight: bold;
}

.button {
	width: 30%
}

#withdrawing { 
     background-color: white; /* 버튼 색상 */ 
    font-size: 16px; 
    min-height: 50px;
   border: 3px solid #6aafe6;
   border-radius: 0px; /* 버튼 테두리 둥글게 */
 }
 
#cancel {
   background-color: white; /* 버튼 색상 */ 
    font-size: 16px; 
    min-height: 50px;
   border: 3px solid #a3a1a1;
   border-radius: 0px; /* 버튼 테두리 둥글게 */
}

/* 취소 hover색상 */
#cancel:hover {
     background: #a3a1a1;  /* 버튼 hover 색상 */ 
   outline: none;
   color: #e3dede;
}

/* 탈퇴하기 hover색상 */
#withdrawing:hover {
    background: #6aafe6;
   outline: none;
   color: d4dfe6;
}

</style>


<body>

		<h3 style="text-align: center; font-weight: bold;">회원탈퇴</h3>
	<hr class="line">
	<br><br><br>

	<div class="message">
	<div class="text">
	탈퇴시 회원님의 모든 정보가 삭제되며, 이후 복구가 불가능합니다.<br><br>
	</div>
	<div class="text">
	탈퇴하시겠습니까?<br><br>
	</div>
	</div><br>
	
	<div class="button">
			<button type="submit" class="btn btn-block" id="withdrawing">탈퇴하기</button><br>
			</div>
			<div class="button">
			<button type="submit" class="btn btn-block" id="cancel">취소</button>
			</div><br><br><br>

</body>

<%@ include file="../layout/footer.jsp"%>
