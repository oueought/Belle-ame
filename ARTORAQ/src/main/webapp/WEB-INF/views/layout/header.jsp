<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단바</title>


<!-- 부트스트랩 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

 
  
<style type="text/css">


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


* {
   box-sizing: border-box;
   padding: 45px;
}

body {
 	width: 90%; 
    margin: 2em auto !important;
    font: 1em/1.3 Arial, Helvetica, sans-serif;
}

.header {
   display: inline;
   width: 1500px;
   height: 200px;
}

.LogoContainer {
   width: 1350px;
   height: 100px;
}

.Logo {
   position: absolute;
   left: 20px;
   top: 20px;
   bottom: 20px;
   margin-left: 30px;
   margin-top: 30px;
   margin-bottom: 30px;
}

.search {
  position: relative;
  width: 300px;
  bottom: 30px;
  margin-right: 20px;
}

.searchinput {
  width: 100%;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 14px;
}

.search img {
  position : absolute;
  width: 17px;
  top: 10px;
  right: 12px;
  margin: 0;
}



</style>

</head>
<body>

<div class="header">
   <div class="LogoContainer">
   
   <a href="main.jsp">
      <img src="https://ifh.cc/g/LO3mkj.png" alt="ARTORAQ" class="Logo" style="width: 100px; height: 100px;">
   </a>
   </div>
   
   
   <div class="search">
     <input class="searchinput" type="text" placeholder="전시회 검색">
     <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
   </div>
</div>

</body>
</html>
