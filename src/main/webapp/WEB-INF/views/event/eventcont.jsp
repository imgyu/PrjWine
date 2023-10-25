<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
.event-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 20px;
    margin: 20px;
}

.event-details {
    margin-bottom: 20px;
}

.event-title {
    font-size: 1.5rem;
    font-weight: bold;
}

.event-dates {
    font-style: italic;
    margin-top: 10px;
}

.event-image {
    max-width: 100%;
    max-height: 100%;
    object-fit: cover;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-top: 10px;
}

.event-button {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-weight: bold;
    cursor: pointer;
    margin: 10px;
}

.event-button.event-delete {
    background-color: #DC3545; /* 삭제 버튼 색상 */
}

.event-button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>프로모션</h1>
               <br>
               <p>Promotion</p>
            </div>
         </div>
      </div>
<br>
<br>
<c:forEach var="event" items="${eventList}">
    <div class="event-card">
        <div class="event-details">
            <h2 class="event-title">${event.e_title}</h2>
            <p class="event-dates">
                <fmt:formatDate value="${event.e_sdate}" pattern="yyyy.MM.dd" /> ~
                <fmt:formatDate value="${event.e_edate}" pattern="yyyy.MM.dd" />
            </p>
        </div>
        <img class="event-image" src="/imgpage/${event.e_bimg}" alt="이미지">
        <form action="/EventContDelete?e_idx=${event.e_idx}" method="POST">
            <c:if test="${sloginVo.s_no == 99}">
                <input type="submit" class="event-button event-delete" value="삭제" onclick="confirmDelete(event)">
            </c:if>
            <input class="event-button event-back" type="button" value="목록으로" onclick="history.back()">
        </form>
    </div>
    <hr>
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