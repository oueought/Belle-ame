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
  <title>ARTORAQ</title>
  <link rel="stylesheet" href="/css/reservation/reserve.css"> 
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  
  <!-- 달력 -->
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
  

/* span.ver 숫자 증감 */
/* 예매페에지 - 0 + */
window.onload = function(){
   var plus = document.querySelector(".plus"); //해당 엘리먼트 없음
   var minus = document.querySelector(".minus"); //해당 엘리먼트 없음
   var result = document.querySelector("#result")
   var totalcost = document.querySelector('#bookPrice')//해당 엘리먼트 없음
   var i = 1;
   
   plus.addEventListener("click", () => {
	
      i++
      console.log(i)
      $("#result").text(i); //제이쿼리로 js innerText기능을 쓰려면 엘리먼트.text(값)
      var totalcostNum = 1*i;//?
      //totalcost.textContent = "인원 수 : " + totalcostNum.toLocaleString();
      $('#totalTicketCnt').text('인원수 :'+totalcostNum)
      $('#price').text('')
      
      
   })
   
   minus.addEventListener("click", () => {
	   if($('#totalTicketCnt').text() == 1){
		   $('#totalTicketCnt').text('인원수 : 1')
	   }else if (i>1){
         i--
         console.log(i)
         $("#result").text(i); 
         var totalcostNum = totalcostNum == 0 ? 1 : i;
         $('#totalTicketCnt').text('인원수 :'+totalcostNum)
     } else {
    	 $('#totalTicketCnt').text('인원수 : 1')
     }
      $('#price').text('')
   })
}

var price = "<%= board.getPrice()%>";
var innerPrice = 0;

/* button.ver 숫자 증감 */
function count(type) {
   const resultElement = document.getElementById("result");
   const priceElement = document.getElementById("price");
   const bookPriceElement = document.getElementById("bookPrice");
   
   var number = resultElement.innerText == 0 ? 1 : resultElement.innerText ;

  var bookPrice = price;
   
   if(type === "plus") {
      number = parseInt(number) + 1;
    
   }else if(type==="minus"){
      number = parseInt(number) - 1;   
   }
   
   bookPrice = price * number
   console.log(bookPrice)
   
   if(number == 0 ){
      resultElement.innerText = 1;
      bookPriceElement.innerText = price;
      alert('최소 수량은 한장입니다.')
   }else {
      resultElement.innerText = number;
      bookPriceElement.innerText = bookPrice;   
   }
   
}


/* 아임포트 */
$(document).ready(function() {
   $('#importPayment').click(function(){
      payment();
   })
})

function payment(){
   var name = document.getElementById("name").innerText;
   var sum = document.getElementById("bookPrice").innerText;
   //var sum = document.getElementById("price").innerText;
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
                buyer_email: "test11111@gmail.com", //가라값이므로 추후 수정 필요
                buyer_name: "홍길동", //상동
                buyer_tel: "010-4242-4242",//상동
                buyer_addr: "서울특별시 강남구 신사동",//상동
                buyer_postcode: "01181" //상동
            }, function (rsp) { // callback
                if (rsp.success) {
                   
                   payForm.submit();
                   
                   location.href = "http://localhost:8088/artoraq/main";
                   
                } else {
                   console.log(rsp)
                   console.log("failed")
                }}
               )
           
            
            }
//}

</script>
<style>

/* 예약 일시 출력 박스 */
.choice {
  	padding: 10px; 
    width:550px; 
    height: 100px;
    border: 1px solid #dcdcdc;
    font-size: 20px;
    font-weight: bold;
    
}
.choicebox{
	margin-left: 15px;
	display:inline-block;
	
}
.choicedate{
	margin-top: 25px;

}


/* 1인 입장권 */
.reserve {
    padding: 10px; 
    width:550px; 
    height: 170px;
    border: 1px solid #dcdcdc;
    font-weight: bold;
}
.reservebox {
   font-size: 20px;
   margin-left: 15px;
   margin-top: 10px;
   padding-bottom: 10px;
}

.expire{

	font-size: 15px;
	margin-left: 15px;
	margin-bottom: 50px;
}

.name{
	font-size: 15px;
	margin-top: 20px;
}


.num {   
   text-align: center;
   font-size: 10px;
   display: inline-block;
   margin-left: 400px;
   
}



.minus{
	width : 40px;
	height: 25px;
	font-size: 20px;
	text-align: center;
}

.plus {
	width : 40px;
	height: 25px;
	font-size: 20px;
	display :inline-block;
}


.dpbutton {
   margin-left: 875px;
   font-weight: bold;

}

.count{
	font-size: 10px;
}
.price{
	font-size: 10px;
}

.numpm{
	display: inline-block;
	text-align: center
}
.pricepb{
	display: inline-block;
}



</style>



</head>
<body>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<form action="/reservation/reserve/reserve" method="post" id="payForm">

<br><br><br><br><br><br><br><br>

<!-- 날짜 정하기 -->
<div class="choice">
   <div class="choicebox">
         <div class="choicedate">Date: <input value="" type="text" name="datepicker" id="datepicker"></div>
   </div>
</div>

<br><br>
  
   <!-- 성인 1인 입장권 -->
   <div class="reserve">
   <div class="reservebox">
      <div><b>수량선택</b></div>
  
</div>
   <div class="info">
      <span class="expire">[유효기간 : ~<%= board.getPeriod().split("~")[0].replace('년', '.').replace('월', '.').replace('일', ' ') %>]</span>
      <span class="name" id="name"><%= board.getTitle() %> 입장권</span>
   </div>
     <div class="num">
         <!-- button.ver 수량 증감 -->
         <input type="button" class="minus" onclick="count('minus')" value="-"/>
         <input type="button" class="plus" onclick="count('plus')" value="+"/>
         <div id="result"></div>
         <input type="hidden" name="amount" id="amount"/>
         <input type="hidden" name="sum" id="sum"/>
         <input type="hidden" name="date" id="date"/>
         <input type="hidden" class="count" name="no" value="<%=board.getBoardno() %>"/>
         <input type="hidden" class="price" name="price" value="<%=board.getPrice() %>"/>
         <div id="totalTicketCnt"></div> 
                 <div id="price"><%= board.getPrice() %></div>
                 <span id="bookPrice"></span>
   </div>
</div>

   <br>

   <!-- 취소, 결제 버튼 -->
   <div class="dpbutton">
        <button type="button" class="btn btn-default"><b>취소</b></button>
        <button type="button" id="importPayment" class="btn btn-primary" ><b>결제</b></button>
    </div>


	<!-- 결제 완료 후 -->
	<form action="/reservation/reserve/reserve">
	
	<div></div>
	
	</form>
	
	
</form>

   <br><br><br><br><br><br><br><br><br><br><br>

<footer>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>

</footer>

</body>
</html>