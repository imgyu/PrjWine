<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>매장 정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #fff;
	text-align: center;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.store-container {
	display: flex;
	flex-wrap: wrap;
	max-width: 60%;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	height: 100vh;
}

.store-image {
	max-width: 100%;
	max-height: 300px;
	object-fit: contain;
	border-radius: 10px 10px 0 0;
}

.wine-details {
	flex-basis: 50%; /* 오른쪽 위 */
	padding: 20px;
}

.store-name {
	font-size: 36px;
	font-weight: bold;
	margin-bottom: 20px;
}

.store-detailAddress {
	font-size: 18px;
	margin-bottom: 70px;
}

.store-address {
	font-size: 18px;
	margin-bottom: 70px;
}

.store-cont {
	font-size: 26px;
	font-weight: bold;
	margin-bottom: 30px;
}

.store-link {
	text-decoration: none;
	color: #007bff;
	font-weight: bold;
	font-size: 18px;
}

#table {
   width: 70%;
   margin: 0 auto; /* 수평 가운데 정렬 */
   border-collapse: collapse; /* 테이블 셀 경계를 합칩니다. */
}

/* 테이블 헤더 스타일 */
#table th {
   background-color: #f2f2f2; /* 헤더 배경색 */
   border: 1px solid #dddddd; /* 테두리 선 스타일 */
   padding: 10px; /* 셀 안 여백 */
   text-align: center; /* 가운데 정렬 */
   font-weight: bold; /* 텍스트 굵게 표시 */
}

/* 테이블 내용 스타일 */
#table td {
   border: 1px solid #dddddd; /* 테두리 선 스타일 */
   padding: 10px; /* 셀 안 여백 */
   text-align: center; /* 가운데 정렬 */
}

</style>

</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>
<main>

	<c:forEach var="info" items="${storeInfo}">
		<h1 style="text-align: center; margin-top: 60px;">매장 정보</h1>
		<div class="store-container">
			<img class="store-image" src="/img/${info.s_simgname}" alt="매장사진" />

			<div class="wine-details">
				<div class="store-name">${info.s_name }</div>
				<div class="store-cont">${info.s_cont}</div>
				<div class="store-address">${info.s_address }</div>
				<div class="store-detailAddress">${info.s_detailAddress }</div>
			</div>
			<a class="winelist-link" href="/StoreWineManage?s_no=${info.s_no}"
				class="btn btn-primary">매장보유 와인</a>
	       <div id="map" style="width: 50%; height: 350px; float: left;"></div>
		   <div id="board" style="width: 50%; height: 350px; float: right;">
			 <table id="table">
			  <div class="container">
				<tr>
				 <th>No.</th>
				 <th>공지사항 제목</th>
				 <th>글작성자</th>
				</tr>
			  </div>
			  <div class="container">
				<c:forEach var="board" items="${boardList}">
				 <tr>
				  <td>${board.b_idx}</td>
				  <td><a href="/BoardCont?b_idx=${board.b_idx}&s_no=${board.s_no}">${board.b_title}</a></td>
				  <td>${board.s_name}</td>
				 </tr>
				</c:forEach>
			  </div>
			 </table>
			 <div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: center;">
			  <c:choose>
				<c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq info.s_no}">
				<form action="/BoardWriteForm?s_no=${sloginVo.s_no}" method="POST">
				 <button type="submit" class="btn btn-primary">새글작성</button>
				</form>
				</c:when>
			  </c:choose>
			 </div>
		    </div>
		</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e1bc19bc313fda7048dd34538eebc17&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${info.s_address}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${info.s_name}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>

	</c:forEach>
	
	
</main>
</body>
</html>
