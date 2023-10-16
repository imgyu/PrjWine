<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>매장 정보 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        .container {
            margin: 20px auto; /* 중앙 정렬 및 여백 추가 */
        }
        .storetitle {
            text-align: center;
            margin-top: 40px;
        }
        .form-label {
            font-weight: bold;
        }
        .form-text {
            font-weight: normal;
        }
        .btn-group {
            text-align: center;
        }
        .btn-group button {
            margin: 10px;
        }
        img {
            max-width: 100%;
            height: auto;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
    <%@include file="/WEB-INF/include/nav.jsp" %>
    <h2 class="storetitle">매장 정보 확인</h2>
    <div class="container">
        <form action="StoreCheckUpdateForm?s_no=${s_no }" method="POST">
            <c:forEach var="check" items="${storeCheck }">
                <div class="mb-3">
                    <label for="storeId" class="form-label">매장 아이디:</label>
                    <span id="storeId" class="form-text">${check.s_id }</span>
                </div>
                <div class="mb-3">
                    <label for="storeName" class="form-label">매장 이름:</label>
                    <span id="storeName" class="form-text">${check.s_name }</span>
                </div>
                <div class="mb-3">
                    <label for="storeName" class="form-label">사업자 번호:</label>
                    <span id="s_sn" class="form-text">${check.s_sn }</span>
                </div>
                <div class="mb-3">
                    <label for="storeAddress" class="form-label">매장 주소:</label>
                    <span id="storeAddress" class="form-text">${check.s_address }</span>&nbsp;&nbsp;
                    <span id="storedetail" class="form-text">${check.s_detailAddress }</span>
                </div>
                <div class="mb-3">
                    <label for="storePhone" class="form-label">매장 연락처:</label>
                    <span id="storePhone" class="form-text">${check.s_phone }</span>
                </div>
                <div class="mb-3">
                    <label for="storeCont" class="form-label">매장 소개:</label>
                    <span id="storeCont" class="form-text">${check.s_cont }</span>
                </div>
                <div class="mb-3">
                    <label for="storeIMG" class="form-label">매장 사진</label>
                    <img src="/img/${check.s_simgname }" alt="매장사진" />
                </div>
            </c:forEach>
            <div class="text-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-primary mx-2" onclick="location.href='/';">메인 화면</button>
                    <button type="submit" class="btn btn-primary mx-2">수정하기</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
