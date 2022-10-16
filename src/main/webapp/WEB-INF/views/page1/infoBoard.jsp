<%@page import="dto.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%	List<Board> boardList = (List) request.getAttribute("boardList"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전시 게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../css/board/infoBoard.css"> 

<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/>

<%@ include file="../layout/header.jsp" %>
    
</head>



<script type="text/javascript">
$(document).ready(function() {
	$("#btnWrite").click(function() {
		location.href = "./write"
	})
})
</script>

<body>


<!--  이미지박스   -->
  <div class="imgbox">
  <img class="innerimgbox" alt="둘이서" src="https://ifh.cc/g/myHkC7.jpg">
  </div>


 <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
      
<div class="swiper-slide">
<div class="container">
<div class="row">
<% for (int i=0 ; i<boardList.size(); i++) { %>
 <a href="/viewBoard?boardno=<%=boardList.get(i).getBoardno() %>">
<div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
         
      <img src="https://ifh.cc/g/QyVr5T.jpg" alt="..." class="img-responsive center-block">
        <h4><%= boardList.get(i).getTitle() %></h4>
        <p class="period"><%=boardList.get(i).getPeriod() %></p>
        
        <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
        
      </div>
    </div>
  </div></a>
  <% } %>
 
</div> 
</div>
</div>


 <div class="swiper-slide">
 <div class="row"> 
 
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/FZyNVm.png" alt="...">
        <h4>매혹의 걸작들</h4>
        <p class="period">2022년 10월 25일 - 2022년 12월 31일 </p>
        <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
      </div>
    </div>
  </div>
  
  
 <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/1f3TKr.jpg" alt="..." class="img-responsive center-block">
        <h4>팀 버튼 특별전</h4>
        <p class="period">2022년 04월 30일 - 2022년 07월 22일</p>
        
        <div class="status_ing">
        <span class="label label-default">진행완료</span>
        </div>
      
      </div>
    </div>
  </div>
  
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/vL0zKT.jpg" alt="..." class="img-responsive center-block">
        <h4>르네 마그리트 특별전</h4>
        <p class="period">2020년 04월 29일 - 2020년 09월 13일</p>
        
        <div class="status_ing">
        <span class="label label-default">진행완료</span>
        </div>
        
      </div>
    </div>
  </div>


 
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/f4dRsj.png" alt="...">
        <h4>화가 조르주 루오</h4>
         <p class="period">2022년 10월 01일 - 2022년 10월 31일 </p>
       
        <div class="status_ing">
        <span class="label label-default">진행완료</span>
        </div>
      </div>
    </div>
  </div>
 </div> 


</div>	<!-- 컨테이너 div끝 -->
        
	<!-- 스와이퍼 첫페이지 끝 -->

	  </div>
	  
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
   	  </div>

 <!-- write 버튼 관리자 일 때만 보이게 구현-->
 


<%-- <% if(session.getAttribute("memid").equals("admin")) { %> --%>
<div id="btnBox" class="pull-right">
	<button id="btnWrite" class="btn btn-default">글쓰기</button>
</div>
<%-- <% } %> --%>

   <!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>


    <!-- Initialize Swiper -->
     <script>
     const swiper = new Swiper(".mySwiper", {
         navigation: {
           nextEl: ".swiper-button-next",
           prevEl: ".swiper-button-prev",
         },
         pagination: {
             el: ".swiper-pagination",
           },
       });
    </script>

	<br><br><br><br><br>

<footer>
<%@ include file="../layout/footer.jsp" %>
</footer>

</body>
</html>
