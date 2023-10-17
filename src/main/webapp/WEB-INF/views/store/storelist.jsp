<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>매장 찾기</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
<style>
.inputRound {
	border-radius: 5px;
}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous">
</script>
   <!-- jquery -->
   <script src="assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="assets/js/main.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Store Information</p>
						<h1>전체매장</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>

	<!-- 매장 검색start -->
	<div class="container">
		<div>
			<form action="/SnameSearch" method="POST">
				<input type="search" name="sname_Search" placeholder="매장이름">
				<input type="submit" value="찾기">
			</form>
		</div>
	</div>
	<!-- 매장 검색end -->

	<!--  매장 리스트  -->
	<div class="container"
		style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
		<c:forEach var="store" items="${storeList}">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
						<img src="/img/${store.s_simgname}" alt="매장사진"
							style="width: 100%; height: 100%; object-fit: contain;" />
					</div>
					<h5 class="card-title"><i class="fas fa-briefcase">&nbsp;${store.s_name}</i></h5>
					<p class="card-text" style="max-height: 3em; overflow: hidden; line-height: 3em;">${store.s_cont}</p>
					<p class="card-text"><i class="fas fa-user">&nbsp;${store.s_phone}</i></p>
					<p class="card-text"><i class="fas fa-map">&nbsp;${store.s_address}</i></p>
					<p class="card-text"><i class="fas fa-map">&nbsp;${store.s_detailAddress}</i></p>
					<a href="/StoreInfo?s_no=${store.s_no}" class="cart-btn">매장정보</a>
					<c:choose>
					<c:when test="${not empty loginVo.u_no}">
					<a href="/CartList?u_no=${loginVo.u_no}" class="btn btn-primary">관심매장</a>
					</c:when>
					</c:choose>
				</div>
			</div>
		</c:forEach>
	</div>

	<!--  매장 리스트  -->
	<div class="container"
		style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
		<c:forEach var="store" items="${snameSearch}">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
						<img src="/img/${store.s_simgname}" alt="매장사진"
							style="width: 100%; height: 100%; object-fit: contain;" />
					</div>
					<h5 class="card-title"><i class="fas fa-briefcase">&nbsp;${store.s_name}</i></h5>
					<p class="card-text" style="max-height: 3em; overflow: hidden; line-height: 3em;">${store.s_cont}</p>
					<p class="card-text"><i class="fas fa-user">${store.s_phone}</i></p>
					<p class="card-text">${store.s_address}</p>
					<p class="card-text">${store.s_detailAddress}</p>
					<a href="/StoreInfo?s_no=${store.s_no}" class="cart-btn">매장정보</a>
					<c:choose>
					 <c:when test="${not empty loginVo.u_no}">
					  <a href="/CartList?u_no=${loginVo.u_no}" class="btn btn-primary">관심매장</a>
					 </c:when>
					</c:choose>
				</div>
			</div>
		</c:forEach>
	</div>



</body>
</html>