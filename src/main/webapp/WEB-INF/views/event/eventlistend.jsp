<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
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
			<li class="promotion-link"><a href="redirect:/EventList">이달의 프로모션</a></li>
			<li class="promotion-link"><a href="redirect:/EventListEnd">종료된 프로모션</a></li>
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
							<img src="/pageimg/${event.e_fimg}" alt="이미지">
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
	</form>
</body>
</html>