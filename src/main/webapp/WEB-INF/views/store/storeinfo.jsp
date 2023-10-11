<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	max-width: 70%;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	height: 100vh;
}

.store-image {
	max-width: 40%;
	border-radius: 10px;
	flex-basis: 50%; /* 왼쪽 위 */
	margin-bottom: 30px;
}

.store-content {
	flex-basis: 40%; /* 오른쪽 위 */
	padding: 5%;
	margin-left: 50px;
}

.store-name {
	font-size: 36px;
	font-weight: bold;
	margin-bottom: 10px;
}

.store-description {
	font-size: 18px;
	margin-bottom: 20px;
}

.store-phone {
	font-weight: bold;
	font-size: 20px;
	margin-bottom: 20px;
}

#map {
	width: 40%;
	height: 40%;
	border-radius: 10px;
	margin-bottom: 20px;
}

.store-button {
	/* 가로 크기 설정 */
	width: 180px;
	/* 세로 크기 설정 */
	height: 80px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	font-weight: bold;
	font-size: 20px;
	margin: 10px 20px 15px 55px;
}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
</head>
<%@include file="/WEB-INF/include/nav.jsp"%>
<body>
	<h1 style="text-align: center; margin-top: 60px;">매장찾기</h1>
	<div class="store-allconatiner">
		<div class="store-container">
			<img class="store-image" src="/img/test.jpg" alt="매장 사진">
			<div class="store-content">
				<div class="store-name">매장 이름</div>
				<div class="store-description">매장 설명 Lorem ipsum dolor sit
					amet, consectetur adipiscing elit.</div>
				<div class="store-phone">매장 전화번호: 123-456-7890</div>
			</div>
			<div id="map"></div>
			<a class="store-button" href="#">보유한와인리스트 보기</a>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d8fe692ba937f44b9898d9148f2dbd78"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						'제주특별자치도 제주시 첨단로 242',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
</body>

</html>