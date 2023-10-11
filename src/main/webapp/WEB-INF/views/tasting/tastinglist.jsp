<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
   <title>신청한 시음회 목록</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
   <link rel="stylesheet"  href="/css/common.css" />
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
   <%@include file="/WEB-INF/include/nav.jsp" %>
<h1 style="text-align: center; margin-top: 60px; margin-bottom: 120px;">시음회 정보</h1>
   <main>
   <table id="table">
		<div class="container">
					<tr>
						<th>No.</th>
						<th>주최매장</th>
						<th>시음회이름</th>
						<th>시음회장소</th>
						<th>날짜/시간</th>
						<th>참가비</th>
					</tr>
			</div>
		<div class="container">
			<c:forEach var="tast" items="${tastList}">
				<tr>
					<td>${tast.t_idx}</td>
					<td>${tast.s_name}</td>
					<td>${tast.t_title}</td>
					<td>${tast.s_address}${tast.s_detailaddress}</td>
					<td>${tast.t_date}</td>
					<td>${tast.t_cost}</td>
				</tr>
			</c:forEach>
		</div>
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
	</main>
</body>
</html>
