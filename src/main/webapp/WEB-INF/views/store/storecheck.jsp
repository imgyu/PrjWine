<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>매장 정보 확인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
.container1 {
	margin: 0 auto;
	max-width: 500px;
	padding: 20px;
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	border-radius: 5px;
}

     .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .th, .td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        .form-label {
            background-color: #f2f2f2;
            width: 30%; /* 표 제목 너비 조정 */
        }

        .form-text {
            width: 70%; /* 표 데이터 너비 조정 */
        }

        .img {
            max-width: 300px; /* 사진 크기 제한 */
            display: block; /* 사진을 가운데 정렬하기 위해 추가 */
            margin: 0 auto; /* 가운데 정렬 */
        }
    </style>
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
	<div class="container1">
		<form action="StoreCheckUpdateForm?s_no=${s_no}" method="POST">
			<table>
				<colgroup>
					<col width="25%">
					<col width="*">
				</colgroup>
				<c:forEach var="check" items="${storeCheck}">
					<table class="table">
						<tr class="tr">
							<th class="form-label">매장 아이디:</td>
							<td class="form-text">${check.s_id}</td>
						</tr>
						<tr class="tr">
							<th class="form-label">매장 이름:</td>
							<td class="form-text">${check.s_name}</td>
						</tr>
						<tr class="tr">
							<th class="form-label">사업자 번호:</td>
							<td class="form-text">${check.s_sn}</td>
						</tr>
						<tr class="tr">
							<th class="form-label">매장 주소:</td>
							<td class="form-text">${check.s_address}
								${check.s_detailAddress}</td>
						</tr>
						<tr class="tr">
							<th class="form-label">매장 연락처:</td>
							<td class="form-text">${check.s_phone}</td>
						</tr>
						<tr class="tr">
							<th class="form-label">매장 소개:</td>
							<td class="form-text">${check.s_cont}</td>
						</tr>
						<tr class="tr">
							<th class="form-label">매장 사진:</td>
							<td><img src="/imgpage/${check.s_simgname}" alt="매장사진" class="img"/></td>
						</tr>
					</table>
				</c:forEach>
				<div class="text-center">
						<a type="button" class="btn btn-secondary" onclick="location.href='/';" style="margin-right: 10px;">메인
							화면</a> 
							<input type="submit" value="수정하기" class="btn btn-primary" style="margin-left: 10px;">
				</div>
			</table>
		</form>
	</div>
</body>
</html>