<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
      /* 전체 테이블 스타일 */
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
         border: 1px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
      }

      /* 취소요청 버튼 스타일 */
      #table input[type="button"] { 
         background-color: #ff0000; /* 배경색 */
         color: #ffffff; /* 글자색 */
         border: none; /* 테두리 없음 */
         padding: 5px 10px; /* 여백 */
         cursor: pointer; /* 포인터로 마우스 커서 변경 */
      }
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
   </style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
   <%@include file="/WEB-INF/include/nav.jsp" %>
<h1 style="text-align: center; margin-top: 60px; margin-bottom: 120px;">매장 와인 등록</h1>
   <main>
      
 <div class="container">
            <form action="/StoreWineSearch" method="GET" id="search-form">
                <div class="input-group">
                        <input type="text" name="searchKeyword" placeholder="검색어 입력">
                    <button type="submit">검색</button>
                </div>
            </form>
        </div>
<!-- 게시물 목록 -->
<table id="table">
   <tr>
     <th></th>
     <th>이름</th>
     <th>종류</th>
     <th>국가</th>
     <th>빈티지</th>
   </tr>
 <c:forEach var="store" items="${searchList}" varStatus="loop">
   <form action="/StoreWineRegister" method="GET">
  <tr>
    <td colspan="1" style="text-align:center;">
      <label>
        <input type="radio" name="selectedOption" value="${store.w_no}">
        옵션 ${store.w_no}
      </label>
      <input type="hidden" name="s_no" value="${sloginVo.s_no}">
      <input type="hidden" name="w_name" value="${store.w_name}">
      <input type="hidden" name="w_no" value="${store.w_no}">
      <input type="hidden" name="w_location" value="${store.w_location}">
      <input type="hidden" name="w_vintage" value="${store.w_vintage}">
      <input type="hidden" name="w_kind" value="${store.w_kind}">
    </td>
    <td>${store.w_name}</td>
    <td>${store.w_kind}</td>
    <td>${store.w_location}</td>
    <td>${store.w_vintage}</td>
</c:forEach>
  </tr>
    <th><input type="text" name="w_amount" placeholder="수량 입력"></th>
    <th><input type="text" name="w_price" placeholder="가격 입력"></th>
    <th><button type="submit" class="btn btn-primary">등록</button></th>
</form>
   
   </main>
</body>
</html>