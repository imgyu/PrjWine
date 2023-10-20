<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>매장 정보 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
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
            max-width: 30%;
            height: auto;
        }
         .btn1 {
    font-family: 'Poppins', sans-serif;
    display: inline-block;
    background-color: #F28123;
    color: #fff;
    padding: 13px 25px;
    border-radius: 50px;
    transition: 0.3s;
    box-sizing: border-box;
    border: none; /* 경계선 없음 */
    cursor: pointer; /* 포인터 커서로 변경 */
    font-weight: 700;
    font-size: 15px;
    border: none;
}

/* 호버(마우스 오버) 시의 버튼 스타일 */
.btn1:hover {
    background-color: #000; 
    color: #F28123;
} 
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
       <!-- jquery -->
   <script src="assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="assets/js/main.js"></script>
</head>
<body>
 <%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>
    
    
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
                    <img src="/pageimg/${check.s_simgname}" alt="매장사진" />
                </div>
            </c:forEach>
            <div class="text-center">
                <div class="btn-group">
                    <a type="button" class="btn1" onclick="location.href='/';">메인 화면</a>
                    <input type="submit" value="수정하기">
                </div>
            </div>
        </form>
    </div>
</body>
</html>
