<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보게시판</title>
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


	.status_ing {	/* 상태라벨 한 개 */
		/* padding-left: 200px; */ 
		text-align: right;
	
	}


	.period {	/* p태그 전시기간 */
		font-size: 12px;
	}




	
</style>
</head>

<%@ include file="../layout/header.jsp" %>

<body>
<hr>
<h5>&nbsp;&nbsp;&lt;뒤뷔페&gt;에 대한 검색결과 입니다</h5> <%-- 검색키워드 넣기 --%>


<div class="bodybox">

 <h1>할일 : 검색결과에 대한 상세게시물로 링크 걸어야 함</h1>

        
<div class="container">
<%int total = 5; %> <%-- 총 검색결과 수 --%>

<% if( total == 0 ) { %>
	<h2> **검색하신 검색결과가 없습니다 </h2>
<% } else { %>

<div class="row">
	<%for( int i=0; i < total ; i++) { %>
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/pzdotw.png" alt="..."> 			 <%-- 미리보기 이미지 파일 이름 --%>
        <h4>뒤뷔페 展</h4>												 <%-- 전시 제목 --%>
       <p class="period">2022년 10월 01일 - 2023년 01월 31일 </p>		 <%-- 전시 기간 --%>	
       
         <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
        
      </div>
    </div>
  </div>
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
