<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>와인 정보</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .wine-container {
            max-width: 70%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .wine-image {
            max-width: 100%;
            border-radius: 10px;
        }

        .wine-details {
            padding: 20px;
        }

        .wine-name {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .wine-description {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .store-link {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            font-size: 20px;
        }
    </style>
    <%@include file="/WEB-INF/include/nav.jsp" %>
</head>
<body>
    <h1 style="text-align: center; margin-top: 60px;">와인 정보</h1>
    <div class="wine-container">
        <img class="wine-image" src="와인사진.jpg" alt="와인 사진">
        <div class="wine-details">
            <div class="wine-name">와인 이름</div>
            <div class="wine-description">와인 설명 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
            <a class="store-link" href="/매장페이지">와인을 보유한 매장</a>
        </div>
    </div>
</body>
</html>