<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>
<!-- 지도 시작 -->
<img src="/resources/img/location_img.png" alt="location_img" style="width: 100%;">

<div class="container" id="map" style="width:100%; height:450px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=528cc6747f5bad7a0633e5de9c48a0be"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5030698, 126.8789856), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.5030698, 126.8789856); 

window.addEventListener('resize', function() {
    map.setCenter(new kakao.maps.LatLng(37.5030698, 126.8789856));
 });

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
<!-- 지도 끝 -->

<section class="container">
  <hr>
  <div class="location_info row-cols-2">
    <div>✔ 주소 | 서울특별시 구로구 경인로 557 삼영빌딩 4층</div>
    <div>✔ 연락처 | 02-3667-0008</div>
  </div>
  <hr>
  <div class="location_subway row-cols-3">
    <div class="location_block">
      <img src="/resources/img/location_subway_icon.svg" alt="" class="subway_icon"> <b>지하철</b>
      <p>구로역 1호선 하차 후 도보 5분</p>
      <!-- <p>그냥 대충 아무거나 타고 와ㅠ</p>  -->
    </div>
    <div class="location_block">
      <img src="/resources/img/location_bus_icon.svg" alt="" class="subway_icon"> <b>버스</b>
      <p>571번, 654번, 5630번, 6613번</p>
      <p>구로역.구로기계공구상가 하차</p>
    </div>
    <div class="location_block">
      <img src="/resources/img/location_car_icon.svg" alt="" class="subway_icon"> <b>주차</b>
      <p>상가 건물 지하주차장 이용</p>
      <b>주차장 이용 : 유료 (학원 방문 시 2시간 무료)</b>
    </div>
  </div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp" %>