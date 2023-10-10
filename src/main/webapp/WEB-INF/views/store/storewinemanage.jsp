<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>와인 목록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>

<body>
     <%@ include file="/WEB-INF/include/nav.jsp" %> 
     
<h1>${ sloginVo.s_name } 보유 와인 </h1>

<main>
    <!-- 버튼 검색 -->
		<div class="container">
			<form action="/StoreListSearch" method="GET" id="search-form">
			    <input type="hidden" name="s_no" value="${ s_no }" />
				<div>
					<select id="select" name="searchOption">
						<option value="All">전체</option>
						<option value="w_name">이름</option>
						<option value="w_location">국가</option>
						<option value="w_kind">품종</option>
						<option value="w_amount">수량</option>
					</select>
				</div>
				<input type="text" name="searchKeyword" placeholder="검색어 입력">
				<button type="submit">검색</button>
			</form>
		</div>
<br>
<br>

    
    <table id="table">
        <tr>
            <th>와인명</th>
            <th>국가</th>
            <th>품종</th>
            <th>수량</th>
            <th>가격</th>
            <th>빈티지</th>
            <th>수정</th>
        </tr>

        <!-- 검색하지 않았을  -->
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
   				<a href="/WineUpdateForm?s_no=${wine.s_no }&wl_idx=${wine.wl_idx}" class="btn btn-primary">수정</a>            
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
   				<a href="/WineUpdateForm?s_no=${Search.s_no }&wl_idx=${Search.wl_idx}" class="btn btn-primary">수정</a>            
            </td>          
          </tr>
        </c:forEach>
        </c:if>
        
    </table>
   
    <!-- 매장 홈으로 버튼 -->
    <a href="/" class="btn btn-primary mx-auto " >매장 홈으로</a>
</main>
</body>
</html>