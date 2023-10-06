<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--   <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   --%>
    
<!DOCTYPE html>
<html>
<head>
   <%@include file="/WEB-INF/include/nav.jsp" %>
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

      /* 테이블 내용 중 텍스트가 왼쪽 정렬되어야 하는 셀 */
      #table td:nth-child(2) { 
         text-align: center; /* 왼쪽 정렬 */
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

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet"  href="/css/common.css" />
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

  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
    품종
  </button>

  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
    가격순
  </button>
  <button type="submit">검색</button>
</div>
   <!-- 게시물 목록 -->
   <table id="table">
   
   	<tr>
     <th>와인명</th>
     <th>국가</th>
     <th>품종</th>
     <th>수량</th>
     <th>가격</th>
     <th>추천항목</th>
     <th>수정/삭제</th>
   </tr>
   
   <tr>
   </tr>
    <tr>
     <th>00와인</th>
     <th>프랑스</th>
     <th>멜롯</th>
     <th>50</th>
     <th>5000</th>
     <th>추천항목</th>
     <td>
       <form action="/edit" method="post">
          <input type="hidden" name="itemId" value="아이템_고유_ID_1">
          <button type="submit">수정</button>
       </form>
        <form action="/delete" method="post">
            <input type="hidden" name="itemId" value="아이템_고유_ID_1">
            <button type="submit">삭제</button>
        </form>
     </td>
   </tr>
   <tr>
     <th>00와인2</th>
     <th>이탈리아</th>
     <th>멜롯</th>
     <th>15</th>
     <th>3000</th>
     <th>추천항목</th>
     <td>
       <form action="/edit" method="post">
          <input type="hidden" name="itemId" value="아이템_고유_ID_1">
          <button type="submit">수정</button>
       </form>
        <form action="/delete" method="post">
            <input type="hidden" name="itemId" value="아이템_고유_ID_1">
            <button type="submit">삭제</button>
        </form>
     </td>
   </tr>
   <tr>
     <th>와인명</th>
     <th>국가</th>
     <th>품종</th>
     <th>수량</th>
     <th>가격</th>
     <th>추천항목</th>
     <td>
       <form action="/edit" method="post">
          <input type="hidden" name="itemId" value="아이템_고유_ID_1">
          <button type="submit">수정</button>
       </form>
        <form action="/delete" method="post">
            <input type="hidden" name="itemId" value="아이템_고유_ID_1">
            <button type="submit">삭제</button>
        </form>
     </td>
   </tr>
   <tr>
     <th>와인명</th>
     <th>국가</th>
     <th>품종</th>
     <th>수량</th>
     <th>가격</th>
     <th>추천항목</th>
   <td>
       <form action="/edit" method="post">
          <input type="hidden" name="itemId" value="아이템_고유_ID_1">
          <button type="submit">수정</button>
       </form>
        <form action="/delete" method="post">
            <input type="hidden" name="itemId" value="아이템_고유_ID_1">
            <button type="submit">삭제</button>
        </form>
     </td>
   </tr>
   </table>
   
   <a href="/your-homepage-url" class="btn btn-primary">매장 홈으로</a>   
   
   </main>
</body>
</html>
