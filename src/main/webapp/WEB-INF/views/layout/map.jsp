<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지도</title>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>


<div id="map" style="width:100%;height:300px; align:left;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c7bf9eeffced63c1c3589bb2933a9edb"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.567319, 127.009580), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 


//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.567319, 127.009580); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);



      </script>	
</body>
</html>

