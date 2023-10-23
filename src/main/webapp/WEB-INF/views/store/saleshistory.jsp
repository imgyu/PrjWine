<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<title>판매기록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
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
  #table { 
         width: 70%; 
         margin: 0 auto; /* 수평 가운데 정렬 */
         border-collapse: collapse; /* 테이블 셀 경계를 합칩니다. */
      }

      /* 테이블 헤더 스타일 */
      #table th { 
         background-color: #f2f2f2; /* 헤더 배경색 */
         border: 1px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
         font-weight: bold; /* 텍스트 굵게 표시 */
      }

      /* 테이블 내용 스타일 */
      #table td { 
         border: 2px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
      }

      /* 테이블 내용 중 텍스트가 왼쪽 정렬되어야 하는 셀 */
      #table td:nth-child(2) { text-align: center; /* 왼쪽 정렬 */ }
       select { padding: 5px; }
      
      /* 첫번째 열의 td들 색변경 */
      .first-row td {
      background-color: #f2f2f2;
      } 
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
   <!-- jquery -->
   <script src="/assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="/assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="/assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="/assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="/assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="/assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="/assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="/assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="/assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="/assets/js/main.js"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>판매기록</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>

	<form action="/SalesHistoryUpdate" method="post">
    <table id="table">
        <tr>
            <th><input type="checkbox" id="allCheck"></th>
            <th>판매날짜</th>
            <th>손님고유번호</th>
            <th>손님이름</th>
            <th>손님연락처</th>
            <th>판매와인</th>
            <th>와인단가</th>
            <th>총가격</th>
            <th>
                <select id="select" name="p_state">
                    <option value="0">결제완료</option>
                    <option value="1">배송 준비완료</option>
                    <option value="2">배송중</option>
                    <option value="3">배송완료</option>
                </select>
            </th>
        </tr>

        <c:forEach var="sales" items="${salesHistory}">
        <input type="hidden" value="${sales.s_no}" name="s_no">
            <tr>
                <td><input type="checkbox" name="valueArr" value="${sales.paynum}" id="rowCheck"></td>
                <td>${sales.sh_date}</td>
                <td>${sales.u_no}</td>
                <td>${sales.u_name}</td>
                <td>${sales.u_phone}</td>
                <td>${sales.w_name}</td>
                <td>${sales.w_price}</td>
                <td>${sales.p_allprice}</td>
                <td>${sales.p_state}</td>
            </tr>
        </c:forEach>
    </table>
    <button type="submit" class="btn btn-primary">수정</button>
</form>
<script>

document.addEventListener("DOMContentLoaded", function () {
    // 수정 버튼 클릭 시 이벤트 핸들러
    $("button[type='submit']").click(function () {
        var chk_listArr = $("input[id='rowCheck']");
        var atLeastOneChecked = false;

        // 모든 체크박스를 확인하고 최소 하나 이상이 체크되었는지 확인
        for (var i = 0; i < chk_listArr.length; i++) {
            if (chk_listArr[i].checked) {
                atLeastOneChecked = true;
                break;
            }
        }

        if (!atLeastOneChecked) {
            alert("체크하세요!"); // 아무 체크가 되어있지 않으면 알림 표시
            return false; // 폼 전송을 막음
        }
    });

    // 전체 선택/해제 체크박스 이벤트 핸들러
    $("input[id='allCheck']").click(function () {
        var chk_listArr = $("input[id='rowCheck']");
        for (var i = 0; i < chk_listArr.length; i++) {
            chk_listArr[i].checked = this.checked;
        }
    });
});


</script>
</body>
</html>