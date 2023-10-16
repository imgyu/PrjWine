<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
   crossorigin="anonymous"></script>
<script>
    // all 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="all_click"]').addEventListener('click', function() {
        location.href = '/All_Click';
    });
    
    // Red 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="red_click"]').addEventListener('click', function() {
        location.href = '/Red_Click';
    });

    // White 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="white_click"]').addEventListener('click', function() {
        location.href = '/White_Click';
    });

    // Sparkling 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="sparkling_click"]').addEventListener('click', function() {
        location.href = '/Sparkling_Click';
    });

    // Rose 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="rose_click"]').addEventListener('click', function() {
        location.href = '/Rose_Click';
    });

    // Other 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="other_click"]').addEventListener('click', function() {
        location.href = '/Other_Click';
    });
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
<div class="top-header-area" id="sticker">
   <%@include file="/WEB-INF/include/nav.jsp"%>

   <h1 style="text-align: center; margin-top: 60px;">전체와인</h1>
   <br>
   <br>

   <!-- 와인 검색start -->
   <div class="container">
      <!-- 버튼 검색 -->
      <div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <li class="active" data-filter="*" onclick="window.location.href = '/All_Click';" name="All_click">all</li>
                            <li data-filter=".red_click" onclick="window.location.href = '/Red_Click';" name="red_click">레드와인</li>
                            <li data-filter=".white_click" onclick="window.location.href = '/White_Click';" name="white_click">화이트와인</li>
                            <li data-filter=".sparkling_click" onclick="window.location.href = '/Sparkling_Click';" name="sparkling_click">스파클링</li>
                            <li data-filter=".rose_click" onclick="window.location.href = '/Rose_Click';" name="rose_click">로제와인</li>
                            <li data-filter=".other_click" onclick="window.location.href = '/Other_Click';" name="other_click">기타와인</li>
                        </ul>
                    </div>
                    </div></div></div></div>
      <br>
      <br>
      <!-- input 검색 -->
      <div>
         <form action="/NameSearch" method="POST">
            <input type="search"   name="name_Search" placeholder="와인이름">
            <input type="submit"   value="찾기">
         </form>
      </div>
   </div>
   <!-- 와인 검색end -->
   
   <c:set var="wine" value="" />

	<c:choose>
    <c:when test="${not empty redClick}">
        <c:set var="wine" value="${redClick}" />
    </c:when>
    <c:when test="${not empty whiteClick}">
        <c:set var="wine" value="${whiteClick}" />
    </c:when>
    <c:when test="${not empty sparkClick}">
        <c:set var="wine" value="${sparkClick}" />
    </c:when>
    <c:when test="${not empty roseClick}">
        <c:set var="wine" value="${roseClick}" />
    </c:when>
    <c:when test="${not empty otherClick}">
        <c:set var="wine" value="${otherClick}" />
    </c:when>
    <c:when test="${not empty nameSearch}">
        <c:set var="wine" value="${nameSearch}" />
    </c:when>
    <c:otherwise>
        <c:set var="wine" value="${allClick}" />
    </c:otherwise>
</c:choose>

	<div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${wine}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
   				 <img src="${wine.w_image}" alt="와인이미지" style="width: 300px; height: 300px; object-fit: contain;">
			</div>
            <div class="card-body">
               <h5 class="card-title" style="max-height: 3em; overflow: hidden; line-height: 3em;">${wine.w_name}</h5>
              <c:choose>
    			<c:when test="${empty wine.w_wineery}">
        		  <p class="card-text" style="max-height: 1em; overflow: hidden; line-height: 1em;">&nbsp;</p>
    			</c:when>
    			<c:otherwise>
        		  <p class="card-text" style="max-height: 1em; overflow: hidden; line-height: 1em;">${wine.w_wineery}</p>
    			</c:otherwise>
			  </c:choose>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
</div>
</body>
</html>