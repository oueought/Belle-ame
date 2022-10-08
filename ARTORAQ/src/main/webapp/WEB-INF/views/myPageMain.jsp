<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp"%>

<!-- css -->
<style>

.mypage { 
   margin: 0 auto;
   margin-top: 100px;
}

.line {
	size: 50px;
	height: 1px;
	width: 100%;
	background: gray;
}

.card {
/*     box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px !important;  */
    height: 200px;
    border: 2px solid #ccc;
    border-radius: 0px;
    padding: 50px 10px;
    font-size: 16px;
}

.card:hover {
    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px !important;
    border: 2px solid #6aafe6;
    font-weight: bold;
      transition: all 0.3s;
}
.card-body img {
   width: 40px;
   height: 40px;
}

.img-wrapper {
	position: relative;
	width: 100%;
	height: 0;
	padding-bottom: 50%;
 	overflow: hidden; 
}

.img-wrapper .image {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 50%;
}

</style>

<div class="row mypage">
<div class="img-wrapper">
<img src="https://images.unsplash.com/photo-1626243048879-51f8d9818566?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80"><br><br><br>
</div>
   <h3 style="text-align: left; font-weight: bold;">마이페이지</h3><br>
   	<hr class="line"><br><br><br><br><br>
   <div class="menu">
      <div class="col-md-3">
         <div class="card"
            style=" cursor: pointer;" onclick="location.href='/mypage/profile';">
               <div class="card-body text-center">
                  <img alt="" src="https://ifh.cc/g/rc664m.png"><br>
                   <br><p class="card-title">프로필 관리</p>
               </div>
           </div>
       </div>
      
       <div class="col-md-3">
           <div class="card"
            style=" cursor: pointer;" onclick="location.href='#';">
               <div class="card-body text-center">
                  <img alt="" src="https://ifh.cc/g/rygRtf.png"><br>
                   <br><p class="card-title">회원 정보 수정</p>
               </div>
           </div>
       </div>
      
       <div class="col-md-3">
           <div class="card"
            style=" cursor: pointer;" onclick="location.href='#';">
               <div class="card-body text-center">
                  <img alt="" src="https://ifh.cc/g/79ny77.png"><br>
                   <br><p class="card-title">위시리스트</p>
               </div>
           </div>
       </div>
   
       <div class="col-md-3">
           <div class="card"
            style=" cursor: pointer;" onclick="location.href='#';">
               <div class="card-body text-center">
                  <img alt="" src="https://ifh.cc/g/JvZRMY.png"><br>
                   <br><p class="card-title">결제 내역</p>
               </div>
           </div>
       </div>
    </div>
</div>

<%@ include file="../layout/footer.jsp"%>
