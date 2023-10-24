<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>고객 정보 확인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
.logintitle {
	text-align: center;
	margin-top: 40px;
}

.container1 {
	margin: 0 auto;
	max-width: 500px;
	padding: 20px;
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.container1 p {
	margin: 10px 0;
	font-weight: bold;
}

th {
    width: 120px;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
         </div>
   <br>
   <br>
<div class="container1">
    <form action="/UserUpdateForm?u_no=${u_no}" method="POST">
        <c:forEach var="user" items="${userList}">
            <table class="table table-bordered">
                <tr>
                    <th>아이디:</th>
                    <td>${user.u_id}</td>
                </tr>
                <tr>
                    <th>이름:</th>
                    <td>${user.u_name}</td>
                </tr>
                <tr>
                    <th>주소:</th>
                    <td>${user.u_address}&nbsp;${user.u_detailAddress}</td>
                </tr>
                <tr>
                    <th>연락처:</th>
                    <td>${user.u_phone}</td>
                </tr>
            </table>
        </c:forEach>
        <div class="text-center">
           <button type="submit" class="btn btn-primary">수정하기</button>
           <button type="button" class="btn btn-secondary" onclick="location.href='/ '">메인 화면</button>
           <a href="UserPwUpdateForm?u_no=${u_no}" class="btn btn-primary">비밀번호 변경</a>
        </div>
    </form>
</div>

</body>
</html>
