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
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

    
</head>

<script type="text/javascript">


$(document).ready(function() {
	
	//목록 버튼
	$("#btnList").click(function() {
		$(location).attr('href', './infoBoard')
	})

	//수정 버튼
	$("#btnUpdate").click(function() {
		$(location).attr('href', './update?boardno=<%=viewBoard.getBoardno() %>')
	})

	//삭제버튼
	$("#btnDelete").click(function() {
		$(location).attr('href', './delete?boardno=<%=viewBoard.getBoardno() %>')
	})

})
</script>

  
 <body> 
    <%@ include file="../layout/header.jsp" %>

            <!--  이미지박스   -->
            <div class="imgbox">
                <img class="innerimgbox" alt="둘이서" src="https://ifh.cc/g/7HVSz2.jpg">
            </div>
            
            <div onclick="cart()" id="exhibition_wrap">
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
                  
				 <i class="bi bi-heart"></i>   
				 
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
	download=<%=uploadFile.getUploadname() %>>
	<%= uploadFile.getUploadname() %>
</a>
<% } %>
</div> 

            <br><br><br><br><br><br><br>
            
	
<div id="btnBox" class="pull-right">
<%-- <% if(session.getAttribute("memid").equals("admin")) { %> --%>
	<button id="btnList" class="btn btn-default">목록</button>
	<button id="btnUpdate" class="btn btn-default">수정</button>
	<button id="btnDelete" class="btn btn-default">삭제</button>
<%-- <% } %> --%>
</div>

<%@ include file="../layout/footer.jsp" %>


<!-- 위시리스트 -->
<script>
    var i = 0;
    $('.bi-heart').on('click',function(){
        if(i==0){
            $(this).removeClass('bi-heart');
            $(this).addClass('bi-heart-fill');
            i++;
        }else if(i==1){
            $(this).removeClass('bi-heart-fill');
            $(this).addClass('bi-heart');
            i--;
        }
        
    });
    
    function cart(){
       /* confirm("위시리스트에 넣으시겠습니까?") */
       
          var title = $(".p1").html()  /* 게시물 제목 */
          
          $.ajax({
             type:"post",
             url: "/wishlist?title="+title,
              dataType:"html"
          }).done(function(result){
             if(result == 1){
                confirm("위시리스트에 등록 되었습니다. 마이페이지로 이동하시겠습니까?")
                //$(location).attr('href', '/mapage')
             } else if( result == 0){   
                alert("위시리스트에서 삭제 되었습니다.")   
             }
          })   
       
    }
    

</script>


</body>
</html>
