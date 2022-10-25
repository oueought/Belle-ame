<%@page import="dto.Board"%>
<%@page import="dto.UploadFile"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%	 List<UploadFile> uploadList = (List) request.getAttribute("uploadFile"); %>    
<% List<Board> list = (List)request.getAttribute("list"); %> 
<% String result = (String) request.getAttribute("result"); %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARTORAQ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


 
    <style>
      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
 
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
        
        }

    
    .bodybox{
     /*   border: 1px solid #ccc; */
       width: 100%;
       height: auto;
       top: 18%;
       margin-top: 5%
    
    }


   .status_ing {   /* 상태라벨 한 개 */
      /* padding-left: 200px; */ 
      text-align: right;
   
   }


   .period {   /* p태그 전시기간 */
      font-size: 12px;
   }




   
</style>
</head>

<%@ include file="../layout/header.jsp" %>

<body>
<hr>
<% if( result != null || !result.equals("") ) { %>
<h5>&nbsp;&nbsp;&lt;<%=result %>&gt;에 대한 검색결과 입니다</h5> <%-- 검색키워드 넣기 --%>
<% } %>

<div class="bodybox">

        
<div class="container">
<%int total = list.size(); %> <%-- 총 검색결과 수 --%>

<% if( total < 1  ) { %>
   <h2> **검색하신 검색결과가 없습니다 </h2>
<% } else { %>

<div class="row">
   <%for( int i=0; i < total ; i++) { %>
   <a href="/viewBoard?boardno=<%=list.get(i).getBoardno() %>">
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="/upload/<%=uploadList.get(i).getStoredname()%>" alt="..." class="img-responsive center-block">           <%-- 미리보기 이미지 파일 이름 --%>
        <h4><%=list.get(i).getTitle() %></h4>                                     <%-- 전시 제목 --%>
       <p class="period"><%=list.get(i).getPeriod() %> </p>       <%-- 전시 기간 --%>   
       
         <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
        
      </div>
    </div>
  </div>
  </a>
  <%} %>
<%} %>
</div> <!-- row 끝 -->

</div><!-- container 끝 -->

</div> <!-- bodybox 끝 -->




<footer>
<%@ include file="../layout/footer.jsp" %>
</footer>

</body>
</html>