<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>결제 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
    <style>
        /* 컨테이너 스타일링 */
        .container {
            margin-top: 40px;
        }

        /* 제목 스타일링 */
        .logintitle {
            text-align: center;
        }

        /* 사용자 정보 스타일링 */
        .user-info {
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
        }

        /* 주문 정보 스타일링 */
        .order-info {
            margin-top: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
        }

        /* 버튼 스타일링 */
        .btn-primary {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp" %>
<br>
<h2 class="logintitle">결제 확인</h2>
<br>
<div class="container">
    <form action="/" method="POST">
        <div class="user-info">
            <h2>주문자</h2>
            <c:forEach var="user" items="${userList}">
                <p><strong>이름:</strong> ${user.u_name }</p>
                <p><strong>주소:</strong> ${user.u_address }</p>
                <p><strong>휴대폰:</strong> ${user.u_phone }</p>
            </c:forEach>
        </div>
        
        <div class="order-info">
            <h2>주문 정보</h2>
            <c:forEach var="sel" items="${selCartList}">
                <p><strong>와인명:</strong> ${sel.w_name }</p>
                <p><strong>판매점:</strong> ${sel.s_name }</p>
                <p><strong>가격:</strong> ${sel.w_price }</p>
                <p><strong>수량:</strong> ${sel.c_count }</p>
                <p><strong>총가격:</strong> ${sel.c_allprice }</p>
            </c:forEach>
        </div>

        <div class="text-center">
            <div class="btn-group">
                <button class="btn btn-primary">결제</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
