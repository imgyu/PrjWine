<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
.logintitle {
    text-align: center;
    margin-top: 40px;
}

.container {
    margin: 0 auto; /* 상하여백 좌우여백 */
    max-width: 600px; /* 최대 폭 지정 */
}

form {
    padding: 20px;
    border: 2px solid #ccc;
    border-radius: 5px;
    background-color: #f2f2f2;
}

form div {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

textarea {
    resize: vertical; /* 세로 크기 조절 허용 */
    min-height: 100px; /* 최소 높이 지정 */
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: center;
    background-color: #f2f2f2;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>

<h2 class="logintitle">시음회 이름</h2><br>
    <c:forEach var="tast" items="${tastingBoard}">
<div class="container">
   <table>
        <tr>
            <th>No.</th>
            <td>${tast.t_idx}</td>
        </tr>
        <tr>
            <th>시음회 이름</th>
            <td>${tast.t_title}</td>
        </tr>
        <tr>
            <th>시음회 내용 설명</th>
            <td>${tast.t_cont}</td>
        </tr>
        <tr>
            <th>와인이름</th>
            <td>${tast.w_name}</td>
        </tr>
        <tr>
            <th>제조국가</th>
            <td>${tast.w_location}</td>
        </tr>
        <tr>
            <th>와인종류</th>
            <td>${tast.w_kind}</td>
        </tr>
        <tr>
            <th>빈티지</th>
            <td>${tast.w_vintage}</td>
        </tr>
        <tr>
            <th>시음회장소</th>
            <td>${tast.s_address}${tast.s_detailaddress}</td>
        </tr>
        <tr>
            <th>시음회시간</th>
            <td>${tast.t_date}</td>
        </tr>
        <tr>
            <th>참가비</th>
            <td>${tast.t_cost}</td>
        </tr>
</div>
    </table>
<div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: left; margin: 0 auto; max-width: 600px;">
	<c:choose>
    	<c:when test="${not empty loginVo.u_no}">
        	<form action="/TastingWriteForm?u_no=${loginVo.u_no}" method="POST">
              <button type="submit" class="btn btn-primary">신청</button>
        	</form>
        </c:when>
    	<c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq tast.s_no }">
        	<form action="/TastingListDelete?t_idx=${tast.t_idx}" method="POST">
              <button type="submit" class="btn btn-primary">삭제</button>
        	</form>
        </c:when>
	</c:choose>
    </c:forEach>
</div>
</body>
</html>