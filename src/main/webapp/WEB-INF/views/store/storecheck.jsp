<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>매장 정보 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
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
                    <table>
                        <tr>
                            <td class="form-label">매장 아이디:</td>
                            <td class="form-text">${check.s_id}</td>
                        </tr>
                        <tr>
                            <td class="form-label">매장 이름:</td>
                            <td class="form-text">${check.s_name}</td>
                        </tr>
                        <tr>
                            <td class="form-label">사업자 번호:</td>
                            <td class="form-text">${check.s_sn}</td>
                        </tr>
                        <tr>
                            <td class="form-label">매장 주소:</td>
                            <td class="form-text">${check.s_address} ${check.s_detailAddress}</td>
                        </tr>
                        <tr>
                            <td class="form-label">매장 연락처:</td>
                            <td class="form-text">${check.s_phone}</td>
                        </tr>
                        <tr>
                            <td class="form-label">매장 소개:</td>
                            <td class="form-text">${check.s_cont}</td>
                        </tr>
                        <tr>
                            <td class="form-label">매장 사진:</td>
                            <td><img src="/imgpage/${check.s_simgname}" alt="매장사진" /></td>
                        </tr>
                    </table>
                </c:forEach>
                <div class="text-center">
                    <div class="btn-group">
                        <a type="button" class="btn1" onclick="location.href='/';">메인 화면</a>
                        <input type="submit" value="수정하기">
                    </div>
                </div>
                </table>
            </form>
        </div>
    </body>
</html>