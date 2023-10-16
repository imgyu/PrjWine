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
<style>
.inputRound {
	border-radius: 5px;
}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<script>
	
</script>
</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>

	<h1 style="text-align: center; margin-top: 60px;">전체매장</h1>
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
					<h5 class="card-title">${store.s_name}</h5>
					<p class="card-text" style="max-height: 3em; overflow: hidden; line-height: 3em;">${store.s_cont}</p>
					<p class="card-text">${store.s_phone}</p>
					<p class="card-text">${store.s_address}</p>
					<p class="card-text">${store.s_detailAddress}</p>
					<a href="/StoreInfo?s_no=${store.s_no}" class="btn btn-primary">매장정보</a>
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
					<h5 class="card-title">${store.s_name}</h5>
					<p class="card-text" style="max-height: 3em; overflow: hidden; line-height: 3em;">${store.s_cont}</p>
					<p class="card-text">${store.s_phone}</p>
					<p class="card-text">${store.s_address}</p>
					<p class="card-text">${store.s_detailAddress}</p>
					<a href="/StoreInfo?s_no=${store.s_no}" class="btn btn-primary">매장정보</a>
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