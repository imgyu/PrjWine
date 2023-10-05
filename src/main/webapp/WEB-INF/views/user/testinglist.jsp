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
  #table                    { width : 70%; margin: 0 auto; } /* 수평 가운데 정렬 */
  
  #table  th:nth-of-type(1) { width : 70px;   }
  #table  th:nth-of-type(2) { width : 350px;   }
  #table  th:nth-of-type(3) { width : 70px;   }
  #table  th:nth-of-type(4) { width : 70px;   }
  #table  th:nth-of-type(5) { width : 70px;   }
  
  #table  td                { text-align: center;  }
  #table  td:nth-of-type(2) { text-align: left;  }

</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet"  href="/css/common.css" />
</head>
<body>
<h1 style="text-align: center; margin-top: 60px; margin-bottom: 120px;">시음회 목록</h1>
   <main>
      
   <!-- 메뉴 목록 -->
      
   <!-- 게시물 목록 -->
   <table id="table">
   
   <tr>
     <th>번호</th>
     <th>제목</th>
     <th>글쓴이</th>
     <th>날짜</th>
     <th>조회수</th>
   </tr>
   
   <tr>
     <td colspan="5" style="text-align:right">
       <a href="/Board/WriteForm?menu_id=${ param.menu_id }&bnum=0">
       [새글 쓰기]
       </a>
     </td>
   </tr>
   
    <tr>
     <th>3</th>
     <th>와인시음회3</th>
     <th>운영진3</th>
     <th>3일후</th>
     <th>3</th>
   </tr>
   <tr>
     <th>2</th>
     <th>와인시음회2</th>
     <th>운영진2</th>
     <th>2일후</th>
     <th>2</th>
   </tr>
   <tr>
     <th>1</th>
     <th>와인시음회1</th>
     <th>운영진1</th>
     <th>1일후</th>
     <th>1</th>
   </tr>
   </table>   
   
   </main>
</body>
</html>
