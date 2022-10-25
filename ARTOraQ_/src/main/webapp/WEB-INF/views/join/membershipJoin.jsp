<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
   
   // 가입 전 유효성 검사
   $('#join').click(function(e) {
      
     //가입 전에 입력한 항목이 규칙에 따라 정확히 입력되어있는지 확인하기 위해       
      // submit 이벤트 막아주기
      e.preventDefault();

     // 아이디 입력 값 가져오기
     var id = $('#memid').val();
      
     // 비밀번호 입력 값 가져오기
      var pw = $('#mempw').val();
     
      // 비밀번호 확인 입력 값 가져오기
      var confirmPw = $('#mempwchk').val();
     
      // 이름 입력 값 가져오기
      var name =  $('#memname').val();
      
      // 닉네임 입력 값 가져오기
      var nickname =  $('#memnick').val();
      
      // 핸드폰번호 입력 값 가져오기
      var phone =  $('#memphone').val();
      
      //이메일 입력 값 가져오기
      var email = $('#mememail').val();
      
      //생년월일 입력 값 가져오기
      var birth = $('#membirth').val();
      
             
      // 정규식 일치여부 등을 저장할 회원가입 혹은 회원정보 수정의 항목 success 변수 정의하기
      var idSucc ;
      var pwSucc ; 
      var confirmPwSucc ;
      var nameSucc ;
      var nicknameSucc ;
      var phoneSucc ;
      var emailSucc ;
      var birthSucc ;
      
      // 정규식 등으로 정확히 입력했는지, 입력하지 않았다면 띄울 문구와 해당 엘리먼트에 focus 지정하기
     
      let reg_id1 = /^[a-z0-9_-]{4,20}$/; // 소문자 + 숫자 + 언더바/하이픈 허용 4~20자리
      let reg_pw2 = /(?=.*[a-zA-ZS])(?=.*?[#?!@$%^&*-]).{8,16}/; // 문자와 특수문자 조합의 8~16 자리
      let reg_name1 = /^[가-힣]+$/; // 한글만
      let reg_nickname1 = /^[가-힣]+$/; // 한글만
      let reg_mobile = /^\d{3}-\d{3,4}-\d{4}$/; // 휴대폰 번호
      let reg_email =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/; // (이메일) 길이까지 확실한 검증
         
   
       //아이디 체크
       if(id.length > 21 || id.length < 5){
          $('#memid').focus()
          $('#idMsg').text('아이디는 4~20자 소문자 + 숫자 + _ , -')
       }
  
         //pw 체크
         if(pw.length > 17 || pw.length < 7){
            $('#mempw').focus()
            $('#pwMsg').text('비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자')
         
            
         }else{
            idSucc = true;
            pwSucc = true;
            confirmPwSucc = true;
            nameSucc = true;
            nicknameSucc = true;
            phoneSucc = true;
            emailSucc = true;
            birthSucc = true;
         }
      
      
      // 모든 항목에 정상 값을 입력했을 경우 모든 success변수가 true라면 submit

     if(idSucc && pwSucc && confirmPwSucc && nameSucc && nicknameSucc && phoneSucc && emailSucc && birthSucc){
      // 폼 엘리먼트.submit();
       $('#joinForm').submit(); 
       
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
   width: 60%;
   display: inline;
}
.form {
   padding-left: 200px;
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
#join { 
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
#join:hover {
    background: #6aafe6;
   outline: none;
   color: white;
}
.button {
   width: 30%
}
</style>

<body>
<div class="container">
      <h3 style="text-align: center; font-weight: bold;">회원가입</h3>
      <hr class="line"><br><br>

      <form action="/join" id="joinForm" method="post" accept-charset="utf-8">

         <div class="form">
            <div class="form-group">
               <div class="button-wrap">
                  <label for="memid" class="col-xs-2 control-label">아이디</label>
                  <div class="col-xs-10">
                     <input type="text" id="memid" name="memid" class="form-control" placeholder="아이디는 4~20자 소문자 + 숫자 + _ , -" >
                     <button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall" type="button">
                        중복확인</button><br><br>
            <span id="idMsg" class="errorMsg"></span>           
                  </div>
               </div>
            </div>

            <div class="form-group">
               <label for="mempw" class="col-xs-2 control-label">비밀번호</label>
               <div class="col-xs-10">
                  <input type="password" id="mempw" name="mempw" class="form-control" placeholder="8~16자 영문 대 소문자, 숫자, 특수문자 사용가능" ><br><br>
           <span id="pwMsg" class="errorMsg"></span>    
            </div>
            <br><br>

            <div class="form-group">
               <label for="userpwchk" class="col-xs-2 control-label">비밀번호
                  확인</label>
               <div class="col-xs-10">
                  <input type="password" id="mempwchk" name="mempwchk" class="form-control" ><br><br>
               </div>
            </div>
            <br><br>

            <div class="form-group">
               <label for="memname" class="col-xs-2 control-label">이름</label>
               <div class="col-xs-10">
                  <input type="text" id="memname" name="memname"
                     class="form-control" ><br> <br>
               </div>
            </div>
            <br> <br> <br>
               <div class="form-group">
                  <label for="memnick" class="col-xs-2 control-label">닉네임</label>
                  <div class="col-xs-10">
                     <input type="text" id="memnick"
                        name="memnick" class="form-control"><br>
                     <br>
                  </div>
               </div>
               <br>

               <div class="form-group">
                  <div class="button-wrap">
                    <label for="memphone" class="col-xs-2 control-label">휴대폰 번호</label>
                     <div class="col-xs-10">
                     <input type="text" class="form-control" id="memphone" name="memphone" maxlength="13" >      
                        <button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall"
                           type="button">인증번호 받기</button>
                        <br>
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <div class="button-wrap">

                     <label for="memchknum" class="col-xs-2 control-label"></label>
                     <div class="col-xs-10">
                        <input type="text" id="memchknum" name="memchknum"
                           class="form-control" placeholder="인증번호를 입력하세요." >
                        <button class="w-btn-outline w-btn-gray-outline btn-sm btnsmall"
                           type="button">확인</button>
                        <br>
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <label for="mememail" class="col-xs-2 control-label">이메일</label>
                  <div class="col-xs-10">
                     <input type="email" id="mememail" name="mememail"
                        class="form-control"><br>
                  </div>
               </div><br><br><br>
            <div class="form-group">
            <label for="membirth" class="col-xs-2 control-label">생년월일</label>
               <div class="col-xs-10">
                  <input type="text" id="membirth" name="membirth" class="form-control" placeholder="YYYYMMDD 형식으로 입력" maxlength="8"><br><br>
               </div>
            </div>
            </div>
            </div>
            <br><br><br><br>
         <div class="button">
         <button type="button" class="btn btn-block" id="join">회원가입</button><br>
         </div>
         <div class="button">
         <button type="button" class="btn btn-block" id="cancel">취소</button>
         </div><br><br><br>
      </form>
</div>
         
</body>


<%@ include file="../layout/footer.jsp"%>