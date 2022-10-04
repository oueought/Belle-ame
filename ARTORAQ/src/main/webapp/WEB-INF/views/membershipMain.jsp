<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp" %>

<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
	
    //회원가입 버튼
	$("#btnJoin").click(function() {
		$(this).parents("form").submit();
	})
}

</script>



<!-- css -->
<style type="text/css">

.SignUp {
	margin: auto;  
    left: 555px;
    width: 100px;
    height: 69px;
}

.SNS {
	margin: auto;  
	width: 500px;
	text-align: center;
	
}

.kakao {
 	font-size: 16px;
 	color: white;
 	margin: auto;
 	text-align: center;
 	line-height: 2.5em;
 	background-color: rgb(94, 94, 94);
 	border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
    width: 300px;
    height: 40px;
}

.normal {
 	font-size: 16px;
	color: rgb(64, 64, 64); 	
	text-align: center;
 	line-height: 2.5em;
 	background-color: rgb(224, 224, 224);
 	border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
    width: 300px;
    height: 40px;
}

.wrapper {
  max-width: 1024px;
  width: 90%;
  margin: 0 auto;
}

.line {
	size: 40px;
	height: 1px;
 	width: 50%; 
	background: gray;
}

#normal {
	width: 30%;
	margin: auto;
}



</style>

<body>

<div class="wrapper">
<div class="SignUp">
<div style="font-weight:bold; font-size:24px;">회원가입</div>
<br>
</div>
<hr class="line" >
<br>

<div class="SNS">
<p style="font-size:14px">SNS 계정으로 간편 회원가입</p>
</div>
<br>

<div class="kakao">카카오 1초 회원가입</div>
<br>
<hr class="line">

<br><br>
<button type="button" class="btn btn-outline-secondary btn-block" id="normal">일반 회원가입</button>

</div><br><br><br>
</body>



<%@ include file="../layout/footer.jsp" %>
