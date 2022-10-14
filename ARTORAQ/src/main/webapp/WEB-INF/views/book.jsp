<%@page import="book.Book"%>
<%@page import="dto.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<%	List<Book> bookList = (List) request.getAttribute("bookList"); %>

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

.card {
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 20px 20px;
    font-size: 16px;
}

/* 이미지 크기 */
.card-img {
	width: 170px;
	height: 232px;
}

.bcontent > hr {
	height: 1px;
	background: gray;
	width: 800px;
}

.card-title {
	font-size: 22px;
	font-weight: bold;
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

		<%	for(int i=0; i<bookList.size(); i++) { %>
	    <div class="card">
	    	<div class="row no-gutters">
	        	<div class="col-sm-5">
	            	<img class="card-img" src="https://ifh.cc/g/QyVr5T.jpg" alt="살바도르 달리전">
	        	</div>
	        	<div class="col-sm-7">
	            	<div class="card-body">
<%-- 	                	<p class="card-title">전시 타이틀<%=bookList.get(i).getTitle() %></p><br><br> --%>
	                	<p>결제일: <%=bookList.get(i).getBookdate() %></p>
	                	<p>수량: <%=bookList.get(i).getAmount() %> 매</p>
	                	<p>금액: <%=bookList.get(i).getBookprice() %> 원</p>
		                <div class="pull-right">
		                	<button type="button" class="btn" id="btnReview">리뷰</button>
		                	<button type="button" class="btn" id="btnRefund">환불</button>
	                	</div>
	       	    	</div>
	       	    </div>
		    </div>
		</div><br><br>
		<%	} %>
	</div>
</div>

<%@ include file="../layout/footer.jsp" %>