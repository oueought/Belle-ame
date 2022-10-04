<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>

<!-- js -->
<script type="text/javascript">
    $(document).ready(function() {
            
        //아이디 입력창에 포커스주기
        $("input").eq(0).focus()
        
        //패스워드 입력창에 엔터키 입력 시 submit
        $("input").eq(1).keydown(function(e) {
            if( e.keyCode == 13 ) { //엔터키
                $("#btnLogin").click();
            }
        })
        
        //회원가입 버튼
        $("#btnJoin").click(function() {
            $(location).attr('href', '/join') //회원가입 url 이동
        })
        
        $("#userid").click(function () {
        	if($("#userid").val() == "") {
        		$("#userid").next('label').addClass('warning');
        	} else if ($("#userpw").val() == "") {
        		$("#userpw").next('label').addClass('warning');
        	}
        })

    })
</script>

<!-- css -->
<style>

	* {
		text-decoration: none;
	}
	
		.line {
		size: 40px;
		height: 1px;
		width: 50%;
		background: gray;
	}
	#content {
		margin-top: 90px;
		margin-bottom: 60px;
	}
	
	.warning {
		animation: warning .3s ease;
	}

</style>

<!-- 로그인 -->
<h1> git test</h1>

<div class="col-lg-4"></div>
<div class="col-lg-4" id="content">

	<form action="/login" method="post">
		
		<h3 style="text-align: center;">로그인</h3>
		<hr class="line">
		
	    <div class="form-group">
	        <label for="userid">아이디</label>
	        <input type="text" id="userid" name="userid" class="form-control">
	    </div>
	
	    <div class="form-group">
	        <label for="userpw">패스워드</label>
	        <input type="password" id="userpw" name="userpw" class="form-control">
	    </div>
	
	    <div class="row">
	    	<div class="col-lg-6 text-lg-start">
	        	<input type="checkbox" id="checkId" name="checkId" value="remember-me">
	        	<label for="checkId">아이디 저장</label>
			</div>
			
	        <div class="col-lg-6 text-lg-end text-center">
	            <a href="/login/findid">아이디 찾기</a> | 
	            <a href="/login/findpw">비밀번호 찾기</a>
	        </div>
	    </div>
	
	    <div class="form-group">
	        <button type="submit" class="btn btn-lg btn-outline-secondary btn-block" id="btnLogin">로그인</button><br>
	        <button type="button" class="btn btn-lg btn-danger btn-block" id="btnJoin">회원가입</button>
	    </div>
	
	</form>
</div>

<%@ include file="../../layout/footer.jsp" %>