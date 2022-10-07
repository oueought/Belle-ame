<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
	$("#btnCancel").click(function() {
		$(location).attr('href', '#') //취소 버튼 클릭시 새로고침
	})
})

</script>

<style type="text/css">

.profile-form h3 {
	text-align: center;
	font-size: 30px;
	margin: 0 0 15px;
	font-weight: bold;
}
   
.profile-form {
	width: 500px;
	margin: 0 auto;
	padding: 40px 0;
}

.profile-form form {
	padding: 40px;
	border-radius: 6px;
}

.profile-form .form-group {
	margin-bottom: 20px;
}

.profile-form .form-control, .profile-form .btn  {        
	border-radius: 2px;
	min-height: 40px;
	transition: all 0.3s;
	outline: none;
}

/* 프로필 이미지 스타일 */
.profile-img {
	width: 150px;
	height: 150px;
	display: block;
	margin: auto;
}

/* 버튼 스타일 */
.btn {
  	background-color: #ffffff;
  	padding: 0 30px;
  	font-size: 16px;
  	margin: 0 5px;
}

#btnSave { 
  	background-color: #ffffff; 
	border: 2px solid #6aafe6;
 	min-height: 45px;
	color: #6e6e6e;
 } 

#btnSave:hover {
  	background: #6aafe6;
	outline: none;
	color: white;
}

#btnCancel {
 	min-height: 50px;
	border: 2px solid #a3a1a1;
 	min-height: 45px;
	color: #6e6e6e;
}

#btnCancel:hover {
  	background: #a3a1a1; 
	outline: none;
	color: white;
}

/* 파일업로드 삭제 버튼 */
.btnsmall {
	padding: 3.5px 4px;
}

#btnDelete {
	border: 2px solid #a3a1a1;
	color: black;
	position: relative;
	text-decoration: none;
  	line-height: normal;
  	font-weight: 500px;
}

/* 파일업로드 버튼 */
.filebox label {
  display: inline-block;
  padding: 3.5px 4px;
  background-color: #f0f0f0;
  cursor: pointer;
  border: 2px solid #a3a1a1;
  line-height: normal;
}

.filebox input[type="file"] { /* input[file] 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}

.profile-form > hr {
	height: 1px;
	background: gray;
}

</style>

<div class="profile-form">
	<h3 style="text-align: center;">마이 페이지</h3><hr><br>
	<p style="font-weight: bold;">프로필 관리</p>

	<form action="/mypage/profile" method="post" enctype="multipart/form-data"> <!-- 파일 업로드 form -->
		<div class="form-group">
			<p>프로필 이미지</p><br>
				<img src="/image/Profile-PNG-File.png" class="profile-img"><br>
			<div class="filebox">
				<label for="upload">파일선택</label>
				<input type="file" id="upload">
				<button type="button" class="btnsmall" id="btnDelete">삭제</button>
			</div>
		</div>
				
		<div class="form-group">
			<p>닉네임</p>
			<input type="text" class="form-control input-sm" id="usernick">
		</div>
	
		<br><br>
				
		<div class="text-center">
			<button type="submit" class="btn" id="btnSave">저장</button>
			<button type="button" class="btn" id="btnCancel">취소</button>
		</div>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>