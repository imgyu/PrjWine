<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>매장 찾기</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<style>
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous">
</script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>Welcome to Wine Story</h1>
				<br>
				<p class="subtitle">Hello!!</p>
			</div>
		</div>
	</div>
	<br>
	<br>

	<!-- 매장 검색start -->
	<div class="container">
	<div class="search-container">
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
						<img src="/imgpage/${store.s_simgname}" alt="매장사진"
							style="max-width: 100%; height: 100%; object-fit: contain;" />
					</div>
					<h5 class="card-title"><i class="fas fa-briefcase">&nbsp;${store.s_name}</i></h5>
					<p class="card-text" style="max-height: 3em; overflow: hidden; line-height: 3em;">${store.s_cont}</p>
					<p class="card-text"><i class="fas fa-user">&nbsp;${store.s_phone}</i></p>
					<p class="card-text"><i class="fas fa-map">&nbsp;${store.s_address}&nbsp;${store.s_detailAddress}</i></p>
					<a href="/StoreInfo?s_no=${store.s_no}" class="cart-btn">매장정보</a>
					<c:choose>
					<c:when test="${not empty loginVo.u_no}">
					 <a href="/UserFavoritesInsert?u_no=${loginVo.u_no}&s_no=${store.s_no}" class="btn cart-btn" onclick="return confirmAndRedirect();">관심매장</a>
					</c:when>
					</c:choose>
				</div>
			</div>
		</c:forEach>
 </div>
   <div style="display: block; text-align: center;">
    <c:choose>
        <c:when test="${not empty pds && pds.startPage != 1 }">
            <a href="/StoreList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
        </c:when>
    </c:choose>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
        <c:choose>
            <c:when test="${p == pds.nowPage }">
                <b>${p}</b> 
            </c:when>
            <c:when test="${p != pds.nowPage }">
                <a href="/StoreList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
            </c:when>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${not empty pds && pds.endPage != pds.lastPage && pds.endPage != 0 }">
            <a href="/StoreList?nowPage=${pds.endPage+1 }&cntPerPage${pds.cntPerPage}">&gt;</a>
        </c:when>
    </c:choose>
</div>




</body>
<script>
function confirmAndRedirect() {
    if (confirm('관심매장 등록하시겠습니까?')) {
        alert('등록되었습니다');
    } else  {
    	alert("취소하였습니다");
        return false; // 링크를 직접 실행하지 않음
    }
}

</script>
</html>