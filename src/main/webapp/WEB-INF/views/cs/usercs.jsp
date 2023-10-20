<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>(유저)고객 센터</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
    crossorigin="anonymous">
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
   width: 218px;
   padding: 5px;
   border: 1px solid #ccc;
   border-radius: 5px;
   margin-right: 10px;
}

    .dropdown-group {
        text-align: center;
        margin-top: 20px;
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
        margin-bottom: 30px; /* 간격 추가 */
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

    /* 수정/삭제 버튼 스타일 */
    .edit-delete-buttons {
        display: flex;
        justify-content: center;
    }

    .edit-delete-buttons form {
        display: inline-block;
        margin-right: 5px;
    }

    .edit-delete-buttons button {
        padding: 5px 10px;
        background-color: #ff0000;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    /* 매장 홈으로 버튼 스타일 */
    .back-home-button {
        text-align: center;
        margin-top: 20px;
    }
</style>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
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
   <script>
   function selChange() {
      var sel = document.getElementById('cntPerPage').value;
      location.href="boardList?nowPage=${paging.nowPage}&cntPerPage="+sel;
   }
</script>
</head>

<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
     <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>(유저)고객 센터</h1>
                  <br>
                  <p>Customer Service</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>

    <main>

        <table id="table">
            <tr>
                <th>문의번호</th>
                <th>카테고리</th>
                <th>문의제목</th>
                <th>문의날짜</th>
                <th>답변날짜</th>
            </tr>

                <c:forEach var="ucs" items="${usercsList}">

                    <tr>
            <td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_idx }</a></td>
                        <td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_category}</a></td>
                        <td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_title}</a></td>
                        <td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.uw_date}</a></td>
                        <td><a href="/CsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.res_date}</a></td>
                    </tr>
                </c:forEach>

        </table>
          <a href="UserCsInquiryForm?u_no=${loginVo.u_no }" class="btn btn-primary">글쓰기</a>

   

    </main>
        
</body>
</html>