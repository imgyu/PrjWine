<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">

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
	<c:forEach var="event" items="${eventList}">
		<div>
			<ul class="ul1">
				<li><h2>${event.e_title}</h2></li>
				<li><fmt:formatDate value="${event.e_sdate}"
						pattern="yyyy.MM.dd" />~<fmt:formatDate value="${event.e_edate}"
						pattern="yyyy.MM.dd" /></li>
			</ul>
		</div>
		<hr>
		<form action="/EventContDelete?e_idx=${event.e_idx}" method="POST">
			<table>
				<div>
					<img src="/pageimg/${event.e_bimg}">
				</div>
			</table>
			<c:if test="${sloginVo.s_no == 99}">
				<input type="submit" value="삭제" onclick="confirmDelete(event)">
			</c:if>
			<input class="btn1" type="button" value="목록으로"
				onclick="history.back()" style="margin: auto">
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