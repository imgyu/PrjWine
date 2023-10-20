<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<title>판매기록</title>
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
 <script>
$(document).ready(function() {
    // 셀렉트 박스 값이 변경될 때 이벤트 처리
    $("#select").change(function() {
        var selectedValue = $(this).val(); // 선택한 값 가져오기
        var dataToSend = { selectedValue: selectedValue };

        // AJAX 요청 보내기
        $.ajax({
            type: "POST", // 또는 "GET", 요청 방식 선택
            url: "/SalesHistoryUpdate", // 업데이트를 처리할 서버 측 URL
            data: dataToSend,
            success: function(response) {
                alert("판매상태 업데이트가 되었습니다."); // 성공 시 메시지
            },
            error: function(error) {
                alert("판매상태 업데이트가 실패했습니다."); // 실패 시 메시지
            }
        });
    });
});
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

	<table id="table">
	<tr class="first-row">
		<th>판매날짜</th>
		<th>손님고유번호</th>
		<th>손님이름</th>
		<th>손님연락처</th>
		<th>판매와인</th>
		<th>와인단가</th>
		<th>총가격</th>
		<th>
		  <select id="select" name="s_Option">
    		<option value="PaymentCompleted">결제완료</option>
    		<option value="ShippingPreparation">배송 준비완료</option>
    		<option value="ShippingInTransit">배송중</option>
    		<option value="ShippingCompleted">배송완료</option>
		  </select>
		</th>
	</tr>
	
	
	<c:forEach var="sales" items="${salesHistory}">
	<tr>
		<td>${sales.sh_date }</td>
		<td>${sales.u_no}</td>
		<td>${sales.u_name }</td>
		<td>${sales.u_phone }</td>
		<td>${sales.w_name }</td>
		<td>${sales.w_price }</td>
		<td>${sales.p_allprice }</td>
		<td>${sales.p_state}</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>