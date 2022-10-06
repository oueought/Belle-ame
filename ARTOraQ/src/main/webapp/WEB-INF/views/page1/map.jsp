<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
   <div class="panel panel-default">
     <div class="panel-heading"><h2>유의 사항</h2></div>
        <div class="panel-body">
          <h5> - 퇴장 후 재입장 불가 </h5>
          <h5> - 전시장 내 음료 및 음식물 반입 금지 </h5>
          <h5> - 48개월 미만, 영유아 및 보호자를 동반하지 않은 13세 미만 어린이 입장 불가 </h5>
          <h5> - 가방 사이즈는 148X210mm 내로 전시회 반입 허용, 그 이상의 크기와 소지품은 물품보관함에 보관</h5>
          <h5> - 셀카봉, 삼각대, 플래쉬 음료 음식물, 유모차 반입 및 애완견 출입 불가 </h5>
          <h5> - 전시장 내부 혼잡도에 따라 입장 전 대기 발생 가능 </h5>
          <h5> - 예매일로부터 4주 이후 / 유효기간 만료 후 환불 불가 </h5>
          </div>
   </div>
   
   <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-title"><h2>장소 및 이용 문의</h2></div>
        </div>
        <div class="panel-body">
          <h5> - 장소 : 현대 미술관</h5>
          <h5> - 주소 : 현대 미술관</h5>
          <h5> - 주차여부 : 현대 미술관</h5>
          <h5> - 문의 전화 : 현대 미술관</h5>
        </div>
   </div>
</div>


<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7a1de403c90ea61005bb06d67bd961c0"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		marker.setMap(map);
		
	</script>

</body>
</html>