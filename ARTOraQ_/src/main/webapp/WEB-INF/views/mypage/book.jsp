<%@page import="java.util.Map"%>
<%@page import="dto.mypage.Book"%>
<%@page import="dto.mypage.Board"%>
<%@page import="dto.join.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>ARTORAQ</title>

<%@ include file="../layout/header.jsp" %>

<%-- <%   List<Book> bookList = (List) request.getAttribute("bookList"); %> --%>
<%   List<Map<String, Object>> bookList = (List) request.getAttribute("bookList"); %>

<!-- jquery  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- js -->
<script type="text/javascript">

$(document).ready(function() {
   $("#mypage").click(function() {
      $(location).attr('href', '/mypage') //마이페이지 url 이동
   })
})

</script>

<!-- css -->
<style type="text/css">

.bcontent h3 {
   text-align: center;
   font-size: 30px;
   margin: 0 0 15px;
   font-weight: bold;
}

.bcontent {
    margin: 0 auto;
    margin-top: 40px;
    
}
   
.list {
   margin-top: 30px;
}

.nothing {   /* 결제내역 없을 경우 보이는 텍스트 */
   font-size: 16px;
   text-align: center;
   margin: 100px;
   
}

.card {
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 20px 20px;
    font-size: 16px;
}


/* 이미지 크기 */
.card-img {
   width: 170px;
   height: 225px;
}

.bcontent > hr {
   height: 1px;
   background: gray;
   width: 800px;
}

.card-title {
   font-size: 22px;
   color: #1ab394;
}

/* 버튼 스타일 */
.btn {
     background-color: #ffffff;
     font-size: 14px;
   transition: all 0.2s;
   padding: 3px 10px;
   border-radius: 0;
}

#btnReview { 
   border: 2px solid #6aafe6;
   color: #6e6e6e;
}

#btnReview:hover {
     background: #6aafe6;
   outline: none;
   color: white;
}

#btnRefund {
   border: 2px solid #a3a1a1;
   color: #6e6e6e;
}

#btnRefund:hover {
     background: #a3a1a1; 
   outline: none;
   color: white;
}

</style>

<div class="container bcontent">
   <h3 style="text-align: center;" id="mypage">마이 페이지</h3><hr>
    <div class="list"  style="width: 700px;">
       <p style="font-size:16px; font-weight: bold;">결제내역</p><br>
      
      <!-- 결제한 내역이 없을 경우 -->
      <%   if( bookList.isEmpty() ) { %>
      <p class="nothing">결제한 내역이 없습니다.</p>
      <% } %>
      
      <%   for(int i=0; i<bookList.size(); i++) { %>
       <div class="card">
          <div class="row no-gutters">
              <div class="col-sm-4">
                  <img class="card-img" src="https://ifh.cc/g/QyVr5T.jpg" alt="살바도르 달리전">
              </div>
              <div class="col-sm-8">
                  <div class="card-body">
                      <p class="card-title"><%= ((Board) bookList.get(i).get("board")).getTitle() %></p><br>
                     <p>기간: <%= ((Board) bookList.get(i).get("board")).getPeriod() %></p>
                         <p>수량: <%= ((Book) bookList.get(i).get("book")).getAmount() %> 매</p>
                         <p>결제일: <%= ((Book) bookList.get(i).get("book")).getBookdate() %></p>
                         <p>결제금액: <%= ((Book) bookList.get(i).get("book")).getBookprice() %> 원</p>
                      <div class="pull-right">
                         <button type="button" class="btn" id="btnReview">리뷰</button>
                         <button type="button" class="btn" id="btnRefund">환불</button>
                      </div>
                    </div>
                 </div>
          </div>
      </div><br><br>
      <% } %>
   </div>
</div>

<%@ include file="../layout/footer.jsp" %>