<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<title>구매기록</title>
<style>
#table { 
       width: 70%; 
       margin: 0 auto; /* 수평 가운데 정렬 */
       border-collapse: collapse; /* 테이블 셀 경계를 합칩니다. */
    }

    /* 테이블 헤더 스타일 */
    #table th { 
       background-color: #800021; /* 헤더 배경색 - 빨간색 */
       color: #f2f2f2;
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

    /* 첫번째 열의 td들 색변경 */
    .first-row td {
    background-color: #f2f2f2;
    } 
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>구매기록</h1>
                  <br>
                  <p>User Information</p>
               </div>
            </div>
   </div>
   <br>
   <br>

	<table id="table" class="table table-striped table-hover">
	<tr class="first-row">
		<th>구매날짜</th>
		<th>구매매장</th>
		<th>와인이름</th>
		<th>와인단가</th>
		<th>총가격</th>
		<th>상태</th>
	</tr>
	<c:forEach var="purch" items="${purch }">
	<tr>
		<td>${purch.sh_date}</td>
		<td>${purch.s_name }</td>
		<td>${purch.w_name }</td>
		<td>${purch.w_price }</td>
		<td>${purch.p_allprice }</td>
		<td>${purch.p_state }</td>
	</tr>
	</c:forEach>
	</table>
	<br>
	<div style="text-align: center;">
	<button type="button" class="btn btn-secondary" onclick="location.href='/ '">메인 화면</button>
	</div>
</body>
</html>