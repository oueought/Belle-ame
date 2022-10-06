<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>예매페이지</title>

<!-- js 파일 include -->
<script type="text/javascript" async><%@include file="./cal.js" %></script> 

<!-- js 파일 include -->
<script type="text/javascript" async><%@include file="../reserve/reserve.js" %></script>   

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

<style type="text/css">

.date {
   margin-top: 100px;
   top: 100px;
}

#dateinfo {
   font-size: 30px;
   text-align: center;
   margin-bottom: 15px;
   margin-top: 5px;
}

#calendar {
   	margin-bottom:50px; 
    padding: 10px; 
    width:500px; 
    height: 460px;
    color: #505050; 
    border: 1px solid #dcdcdc;
    font-weight: bold;
}
   
#calendar td
{
   padding:10px;
         } 

#calendarTitle{
   font-weight: bold;
}

.choice {
	padding: 10px; 
    width:500px; 
    height: 80px;
    border: 1px solid #dcdcdc;
    font-weight: bold;
}

.reserve {
    padding: 10px; 
    width:500px; 
    height: 80px;
    border: 1px solid #dcdcdc;
    font-weight: bold;
}
.reservebox {
	font-size: 20px;
	margin-left: 15px;
}


.num {   
   text-align: center;
   margin-left: 380px;
}

.plus {
   font-size: 20px;
   margin: 10px;
}

.minus{
   font-size: 20px;
   margin: 10px;   
}

#result{
   font-size: 25px;
}

.dpbutton {
	margin-left: 900px;
	font-weight: bold;

}

<!---->

.modal-content {
    position: relative;
    width: 600px;
    height: 620px;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
    box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
}

.modal-body {
    position: relative;
    padding: 15px;
    height: 486px;
}

#myModalLabel {
	
	margin-top: 10px;
	margin-left: 200px;
	font-weight: bold;
	
}
.modal-footer {

	margin-right: 35px;
	font-weight: bold;

}



</style>

</head>
<body>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<hr style="	height:1px; border:0; color: #909090;">

<!-- 예매페이지 달력 -->	
<div class="date">
   <table id="calendar" align="center">
   <p id="dateinfo">날짜를 선택해 주세요</p>

   <br>
   
         <tr>
            <td align="center"><label onclick="prevCalendar()"> ◀ </label></td>
            <td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
            <td align="center"><label onclick="nextCalendar()"> ▶ </label></td>
         </tr>
         <tr>
            <td align="center" id="calendarTitle"><font color ="#F79DC2">일</td>         
            <td align="center" id="calendarTitle">월</td>
            <td align="center" id="calendarTitle">화</td>
            <td align="center" id="calendarTitle">수</td>
            <td align="center" id="calendarTitle">목</td>
            <td align="center" id="calendarTitle">금</td>
            <td align="center" id="calendarTitle"><font color ="skyblue">토</td>
         </tr>
         <script type="text/javascript">buildCalendar();</script>
   </table> 
</div>


	<hr style="	height:1px; border:0; color: #909090;">

<br>

<div class="choice">
	<div class="choicebox">
		<p style="font-size: 20px;"></p>
	</div>
	
</div>

<br><br>

<div class="reserve">
	
	<!-- 성인 1인 입장권 -->
	<div class="reservebox">
		<div><b>성인 1인 입장권</b></div>
	</div>
	
	<!-- 수량 증가,감소 버튼 -->
	<div class="num">
		<span class="count">
			<a href="#" class="minus">-</a>
			<span id="result">0</span>
         	<a href="#" class="plus">+</a>
         	<span id="#" class="result"></span>
      	</span>
	</div>
   
</div>

	<br>

	<!-- 취소, 결제 버튼 -->
	<div class="dpbutton">
        <button type="button" class="btn btn-default" href="#"><b>취소</b></button>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"><%@ include file="pay.jsp" %><b>결제</b></button>
    </div>

	
	<br>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      		<div class="modal-header">
        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        	<h4 class="modal-title" id="myModalLabel">QR 코드를 찍어주세요</h4>
      	</div>
    <div class="modal-body">
      
    </div>  
      
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><b>취소</b></button>
        <button type="button" class="btn btn-primary" onclick="location.href='/pay/modalP.jsp';"><b>확인</b></button>
      </div>
    </div>
  </div>
</div>
	
	


<footer>


<%@ include file="/WEB-INF/views/layout/footer.jsp" %>

</footer>

</body>
</html>
