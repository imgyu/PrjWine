<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head> 
    <title>와인 수정</title>
    <link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
        /* 전체 페이지 스타일 */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* 제목 스타일 */
        h1 {
            text-align: center;
            margin-top: 60px;
            margin-bottom: 60px;
        }

        /* 검색 폼 스타일 */
        form#search-form {
            text-align: center;
            margin-bottom: 20px;
        }

        form#search-form input[type="text"] {
            width: 300px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
        }

        form#search-form button[type="submit"] {
            padding: 5px 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* 드롭다운 버튼 스타일 */
        .dropdown {
            display: inline-block;
            margin-right: 10px;
        }

        /* 테이블 스타일 */
        #table {
            width: 70%;
            margin: 0 auto;
            border-collapse: collapse;
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

        /* 매장 홈으로 버튼 스타일 */
        .back-home-button {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
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

<main>

    <!-- 와인 목록 테이블 -->
      <form action="/WineUpdate?s_no=${s_no }&wl_idx=${idx}" method="POST">
      <%-- <input type="hidden" name="wl_idx" value="${idx.wl_idx }"> --%>
    <table id="table">
        <tr>
            <th>와인명</th>
            <th>국가</th>
            <th>품종</th>
            <th>수량</th>
            <th>가격</th>
            <th>빈티지</th>
            <th>수정/삭제</th>
        </tr>

        <!-- 예시 와인 데이터 -->
        <c:forEach var="select" items="${ selectList }">
        <tr>
            <td>${select.w_name }</td>
            <td>${select.w_location}</td>
            <td>${select.w_kind}</td>
            <td><input type="text" name="w_amount" value="${select.w_amount}" autocomplete="off" ></td>
            <td><input type="text" name="w_price" value="${select.w_price }" autocomplete="off"></td>
            <td>${select.w_vintage}</td>
            
             <td class="edit-delete-buttons">
             <button type="submit"class="btn btn-primary" id="editButton">수정</button>    
             <a class="btn btn-danger" href="/WineDelete?s_no=${select.s_no }&wl_idx=${select.wl_idx}"  id="deleteLink">삭제</a>
                       
            </td>
            
        </tr>
        </c:forEach>
        <!-- 다른 와인 데이터 추가 -->
    </table>
    </form>

    <!-- 매장 홈으로 버튼 -->
    <a href="/" class="btn btn-primary " style="">매장 홈으로</a>
    
</main>
<script>

document.getElementById("editButton").addEventListener("click", function(event) {
    var confirmation = confirm("수정 하시겠습니까?");
    if (!confirmation) {
        event.preventDefault(); // 수정 이벤트를 막음
    }
});

document.getElementById("deleteLink").addEventListener("click", function(event) {
    var confirmation = confirm("삭제하시겠습니까?");
    if (!confirmation) {
        event.preventDefault(); // 삭제 이벤트를 막음
    }
});

</script>

</script>
</body>
</html>