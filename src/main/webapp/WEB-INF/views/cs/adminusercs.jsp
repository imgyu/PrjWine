<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>고객 센터(유저)</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
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
      .event-button {
        width: 70%; /* 중앙 70% 폭 설정 */
        margin: 0 auto; /* 가운데 정렬 */
    }

    .event-button ul {
        list-style-type: none;
        padding: 0;
        display: flex;
        justify-content: space-between;
    }

    .promotion-link {
        flex: 1;
        text-align: center; /* 가운데 정렬 */
    }

    .promotion-link a {
        display: block;
        text-decoration: none;
        color: #000;
        font-weight: bold;
        padding: 10px; /* 내부 여백 설정 */
        border: 1px solid #ccc;
        border-radius: 5px;
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
                  <h1>고객 센터(유저)</h1>
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
     <%--    <!-- 버튼 검색 -->
        <div class="container">
            <form action="/UcsCategorySearch" method="GET" id="search-form">
                <input type="hidden" name="u_no" value="${u_no}" />
                <div class="row">
                    <div class="col-md-3">
                        <select class="form-select" name="ucs_category">
                            <option value="ucs_category">카테고리</option>
                            <option value="계정관리">계정관리</option>
                            <option value="결제/환불">결제/환불</option>
                            <option value="입점문의">입점문의</option>
                            <option value="건의사항">건의사항</option>
                            <option value="고객센터/기타">고객센터/기타</option>
                        </select>
                    </div>
                                <button type="submit" class="btn btn-primary">검색</button>
           
                        </div>
              
            </form>
        </div>
        <br> <br> --%>
        <div class="event-button">
		<ul>
			<li class="promotion-link"><a href="/CsAllUser">유저 고객센터</a></li>
			<li class="promotion-link"><a href="CsAllStore">매장 고객센터</a></li>
		</ul>
	</div>

        <table id="table">
            <tr>
                <th>문의번호</th>
                <th>문의자ID</th>
                <th>카테고리</th>
                <th>문의제목</th>
                <th>문의날짜</th>
                <th>답변날짜</th>
            </tr>

            <!-- 검색하지 않았을떄  -->
            <c:if test="${not empty csalluserList}">
                <c:forEach var="ucs" items="${csalluserList }">
                    <tr>
                       <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_idx}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.u_id}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_category}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_title}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.uw_date}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.res_date}</a></td>
                    </tr>
                </c:forEach>
            </c:if>

 
 
             <%--      <c:if test="${not empty csalluserList}">
                <c:forEach var="ucs" items="${csalluserList }">
                    <tr>
                      <td>${ucs.ucs_idx }</td>
                        <td>${ucs.u_id}</td>
                        <td>${ucs.ucs_category}</td>
                        <td>${ucs.ucs_title}</td>
                        <td>${ucs.uw_date}</td>
                        <td>${ucs.res_date}</td>
                    </tr>
                </c:forEach>
            </c:if> --%>

        </table>
        
    <div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/CsAllUser?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/CsAllUser?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/CsAllUser?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>
 </div>

        <!-- 매장 홈으로 버튼 -->
        <a href="/" class="btn btn-primary">홈버튼</a>
        
 
    </main>
    <script>
        
    </script>
</body>
</html>