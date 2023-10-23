<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<title>신청한 시음회 목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet"  href="/css/common.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
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
               <br>
                  <h1>시음회 게시판</h1>
                  <br>
                  <p>Wine Tasting Forum</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>
   <main>
   <table id="table">
      <div class="container">
               <tr>
                  <th>No.</th>
                  <th>주최매장</th>
                  <th>시음회이름</th>
                  <th>시음회장소</th>
                  <th>시음회내용</th>
                  <th>날짜/시간</th>
                  <th>참가비</th>
               </tr>
      </div>
      <div class="container">
         <c:forEach var="tast" items="${tastList}">
            <tr>
               <td>${tast.t_idx}</td>
               <td>${tast.s_name}</td>
               <td><a href="/TastingBoard?t_idx=${tast.t_idx}">${tast.t_title}</a></td>
               <td>${tast.s_address}${tast.s_detailaddress}</td>
               <td>${tast.t_cont}</td>
               <td><fmt:formatDate value="${tast.t_date}" pattern="yyyy-MM-dd HH:mm" /></td>
               <td>${tast.t_cost}</td>
            </tr>
         </c:forEach>
      </div>
   </table>
   <div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: center;">
   <c:choose>
       <c:when test="${not empty sloginVo.s_no}">
           <form action="/TastingWriteForm?s_no=${sloginVo.s_no}" method="POST" id="search-form">
              <button type="submit" class="btn btn-primary">새글작성</button>
           </form>
        </c:when>
   </c:choose>
   </div>
   <div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/TastingList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/TastingList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/TastingList?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>

</div>
   </main>
</body>
</html>