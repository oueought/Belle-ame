<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단바</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 부트스트랩 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
 
* {
   box-sizing: border-box;
   padding: 45px;
}

.header {
   display: inline;
    width: 1200px;
    height: 200px;
}

.LogoContainer {
   width: 100px;
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
<div class="container">
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
</div>
</head>

</body>
</html>
