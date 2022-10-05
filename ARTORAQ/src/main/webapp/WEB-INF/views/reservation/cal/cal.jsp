<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<head>

<!-- js 파일 include -->
<script type="text/javascript"><%@include file="../cal/cal.js" %></script> 

<meta charset="UTF-8">
<title>예약달력</title>

<style type="text/css">

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

</style>


</head>
<body>


<table id="calendar" align="center">

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
	

</body>

</html>