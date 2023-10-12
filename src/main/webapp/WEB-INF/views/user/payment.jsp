<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>고객 정보 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <style>
        .logintitle {
            text-align: center;
            margin-top: 40px;
        }

        .container {
            margin: 0 auto;
            max-width: 500px;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .container p {
            margin: 10px 0;
            font-weight: bold;
        }

        .btn {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp" %>

<h2 class="logintitle">결제 확인</h2>
<div class="container">
    <form action="/" method="POST">
        <h2>주문자</h2>
    	<c:forEach var="user" items="${userList }">
            <div class="mb-3">
                <label for="userName" class="form-label">이름 : </label>
                <span id="userName" class="form-text">${user.u_name }</span>
            </div>
            <div class="mb-3">
                <label for="useraddress" class="form-label">주소 : </label>
                <span id="useraddress" class="form-text">${user.u_address }</span>
            </div>
            <div class="mb-3">
                <label for="userphone" class="form-label">휴대폰 : </label>
                <span id="userphone" class="form-text">${user.u_phone }</span>
            </div>
        </c:forEach>
        <h2>주문 정보</h2>
        <c:forEach var="cart" items="${cartList }">
            <div class="mb-3">
                <label for="userName" class="form-label">와인명 : </label>
                <span id="userName" class="form-text">${cart.w_name }</span>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">판매점 : </label>
                <span id="userName" class="form-text">${cart.s_name }</span>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">가격 : </label>
                <span id="userName" class="form-text">${cart.w_price }</span>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">수량 : </label>
                <span id="userName" class="form-text">${cart.c_count }</span>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">총가격 : </label>
                <span id="userName" class="form-text">${cart.c_allprice }</span>
            </div>
           </c:forEach> 
        <div class="text-center">
          <div class="btn-group">
             <button class="btn btn-primary" >결제</button>
          </div>
        </div>
    </form>
</div>

</body>
</html>
