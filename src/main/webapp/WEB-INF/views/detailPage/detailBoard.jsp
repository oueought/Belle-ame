<%@page import="dto.UploadFile"%>
<%@page import="dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%	Board viewBoard = (Board) request.getAttribute("viewBoard"); %>
<% UploadFile uploadFile = (UploadFile) request.getAttribute("uploadFile");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=viewBoard.getTitle() %></title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../css/board/detailBoard.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>    


    
</head>

<script type="text/javascript">

$(document).ready(function() {
	
	//목록 버튼
	$("#btnList").click(function() {
		$(location).attr('href', './InfoBoardController')
	})

	//수정 버튼
	$("#btnUpdate").click(function() {
		$(location).attr('href', './update?boardno=<%=viewBoard.getBoardno() %>')
	})

	//삭제버튼
	$("#btnDelete").click(function() {
		$(location).attr('href', './deleteController?boardno=<%=viewBoard.getBoardno() %>')
	})

})
</script>

  
 <body> 
    <%@ include file="../layout/header.jsp" %>

            <!--  이미지박스   -->
            <div class="imgbox">
                <img class="innerimgbox" alt="둘이서" src="https://ifh.cc/g/7HVSz2.jpg">
            </div>
            
            <div id="exhibition_wrap">



                <div class="exhibition_box">
                    <div>
                        <img class="exhibition_img" src="https://ifh.cc/g/Xbab2f.jpg">

                    </div>


                    <p class="p1">
                       <%=viewBoard.getTitle() %>
                    </p>


                    <!-- 소개 table 시작 -->
                    <table>


                        <tr>
                            <th>장소</th>
                            <td><%=viewBoard.getLocation() %></td>
                        </tr>

                        <tr>
                            <th>전시 기간</th>
                            <td><%=viewBoard.getPeriod() %></td>
                        </tr>

                        <tr>
                            <th>결제 금액</th>
                            <td><%=viewBoard.getPrice() %></td>
                        </tr>
                        
						
                    </table>
                    
                  
					


                    <div class="booking_button">
                        <a href="" target="_blank" style="color: #27ae60; font-size: 15px; font-weight: bold;">
                            <span class="txt">예매하기
                            </span>
                        </a>
                    </div>
                </div>


						<div class="textbox" >
                  		<p><%=viewBoard.getContent() %></p>
                  		</div>
								
                 		 	
            </div>

	
        
   			  <%@ include file="tab_menu.jsp" %> 
                     
  <!-- 첨부파일 -->
<div>
<% if ( uploadFile != null )  { %>
<a href="<%=request.getContextPath() %>/upload/<%=uploadFile.getUploadname()%>"
	download=<%=uploadFile.getUploadname() %>">
	<%= uploadFile.getUploadname() %>
</a>
<% } %>
</div> 
                   

            <br><br><br><br><br><br><br>

<div id="btnBox" class="pull-right">
	<button id="btnList" class="btn btn-default">목록</button>
	<button id="btnUpdate" class="btn btn-default">수정</button>
	<button id="btnDelete" class="btn btn-default">삭제</button>
</div>

                <%@ include file="../layout/footer.jsp" %>
</body>
</html>

