<%@page import="dto.reserve.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Board board = (Board)request.getAttribute("board"); 
%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <title>예매하기</title>
  <link rel="stylesheet" href="/css/reservation/reserve.css"> 
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  <script>
  
  $.datepicker.setDefaults({
      dateFormat: 'yy-mm-dd',
      prevText: '이전 달',
      nextText: '다음 달',
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
      showMonthAfterYear: true,
      yearSuffix: '년'
  });

  $(function() {
      $("#datepicker").datepicker();

 
  });

var price = "<%= board.getPrice()%>";

/* button.ver 숫자 증감 */
function count(type) {
	const resultElement = document.getElementById("result");
	const priceElement = document.getElementById("price");
	
	var number = resultElement.innerText;

	innerPrice = price;
	
	if(type === "plus") {
		number = parseInt(number) + 1;
		innerPrice = price * number
		
	}else if(type==="minus"){
		number = parseInt(number) - 1;	
		innerPrice = price * number
	}
	
	if(number == 0 ){
		alert('최소 수량은 한장입니다.')
		resultElement.innerText = 1;
		priceElement.innerText = price;
	}else {
		resultElement.innerText = number;
		priceElement.innerText = innerPrice;	
	}
	
}

$(document).ready(function() {
	$('#importPayment').click(function(){
		payment();
	})
})

function payment(){
	var name = document.getElementById("name").innerText;
	var sum = document.getElementById("price").innerText;
	var payForm = document.getElementById("payForm")
	// 유니크한 값을 지정해야 함
	var uuid  = Math.floor(Math.random() * 100000000000000)
	 
	 document.getElementById("amount").value = document.getElementById("result").innerText
	 document.getElementById("sum").value = sum
	 document.getElementById("date").value = document.getElementById("datepicker").value
	
	 	      var identCode = 'imp28354113' //가맹점식별코드
		      var IMP = window.IMP
		      console.log(IMP)
		      IMP.init(identCode)
		      IMP.request_pay({ // param
		          pg: "kakaopay.TC0ONETIME",
		          pay_method: "card", //QR
 		          merchant_uid: uuid,
		          name: name,
		          amount: sum,
		          buyer_email: "test11111@gmail.com",
		          buyer_name: "홍길동",
		          buyer_tel: "010-4242-4242",
		          buyer_addr: "서울특별시 강남구 신사동",
		          buyer_postcode: "01181"
		      }, function (rsp) { // callback
		          if (rsp.success) {
		             
		        	  payForm.submit();
		        	  
		          } else {
		             console.log(rsp)
		             console.log("failed")
		          }}
		      	)
		     
		      
		      }
//}

</script>

</head>
<body>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<form action="/reservation/reserve/reserve" method="post" id="payForm">

<!-- 날짜 정하기 -->
<div class="choice">
   <div class="choicebox">
	      <p>Date: <input value="" type="text" name="datepicker" id="datepicker"></p>
   </div>
</div>

   
   <!-- 성인 1인 입장권 -->
<div class="reserve">
<div class="reservebox">
      <div><b>수량선택</b></div>
  
</div>
	<div class="info">
		<span class="expire">[유효기간 : ~<%= board.getPeriod().split("~")[1].replace('년', '.').replace('월', '.').replace('일', ' ') %>]</span>
		<span class="name" id="name"><%= board.getTitle() %> 입장권</span>
	</div>
   <div class="num">
         <!-- button.ver 수량 증감 -->
         <input type="button" onclick="count('plus')" value="+"/>
         <input type="button" onclick="count('minus')" value="-"/>
         <div id="result">1</div>
         <input type="hidden" name="amount" id="amount"/>
         <input type="hidden" name="sum" id="sum"/>
         <input type="hidden" name="date" id="date"/>
         <input type="hidden" name="no" value="<%=board.getBoardno() %>"/>
         <input type="hidden" name="price" value="<%=board.getPrice() %>"/>
         <div id="price"><%= board.getPrice() %></div>
   </div>
</div>

   <br>

   <!-- 취소, 결제 버튼 -->
   <div class="dpbutton">
        <button type="button" class="btn btn-default"><b>취소</b></button>
        <button type="button" id="importPayment" class="btn btn-primary" ><b>결제</b></button>
    </div>

</form>

   <br>

<footer>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
</footer>

</body>
</html>
