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
         /* 테이블 내용 스타일 */
         #table td {
       
         border: 1px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
         
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
         /* 취소요청 버튼 스타일 */
         #table input[type="button"] { 
         background-color: #ff0000; /* 배경색 */
         color: #ffffff; /* 글자색 */
         border: none; /* 테두리 없음 */
         padding: 5px 10px; /* 여백 */
         cursor: pointer; /* 포인터로 마우스 커서 변경 */
      }
      
      
   </style>

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
</head>

<body>
<h1 style="text-align: center; margin-top: 60px; margin-bottom: 120px;">보유 와인 확인/수정</h1>
   <main>
      
   <!-- 메뉴 목록 -->
  
  <form action="/search" method="get">
    
  </form>
  <style>
  	.dropdown {
   	 display: flex;
   	 justify-content: center; /* 수평 가운데 정렬 */
   	 align-items: center; /* 수직 가운데 정렬 */
  	}
  	

  	.dropdown button {
    	margin: 0 30px; /* 버튼 사이의 간격을 조절할 수 있습니다. */
  	}
 </style>
   

 <div class="dropdown">
 
 <input type="text" name="query" placeholder="검색어 입력">
 
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
    국가
  </button>

    <!-- 와인 목록 테이블 -->
    <table id="table">
        <tr>
            <th>와인명</th>
            <th>국가</th>
            <th>품종</th>
            <th>수량</th>
            <th>가격</th>
            <th>빈티지</th>
        </tr>

        <!-- 예시 와인 데이터 -->
        <c:forEach var="wine" items="${wineList }">
        <tr>
            <td>${wine.w_name }</td>
            <td>${wine.w_location}</td>
            <td>${wine.w_kind}</td>
            <td>${wine.w_amount}</td>
            <td>${wine.w_price }</td>
            <td>${wine.w_vintage}</td>
            
            
        </c:forEach>
        
        <!-- 다른 와인 데이터 추가 -->
    </table>
	<a href="/WineUpdateForm?s_no=1&wl_idx=1&w_no=1" class="btn btn-primary">수정</a>
    <!-- 매장 홈으로 버튼 -->
    <a href="/" class="btn btn-primary " style="">매장 홈으로</a>
</main>
</body>
</html>
