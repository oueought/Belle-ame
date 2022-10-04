<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="../layout/header.jsp" %>



 <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
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
        font-size: 14px;
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

	
/* PC (해상도 1024px)*/ 
@media all and (min-width:1024px) {

.status {	/* 진행상태라벨들 */
	
	margin: 105px 281px;
    margin-bottom: 2px;
    z-index: 10;
}

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


<body>




<div class="status" >
<span class="label label-danger" style="cursor:pointer">진행중</span>
<span class="label label-default" style="cursor:pointer">진행완료</span>
<span class="label label-default" style="cursor:pointer">진행예정</span>
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
        <p class="period">2021년 11월 27일 - 2022년 02월 18일</p>
        
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
        <p class="period">2022년 10월 1일 - 2023년 1월 8일</p>
        
         <div class="status_ing">
        <span class="label label-danger">진행중</span>
        </div>
      </div>
    </div>
  </div>


   <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/fgRjvy.png" alt="...">
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
      <img src="https://ifh.cc/g/vL0zKT.jpg" alt="..." class="img-responsive center-block">
        <h4>르네 마그리트 특별전</h4>
        <p class="period">2020년 04월 29일 - 2020년 09월 13일</p>
        
        <div class="status_ing">
        <span class="label label-default">진행완료</span>
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
      <img src="https://ifh.cc/g/ocTx37.png" alt="...">
        <h4>전시 label</h4>
        <p class="period">누가 내 머리에 똥 쌌어</p>
      </div>
    </div>
  </div>


  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/ocTx37.png" alt="...">
        <h4>전시 label</h4>
        <p class="period">누가 내 머리에 똥 쌌어</p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
      <img src="https://ifh.cc/g/ocTx37.png" alt="...">
        <h4>전시 label</h4>
        <p class="period">누가 내 머리에 똥 쌌어</p>
      </div>
    </div>
  </div>
 </div> 


</div>	<!-- 컨테이너 div끝 -->
        
	<!-- 스와이퍼 첫페이지 끝 -->

       
	
	
	  </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
 <!--      <div class="swiper-pagination"></div> -->
   	  </div>



   <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
     <script>
     var swiper = new Swiper(".mySwiper", {
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
