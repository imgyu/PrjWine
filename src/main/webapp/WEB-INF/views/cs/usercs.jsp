
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>(유저)고객 센터</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>


.container {
      margin: 20px auto; /* 페이지 중앙 정렬 */
   }
/* 검색 폼 스타일 */
form#search-form {
	text-align: center;
	margin-bottom: 20px;
}

form#search-form input[type="text"] {
	width: 218px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
}

/* 테이블 스타일 */
#table {
	width: 100%;
	margin: 0 auto;
	border-collapse: collapse;
	margin-bottom: 30px; /* 간격 추가 */
}

/* 테이블 헤더 스타일 */
#table th {
	background-color: #f2f2f2;
	border: 1px solid #dddddd;
	padding: 10px;
	text-align: center;
	font-weight: bold;
}

/* 테이블 셀 스타일 */
#table td {
	border: 1px solid #dddddd;
	padding: 10px;
	text-align: center;
}

/* 수정/삭제 버튼 스타일 */
.edit-delete-buttons {
	display: flex;
	justify-content: center;
}

.edit-delete-buttons form {
	display: inline-block;
	margin-right: 5px;
}

.edit-delete-buttons button {
	padding: 5px 10px;
	background-color: #ff0000;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

/* 매장 홈으로 버튼 스타일 */
.text-center {
	text-align: center; /* 가로 중앙 정렬 */
	display: flex;
	justify-content: center; /* 가로 중앙 정렬 */
}

.card-info {
	text-decoration: none;
	font-size: 18px; /* 글씨 크기 조절 */
	color: #000; /* 글씨 색상 추가 */
}

tr th {
	background-color: #800021 !important;
}

th {
	color: #ffffff !important; /* 테이블 헤더 글자색 */
	text-align: center; /* 헤더 텍스트 중앙 정렬 */
}

</style>

</head>

<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>고객 센터</h1>
				<br>
				<p>Customer Service</p>
			</div>
		</div>
	</div>
	<br>
	<br>
	<main>
	<div class="container">
		<table id="table" class="table table-striped table-hover">
			<tr>
				<th>문의번호</th>
				<th>카테고리</th>
				<th>문의제목</th>
				<th>문의날짜</th>
				<th>답변날짜</th>
			</tr>

			<c:forEach var="ucs" items="${usercsList}">

				<tr>
					<td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="card-info">${ucs.ucs_idx }</a></td>
					<td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="card-info">${ucs.ucs_category}</a></td>
					<td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="card-info">${ucs.ucs_title}</a></td>
					<td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="card-info">${ucs.uw_date}</a></td>
					<td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="card-info">${ucs.res_date}</a></td>
				</tr>
			</c:forEach>

		</table>
		</div>
		<div class="text-center">
			<a href="UserCsInquiryForm?u_no=${loginVo.u_no }"
				class="btn btn-primary">글쓰기</a>
		</div>
		<div class="pagination">

			<c:if test="${pds.startPage != 1 }">
				<a
					href="/UserCs?u_no=${u_no }&nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
			</c:if>
			<c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
				<c:choose>
					<c:when test="${p == pds.nowPage }">
						<a>${p}</a>
					</c:when>
					<c:when test="${p != page.nowPage }">
						<a
							href="/UserCs?u_no=${u_no }&nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${pds.endPage != pds.lastPage }">
				<a
					href="/UserCs?u_no=${u_no }&nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
			</c:if>
		</div>


	</main>
	<script>
		function selChange() {
			var sel = document.getElementById('cntPerPage').value;
			location.href = "boardList?nowPage=${paging.nowPage}&cntPerPage="
					+ sel;
		}
	</script>
</body>
</html>