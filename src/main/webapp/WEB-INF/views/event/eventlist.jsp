<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/main.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<style>
    .event-button {
        width: 70%; /* 중앙 70% 폭 설정 */
        margin: 0 auto; /* 가운데 정렬 */
    }

    .event-button ul {
        list-style-type: none;
        padding: 0;
        display: flex;
        justify-content: space-between;
    }

    .promotion-link {
        flex: 1;
        text-align: center; /* 가운데 정렬 */
    }

    .promotion-link a {
        display: block;
        text-decoration: none;
        color: #000;
        font-weight: bold;
        padding: 10px; /* 내부 여백 설정 */
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .table1 {
        border-collapse: collapse;
        margin: 0 auto;  
        max-width: 580px; 
        max-height: 420px; 
        width: 100%; ;
        height: 100%; 
    }

    .table1, th, td {
        border: none;
    }
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.countdown.js"></script>
<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
<script src="assets/js/waypoints.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/jquery.meanmenu.min.js"></script>
<script src="assets/js/sticker.js"></script>
<script src="assets/js/main.js"></script></head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
   <div class="container">
      <div class="row">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>이벤트</h1>
               <br>
               <p>프로모션 Information</p>
            </div>
         </div>
      </div>
   </div>
</div>
<br>
<br>
	<div class="event-button">
		<ul>
			<li class="promotion-link"><a href="/EventList">이달의 프로모션</a></li>
			<li class="promotion-link"><a href="/EventListEnd">종료된 프로모션</a></li>
		</ul>
	</div>
	<form action="/EventInsertForm" method="POST">
  <table>
	 <div class="container1">
        <div class="row">
            <c:forEach var="event" items="${eventList}">
				<div class="col-lg-6">
					<a href="/EventCont?e_idx=${event.e_idx}&e_bimg=${e_bimg}">
						<div class="event-card">
							<img src="/img/${event.e_fimg}" alt="이미지">
							<h3>${event.e_title}</h3>
							<p><fmt:formatDate value="${event.e_sdate}" pattern="yyyy.MM.dd" />~<fmt:formatDate value="${event.e_edate}" pattern="yyyy.MM.dd" /></p>
						</div>
					</a>
				</div>
				<br>
			</c:forEach>
        </div>
    </div>
		</table>
		<c:if test="${sloginVo.s_no == 99}">
        <input type="submit" value="글 쓰기">
    </c:if>
	</form>
</body>
</html>