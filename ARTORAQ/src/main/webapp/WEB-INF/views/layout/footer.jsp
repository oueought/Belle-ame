<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>하단바</title>

<style type="text/css">

* {
   box-sizing: border-box;
   padding: 0;
   margin: 0 auto;
}

hr {
	height:1px;
    border:0;
	color: #909090;
}

.footer {
   display: flex;
     flex-direction: column;
   padding: 24px 0 25px;
   text-align: center;
   color: #909090;
   border-top: 1px solid rgba(0,0,0,.05);
   width: 1200px;
   height: 200px;
}

.footer-list > a:hover {
  color : #007bff;
}

.footer-list {
   text-decoration: none;
   font-size: 11px;
   color: rgb(144, 144, 144);
   width: 50px;
   height: 20px;
   border-right: 1px solid rgba(0,0,0,.1);
   padding-right: 5px;
}

.footer personal > a {
   font-size: 12px;
   font-style: normal;
   max-width: 600px;
   margin: 20px auto 0;
   text-align: center;
   word-break: keep-all;
   -webkit-font-smoothing: antialiased;
   color: #b4b4b3;
}

.footer personal .info {
   border-right: 1px solid rgba(0,0,0,.1);
   padding-right: 7px;
}

.footer .pinfo {
   font-size: 12px;
   text-align: center;
   word-break: keep-all;
   -webkit-font-smoothing: antialiased;
   color: #b4b4b4;
}


</style>

</head>
<body>

<br>

<hr>

<footer class="footer">
   <div class="FooterContainer">
   
      <div class="footer-top">
         <a class="footer-list">전시회 소개</a>
         <a class="footer-list">이용약관</a>
         <a class="footer-list"">개인정보처리방침</a>
         <a class="footer-list">채용관리</a>
         <a class="footer-list">권리침해신고</a>
         <a class="footer-list">ARTORAQ</a>
         <a class="footer-list">공식사이트</a>
         <a class="footer-list">회사소개</a>
      </div>
      
      <personal style="margin-top: 20px;">
         <a class="info">ARTORAQ</a>
         <a class="info">사업자번호:1234-5678</a>
         <a class="info">통신판매업신고번호: 2022-서울강남-0527</a>
         <a class="info">대표자명: 김소연</a><br>
         <a class="info">전시 정보 관리자 : 김명진, 윤지원, 이슬기</a>
         <a class="info">전시 기획 관리자 : 박소영, 서은영</a>
         <a class="info">주소 : 서울 특별시 강남구 테헤란로 130</a>
         <br>
         <a class="info">KH@Artoraq.com</a>
      </personal>
      <a class="pinfo">ARTORAQ는 개인정보 및 전시 정보에 대하여 책임을 지지 않습니다.</a>

   </div>   
</footer>

</body>
</html>