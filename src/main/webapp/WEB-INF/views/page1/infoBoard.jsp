<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">




    
    <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/>




    <!-- Demo styles -->
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

      .swiper {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 12px;
        background: #fff;
        

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
   
	.swiper-button-next {
		color: lightgray;
		
	}
	
	.swiper-button-prev {
		color: lightgray;
	}

	/* 이미지박스  */
 .imgbox {  
 width: 100%;
 height: 40%;
 z-index: 10;
 left:-5.5%;
 top: -5%
 }
 
 .innerimgbox {
 width: 100%; 
 height:113%;
 margin-top: 50px;
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




<!--  이미지박스   -->
  <div class="imgbox">
  <img class="innerimgbox" alt="둘이서" src="https://ifh.cc/g/myHkC7.jpg">
  </div>



 <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">

        
<div class="container">
<div class="row">
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/QyVr5T.jpg" alt="..." class="img-responsive center-block">
        <h4>살바도르 달리전</h4>
        <p class="period">2021년 11월 27일 - 2023년 04월 03일</p>
        
        <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
        
      </div>
    </div>
  </div>
  
  
  
  
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/wcRJ0K.jpg" alt="..." class="img-responsive center-block">
        <h4>장 줄리앙 : 그러면, 거기</h4>
        <p class="period">2022년 10월 01일 - 2023년 01월 08일</p>
        
         <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
      </div>
    </div>
  </div>

  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/QqjPsL.jpg" alt="...">
        <h4>프랑코 폰타나:컬러in라이프</h4>
        <p class="period">2022년 09월 30일 - 2023년 03월 01일 </p>
        <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
      </div>
    </div>
  </div>
  
	 <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/pzdotw.png" alt="...">
        <h4>뒤뷔페 展</h4>
       <p class="period">2022년 10월 01일 - 2023년 01월 31일 </p>
       
         <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
        
      </div>
    </div>
  </div>
  
  

</div>
</div>
</div>

 <div class="swiper-slide">
 <div class="row"> 
 
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/FZyNVm.png" alt="...">
        <h4>매혹의 걸작들</h4>
        <p class="period">2022년 10월 25일 - 2022년 12월 31일 </p>
        <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
      </div>
    </div>
  </div>
  
  
 <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/1f3TKr.jpg" alt="..." class="img-responsive center-block">
        <h4>팀 버튼 특별전</h4>
        <p class="period">2022년 04월 30일 - 2022년 07월 22일</p>
        
        <div class="status_ing">
        <span class="label label-default">진행완료</span>
        </div>
      
      </div>
    </div>
  </div>
  
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/vL0zKT.jpg" alt="..." class="img-responsive center-block">
        <h4>르네 마그리트 특별전</h4>
        <p class="period">2020년 04월 29일 - 2020년 09월 13일</p>
        
        <div class="status_ing">
        <span class="label label-default">진행완료</span>
        </div>
        
      </div>
    </div>
  </div>


 
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/f4dRsj.png" alt="...">
        <h4>화가 조르주 루오</h4>
         <p class="period">2022년 10월 01일 - 2022년 10월 31일 </p>
       
        <div class="status_ing">
        <span class="label label-default">진행완료</span>
        </div>
      </div>
    </div>
  </div>
 </div> 


</div>	<!-- 컨테이너 div끝 -->
        
	<!-- 스와이퍼 첫페이지 끝 -->

       
	
	
	  </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
   	  </div>



   <!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>


    <!-- Initialize Swiper -->
     <script>
     const swiper = new Swiper(".mySwiper", {
         navigation: {
           nextEl: ".swiper-button-next",
           prevEl: ".swiper-button-prev",
         },
         pagination: {
             el: ".swiper-pagination",
           },
       });
    </script>

	<br><br><br><br><br>

<footer>
<%@ include file="../layout/footer.jsp" %>
</footer>

</body>
</html>
