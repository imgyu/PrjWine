<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head> 
    <title>와인 수정</title>
    <link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
    <style>
    /* 테이블 스타일 */
  #table { 
         width: 70%; 
         margin: 0 auto; /* 수평 가운데 정렬 */
         border-collapse: collapse; /* 테이블 셀 경계를 합칩니다. */
      }
      
      /* 테이블 헤더 스타일 */
      #table th { 
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
         vertical-align: middle; /* 세로 가운데 정렬 */
      }
    
  tr th {
    background-color: #800021 !important;
  }
  
th {
      color: #ffffff !important; /* 테이블 헤더 글자색 */
      text-align: center; /* 헤더 텍스트 중앙 정렬 */
   }  
   
.back-home-button {
    text-align: center; /* 가로 중앙 정렬 */
    display: flex;
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    height: 100vh; /* 수직 중앙 정렬에 필요한 높이 설정 (옵션) */
    margin-top: -440px;
}	     
    </style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>와인정보수정</h1>
				<br>
				<p>Store Information</p>
			</div>
		</div>
	</div>
	<br>
	<br>

<main>

    <!-- 와인 목록 테이블 -->
      <form action="/WineUpdate?s_no=${s_no }&wl_idx=${idx}" method="POST">
      <%-- <input type="hidden" name="wl_idx" value="${idx.wl_idx }"> --%>
    <table id="table">
        <tr>
            <th>와인명</th>
            <th>국가</th>
            <th>품종</th>
            <th>수량</th>
            <th>가격</th>
            <th>빈티지</th>
            <th>수정/삭제</th>
        </tr>

        <!-- 예시 와인 데이터 -->
        <c:forEach var="select" items="${ selectList }">
        <tr>
            <td>${select.w_name }</td>
            <td>${select.w_location}</td>
            <td>${select.w_kind}</td>
            <td><input type="text" name="w_amount" value="${select.w_amount}" autocomplete="off" ></td>
            <td><input type="text" name="w_price" value="${select.w_price }" autocomplete="off"></td>
            <td>${select.w_vintage}</td>
            
             <td class="edit-delete-buttons">
             <button type="submit"class="btn btn-primary" id="editButton">수정</button>    
             <a class="btn btn-danger" href="/WineDelete?s_no=${select.s_no }&wl_idx=${select.wl_idx}"  id="deleteLink">삭제</a>
                       
            </td>
            
        </tr>
        </c:forEach>
        <!-- 다른 와인 데이터 추가 -->
    </table>
    </form>

    <!-- 매장 홈으로 버튼 -->
    <div class="back-home-button">
    <a href="/" class="btn btn-secondary" >홈으로</a>
    </div>
</main>
<script>

document.getElementById("editButton").addEventListener("click", function(event) {
    var confirmation = confirm("수정 하시겠습니까?");
    if (!confirmation) {
        event.preventDefault(); // 수정 이벤트를 막음
    }
});

document.getElementById("deleteLink").addEventListener("click", function(event) {
    var confirmation = confirm("삭제하시겠습니까?");
    if (!confirmation) {
        event.preventDefault(); // 삭제 이벤트를 막음
    }
});

</script>

</script>
</body>
</html>