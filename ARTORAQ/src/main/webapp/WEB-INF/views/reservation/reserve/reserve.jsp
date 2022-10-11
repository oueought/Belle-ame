<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
</script>

<script> 
/* span.ver 숫자 증감 */
/* window.onload = function(){
	   var plus = document.querySelector(".plus");
	   var minus = document.querySelector(".minus");
	   var result = document.querySelector("#result");
	   var i = 1;
	   
	   plus.addEventListener("click", () => {
	      i++
	      result.textContent = i;
	   })
	   minus.addEventListener("click", () => {
	      if (i>0){
	         i--
	         result.textContent = i;
	         }
	   })
} */

/* button.ver 숫자 증감 */
function count(type) {
	const resultElement = document.getElementById("result");
	
	var number = resultElement.innerText;
	
	if(type === "plus") {
		number = parseInt(number) + 1;
	}else if(type==="minus"){
		number = parseInt(number) - 1;		
	}
	
	resultElement.innerText = number;
}

</script>

</head>
<body>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<form action="/reservation/reserve/reserve" method="post">

<!-- 날짜 정하기 -->
<div class="choice">
   <div class="choicebox">
	      <p>Date: <input type="text" name="datepicker" id="datepicker"></p>
   </div>
</div>

   
   <!-- 성인 1인 입장권 -->
<div class="reserve">
<div class="reservebox">
      <div><b>성인 1인 입장권</b></div>
</div>
   <div class="num">
         <!-- span.ver 수량 증감 -->
         <!-- <span class="count">
         <a href="#" class="minus">-</a>
         <span id="result">1</span>
         <a href="#" class="plus">+</a>
         </span> -->
         
         <!-- button.ver 수량 증감 -->
         <input type="button" onclick="count('plus')" value="+"/>
         <input type="button" onclick="count('minus')" value="-"/>
         <div id="result">0</div>
   </div>
</div>

   <br>

   <!-- 취소, 결제 버튼 -->
   <div class="dpbutton">
        <button type="button" class="btn btn-default"><b>취소</b></button>
        <button type="submit" class="btn btn-primary" ><b>결제</b></button>
    </div>

</form>

   <br>

<footer>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
</footer>

</body>
</html>
