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
                $("#btnLogin").click();
            }
        })

    })
</script>

<h1>아이디 찾기</h1>
<hr>

<form action="/login/findid" method="post" class="form-horizontal col-md-3">

    <div class="form-group">
        <label for="userid">이름</label>
        <input type="text" id="userid" name="userid" class="form-control">
    </div>

    <div class="form-group">
        <label for="userpw">휴대폰 번호</label>
        <input type="text" id="userph" name="userph" class="form-control">
    </div>

    <div class="form-group">
        <button type="submit" class="btn btn-lg btn-primary btn-block" id="btnLogin">아이디 찾기</button>
    </div>

</form>

<%@ include file="../../layout/footer.jsp" %>