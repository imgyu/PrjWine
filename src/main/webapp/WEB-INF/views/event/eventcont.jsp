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
    .ul1 {
        list-style-type: none;
        padding: 0;
        display: flex;
        justify-content: space-between;
        list-style-type: none; 
        width: 70%;
        margin: 0 auto;
        text-align: center;
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

    table {
        border-collapse: collapse;
        margin: 0 auto;
    }

    table, th, td {
        border: none;
        max-width: 60%;
    }
    .btn1 {
    margin-top: 50px;
    background: #933149;
    border: 1px solid #AC8B68;
    color: #fff;
    font-size: 20px;
    display: block;
    width: 200px;
    height: 50px;
    line-height: 50px;
    border-radius: 4px;
    }
    .div1{
    margin: 0 auto;
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
<div>

</div>
<c:forEach var="event" items="${eventList}">
<div>
  <ul class="ul1">
	<li><h2>${event.e_title}</h2></li>
	<li><fmt:formatDate value="${event.e_sdate}" pattern="yyyy.MM.dd" />~<fmt:formatDate value="${event.e_edate}" pattern="yyyy.MM.dd" /></li>
  </ul>
</div>
<hr>
	<form action="/EventContDelete?e_idx=${event.e_idx}" method="POST">
		<table>
		<div class="div1">
			<img src="/img/${event.e_bimg}">
		</div>
		</table>
		<c:if test="${sloginVo.s_no == 99}">
			<input type="submit" value="삭제" onclick="confirmDelete(event)">
		</c:if>
		<input class="btn1" type="button" value="목록으로" onclick="history.back()" style="margin: auto">
	</form>
</c:forEach>	
<script>

function confirmDelete(event) {
    var confirmDelete = confirm("정말 삭제하시겠습니까?");
    
    if (!confirmDelete) {
        // "아니요"를 선택한 경우 이벤트를 중단하여 삭제 동작을 막음
        event.preventDefault();
    }
}
</script>
</body>
</html>