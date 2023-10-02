<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매장 정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }

        .store-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .store-image {
            max-width: 100%;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .store-name {
            font-size: 24px;
            font-weight: bold;
        }

        .store-description {
            margin: 10px 0;
        }

        .store-phone {
            font-weight: bold;
        }

        .store-map {
            width: 100%;
            height: 300px; /* 지도 높이 조절 */
            margin: 10px 0;
        }

        .store-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>

 <%@include file="/WEB-INF/include/nav.jsp" %>
 
    <div class="store-container" style="margin-top: 100px;">
        <img class="store-image" src="매장사진.jpg" alt="매장 사진">
        <div class="store-name">매장 이름</div>
        <div class="store-description">매장 설명 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
        <div class="store-phone">매장 전화번호: 123-456-7890</div>
        <iframe class="store-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d102460.15656306557!2d-74.00661062525746!3d40.712775410728714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2589e2bde4b93%3A0xde1d3d6e5c60703b!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sin!4v1577490317840!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        <a class="store-button" href="#">더 자세히 보기</a>
    </div>
</body>
</html>