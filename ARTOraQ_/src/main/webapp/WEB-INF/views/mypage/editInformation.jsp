<%@page import="dto.join.Member"%>
<%@page import="dao.join.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

 <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script> 

<%@ include file="../layout/header.jsp"%>


<script type="text/javascript">

$(document).ready(function() {
        
   //취소 버튼
   $("#cancel").click(function() {
   //      history.go(-1) //뒤로가기
      $(location).attr('href', '/artoraq/main') //메인으로 가기
   })
   
    //휴대폰 번호 자동 하이픈 추가 
    $("#memphone").keydown(function(event) {   //입력창에 숫자 입력
        var key = event.charCode || event.keyCode || 0;
        $text = $(this); 
       
        if (key !== 8 && key !== 9) {
            if ($text.val().length === 3) {
                $text.val($text.val() + '-');
            }
            if ($text.val().length === 8) {
                $text.val($text.val() + '-');
            }
        };
    })

   
    
    // 저장 전 유효성 검사
    $('#save').click(function(e) {
       
      //저장 전에 입력한 항목이 규칙에 따라 정확히 입력되어있는지 확인하기 위해       
       // submit 이벤트 막아주기
       e.preventDefault();
       
      // 비밀번호 입력 값 가져오기
       var pw = $('#mempw').val();
      
       // 비밀번호 확인 입력 값 가져오기
       var confirmPw = $('#mempwchk').val();
       
       // 닉네임 입력 값 가져오기
       var nickname =  $('#memnick').val();
       
       // 핸드폰번호 입력 값 가져오기
       var phone =  $('#memphone').val();
       
       //이메일 입력 값 가져오기
       var email = $('#mememail').val();
      
              
       // 정규식 일치여부 등을 저장할 회원가입 혹은 회원정보 수정의 항목 success 변수 정의하기
       var pwSucc ; 
       var confirmPwSucc ;
       var nicknameSucc ;
       var phoneSucc ;
       var emailSucc ;
       
       // 정규식 등으로 정확히 입력했는지, 입력하지 않았다면 띄울 문구와 해당 엘리먼트에 focus 지정하기
      
       let reg_pw2 = /(?=.*[a-zA-ZS])(?=.*?[#?!@$%^&*-]).{8,16}/; // 문자와 특수문자 조합의 8~16 자리
       let reg_nickname1 = /^[가-힣]+$/; // 한글만
       let reg_mobile = /^\d{3}-\d{3,4}-\d{4}$/; // 휴대폰 번호
       let reg_email =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/; // (이메일) 길이까지 확실한 검증
          
    
          //pw 체크
          if(pw.length > 17 || pw.length < 7){
             $('#mempw').focus()
             $('#pwMsg').text('비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자')
          
             
          }else{
             pwSucc = true;
             confirmPwSucc = true;
             nicknameSucc = true;
             phoneSucc = true;
             emailSucc = true;
          }
       
       
       // 모든 항목에 정상 값을 입력했을 경우 모든 success변수가 true라면 submit

      if(pwSucc && confirmPwSucc && nicknameSucc && phoneSucc && emailSucc){
       // 폼 엘리먼트.submit();
        $('#saveForm').submit(); 
        
      }
    
 })
   
 })
    
 </script>


<style type="text/css">

.errorMsg {
color:red;
}

.line {
/*       size: 40px;    */
   height: 1px;
      width: 30%;   
   background: gray;
}

.form-control {
   width: 40%;
   display: inline;
}

.form {
   padding-left: 400px;
}

.label {
   display: block;
}

.button-wrap {
   width: 100%;
   display: inline-block;
}

/* 버튼 css */

.w-btn-gray-outline {
    border: 2px solid #a3a1a1;
    color: #6e6e6e;
}

.w-btn-outline {
    position: relative;
    border-radius: 0px;
    font-family: "paybooc-Light", sans-serif;
    text-decoration: none;
    font-weight: 600;
}

.btnsmall {
    padding: 3.5px 4px;
    margin: 5px;
}


/* 하단 버튼 CSS */
#save { 
     background-color: white; /* 버튼 색상 */ 
    font-size: 16px; 
    min-height: 50px;
   border: 2px solid #6aafe6;
   border-radius: 0px; /* 버튼 테두리 둥글게 */
 }
 
#cancel {
   background-color: white; /* 버튼 색상 */ 
    font-size: 16px; 
    min-height: 50px;
   border: 2px solid #a3a1a1;
   border-radius: 0px; /* 버튼 테두리 둥글게 */
}

/* 취소 hover색상 */
#cancel:hover {
     background: #a3a1a1;  /* 버튼 hover 색상 */ 
   outline: none;
   color: white;
}

/* 회원가입 hover색상 */
#save:hover {
    background: #6aafe6;
   outline: none;
   color: white;
}

.button {
   width: 30%
}
</style>

<body>

      <h3 style="text-align: center; font-weight: bold;">회원정보 수정</h3>
      <hr class="line"><br><br>

      <form id="saveForm" action="/editinformation" method="post" class="form-horizontal">

         <div class="form">
            <div class="form-group">
               <div class="button-wrap">
                  <input type="hidden" name="memid" value="<%=session.getAttribute("memid") %>">
               <label for="mempw" class="col-xs-2 control-label">비밀번호</label>
               <div class="col-xs-10">
                  <input type="password" id="mempw" name="mempw" class="form-control" >
                 <span id="pwMsg" class="errorMsg"></span>    
               </div>
            </div>
            <br><br>

            <div class="form-group">
               <label for="mempwchk" class="col-xs-2 control-label">비밀번호
                  확인</label>
               <div class="col-xs-10">
                  <input type="password" id="mempwchk" name="mempwchk" class="form-control" >
               </div>
            </div>
            <br>

            <div class="form-group">
               <label for="memnick" class="col-xs-2 control-label">닉네임</label>
               <div class="col-xs-10">
                  <input type="text" id="memnick" name="memnick"
                     class="form-control">
               </div>
            </div>
            <br>

            <div class="form-group">
               <div class="button-wrap">
                  <label for="memphone" class="col-xs-2 control-label">휴대폰
                     번호</label>
                  <div class="col-xs-10">
                     <input type="text" class="form-control" id="memphone"
                        name="memphone" maxlength="13" >
                     <button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall"
                        type="button">인증번호 받기</button>
                  </div>
               </div>
            </div>
            <br>

            <div class="form-group">
               <div class="button-wrap">

                  <label for="customer_chknum" class="col-xs-2 control-label"></label>
                  <div class="col-xs-10">
                     <input type="text" id="custsomer_chknum" name="custsomer_chknum" class="form-control" placeholder="인증번호를 입력하세요.">
                     <button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall" type="button">
                        확인</button>
                     </div>   
                  </div>
               </div>
               <br>

               <div class="form-group">
                  <label for="mememail" class="col-xs-2 control-label">이메일</label>
                  <div class="col-xs-10">
                     <input type="email" id="mememail" name="mememail"
                        class="form-control"><br><br><br>
               <a href="/withdrawal" style="font-weight: bold; font-size:13pt; text-decoration: underline;">회원탈퇴</a>         
                  </div>
               </div>
            </div>
         </div>      
         <div class="button">
         <button type="button" class="btn btn-block" id="save">저장</button><br>
         </div>
         <div class="button">
         <button type="button" class="btn btn-block" id="cancel">취소</button>
         </div><br><br><br>
      </form>
      <br>
         


</body>


<%@ include file="../layout/footer.jsp"%>