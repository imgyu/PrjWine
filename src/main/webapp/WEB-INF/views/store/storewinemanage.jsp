<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>와인 목록</title>
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
        <!-- 버튼 검색 -->
        <div class="container">
            <form action="/StoreListSearch" method="GET" id="search-form">
                <input type="hidden" name="s_no" value="${s_no}" />
                <div class="row">
                    <div class="col-md-3">
                        <select class="form-select" name="searchOption">
                            <option value="All">전체</option>
                            <option value="w_name">이름</option>
                            <option value="w_location">국가</option>
                            <option value="w_vintage">빈티지</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" name="kindOption">
                            <option value="w_kind">품종</option>
                            <option value="PORT">PORT</option>
                            <option value="DESSERT">DESSERT</option>
                            <option value="RED">RED</option>
                            <option value="ROSE">ROSE</option>
                            <option value="WHITE">WHITE</option>
                            <option value="SPARKLING">SPARKLING</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" name="amountOption">
                            <option value="choose">선택</option>
                            <option value="w_amount">수량↑</option>
                            <option value="w_amountDown">수량↓</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <div class="input-group">
                            <input type="text" class="form-control" name="searchKeyword" placeholder="검색어 입력">
                                <button type="submit" class="btn btn-primary">검색</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br> <br>

        <table id="table">
            <tr>
                <th>와인명</th>
                <th>국가</th>
                <th>품종</th>
                <th>수량</th>
                <th>가격</th>
                <th>빈티지</th>
                <th></th>
            </tr>

            <!-- 검색하지 않았을떄  -->
            <c:if test="${not empty wineList }">
                <c:forEach var="wine" items="${wineList }">
                    <tr>
                        <td>${wine.w_name }</td>
                        <td>${wine.w_location}</td>
                        <td>${wine.w_kind}</td>
                        <td>${wine.w_amount}</td>
                        <td>${wine.w_price }</td>
                        <td>${wine.w_vintage}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty loginVo.u_no}">
                                    <form action="/AddCart" method="POST">
                                        <input type="hidden" name="u_no" value="${loginVo.u_no}">
                                        <input type="hidden" name="w_no" value="${wine.w_no}">
                                        <input type="hidden" name="s_no" value="${wine.s_no}">
                                        <input id="text1" type="text" name="c_count" placeholder="수량 입력">
                                        <input type="submit" value="장바구니에 추가" onclick="myFunction()">
                                    </form>
                                </c:when>
                                <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq wine.s_no }">
                                    <a href="/WineUpdateForm?s_no=${wine.s_no}&wl_idx=${wine.wl_idx}"
                                        class="btn btn-primary">수정</a>
                                </c:when>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>

            <c:if test="${not empty storeListSearch }">
                <c:forEach var="Search" items="${storeListSearch }">
                    <tr>
                        <td>${Search.w_name }</td>
                        <td>${Search.w_location}</td>
                        <td>${Search.w_kind}</td>
                        <td>${Search.w_amount}</td>
                        <td>${Search.w_price }</td>
                        <td>${Search.w_vintage}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty loginVo.u_no}">
                                    <form action="/AddCart" method="POST">
                                        <input type="hidden" name="u_no" value="${loginVo.u_no}">
                                        <input type="hidden" name="w_no" value="${Search.w_no}">
                                        <input type="hidden" name="s_no" value="${Search.s_no}">
                                        <input id="text1" type="text" name="c_count" placeholder="수량 입력">
                                        <input type="submit" value="장바구니에 추가" onclick="myFunction()">
                                    </form>
                                </c:when>
                                <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq Search.s_no }">
                                    <input id="text1" type="text" name="w_amount" placeholder="수량 입력">
                                    <a href="/WineUpdateForm?s_no=${Search.s_no }&wl_idx=${Search.wl_idx}"
                                        class="btn btn-primary">수정</a>
                                </c:when>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
        <div style="display: block; text-align: center;">

    <c:if test="${not empty pds && pds.startPage != 1 }">
    <a href="/StoreWineManaget?s_no=${s_no }&nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/StoreWineManage?s_no=${s_no }&nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/StoreWineManage?s_no=${s_no }&nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>
</div>
        <!-- 매장 홈으로 버튼 -->
        <div class="back-home-button">
            <button class="btn btn-primary" onclick="history.back();">매장 홈으로</button>
        </div>
    </main>
    <script>
        function myFunction() {
            alert("장바구니에 추가되었습니다");
        }
    </script>
</body>
</html>