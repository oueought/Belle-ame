<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단바</title>
<style type="text/css">
 
.header {
	margin: 0 auto;
    width: 1500px;
    height: 200px;
    
}

.LogoContainer {
  	width: 100px;
    height: 100px;
    display: inline-block;
}

.Logo {

   margin-left: 20px;
   margin-top: 20px;
   margin-bottom: 30px;
}

.search {
  display: inline-block;
  width: 200px;
  hegith: 30px;
  margin-top: 80px;
  margin-right:30px;
  float: right;
  display: inline-block;
}

input {
	width: 200px;
	height: 30px;
	border: 1px solid #bbb;
	border-radius: 8px;
	magin-top:100px;
	margin-right: 20px;
	font-size: 14px;
	background-image: url("https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png");
	background-repeat: no-repeat;
	background-size: 17px;
	background-position: 170px 7px;
}



</style>
</head>
<body>

<div class="header">

   <div class="LogoContainer">
   
      <a href="main.jsp">
       <img src="../image/Logo.png" alt="ARTORAQ" class="Logo" style="width: 100px; height: 100px;">
      </a>
   
   </div>
   
   <div class="search">
        <input type="text" placeholder="전시회 검색">
        
   </div>

</div>

</head>

</body>
</html>