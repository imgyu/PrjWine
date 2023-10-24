<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head> 
    <title>와인 수정</title>
    <link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>Welcome to Wine Story</h1>
				<br>
				<p class="subtitle">Hello!!</p>
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
    <a href="/" class="btn btn-primary " style="">매장 홈으로</a>
    
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