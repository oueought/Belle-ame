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

.line {
   size: 40px;
   height: 1px;
    width: 50%; 
   background: gray;
}

.SignUp { 
   width: 500px;   
   margin: 0 auto;
   padding: 40px 0;
}
   
.SignUp form {
   background: #fff;
   padding: 40px;
   border-radius: 6px;
}
   
.SignUp h3 {
   text-align: center;
   font-size: 30px;
   margin: 0 0 15px;
}
   
.SignUp .form-control, .SignUp .btn  {        
   border-radius: 2px;
   min-height: 40px;
   transition: all 0.5s;
   outline: none;
}


.SignUp .btn { 
   background-color: white; /* 버튼 색상 */ 
   font-size: 16px; 
   min-height: 50px;
   border: 3px solid #6aafe6;
   border-radius: 15px; /* 버튼 테두리 둥글게 */
 }
 
#btnjoin {
   background-color: white; /* 버튼 색상 */ 
   font-size: 16px; 
   min-height: 50px;
   border: 3px solid #a3a1a1;
   border-radius: 15px; /* 버튼 테두리 둥글게 */
}

/* 일반 회원가입 hover색상 */
#btnjoin:hover {
     background: #a3a1a1;  /* 버튼 hover 색상 */ 
   outline: none;
   color: #e3dede;
}

/* 카카오 회원가입 hover색상 */
#btnkakao:hover {
    background: #6aafe6;
   outline: none;
   color: d4dfe6;
}

</style>

<body>

<div class="SignUp">
   <form>
      <h3 style="text-align: center; font-weight: bold;">회원가입</h3>
   		<hr class="line"><br><br>
      <div class="SNS">
      <p style="font-size:14px; text-align: center; font-weight: bold;">SNS 계정으로 간편 회원가입</p>
      </div><br>
      
      <div class="button">
            <button type="submit" class="btn btn-block" id="btnkakao">카카오 1초 회원가입</button>
      </div>
      <hr class="line">
      
      <div class="button">
         <button type="submit" class="btn btn-block" id="btnjoin">일반 회원가입</button>
      </div>
   </form>
</div>

</body>

<%@ include file="../layout/footer.jsp" %>