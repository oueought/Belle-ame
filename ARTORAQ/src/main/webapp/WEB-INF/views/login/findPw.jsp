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

	#content {
		margin-top: 90px;
		margin-bottom: 60px;
	}
	
</style>

<div class="col-lg-4"></div>
<div class="col-lg-4" id="content">

	<form action="/login/findid" method="post">
		
		<h3 style="text-align: center;">비밀번호 재설정</h3><hr>
		
		<span style="text-align: center;">
			<p>등록하신 회원 아이디와</p>
			<p>인증번호를 받으실 휴대폰 번호를 입력해주세요.</p>
		</span><br>
	
	    <div class="form-group">
	        <label for="userid">아이디</label>
	        <input type="text" id="userid" name="userid" class="form-control">
	    </div>
	
	    <div class="form-group">
	        <label for="userpw">휴대폰 번호</label>
	        <input type="text" id="userph" name="userph" class="form-control">
	    </div>
	
	    <div class="form-group">
	        <button type="submit" class="btn btn-lg btn btn-default btn-block" id="btnCk">확인</button>
	    </div>
	
	</form>
</div>
<%@ include file="../../layout/footer.jsp" %>