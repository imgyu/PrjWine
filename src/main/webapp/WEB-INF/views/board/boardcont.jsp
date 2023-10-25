<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 내용</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
.container1 {
    margin: 20px auto;
    max-width: 800px;
    padding: 20px;
    background-color: #f2f2f2;
    border: 2px solid #ccc;
    border-radius: 5px;
}

table.tab1 {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: #ffffff;
}

/* 테이블의 th 스타일 */
table.tab1 th {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
    background-color: #f2f2f2;
}

/* 테이블의 td 스타일 */
table.tab1 td {
    border: 1px solid #ccc;
    padding: 10px;
    width: 70%;
}
</style>
</head>
<body>
    <%@include file="/WEB-INF/include/nav.jsp"%>
    <div class="breadcrumb-section breadcrumb-bg">
        <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
                <br>
                <h1>공지사항</h1>
                <br>
                <p>Announcement</p>
            </div>
        </div>
    </div>
    <br>
    <br>
    <c:forEach var="board" items="${boardCont}">
        <div class="container1" id="board">
            <h1 style="text-align: center; margin-top: 20px">${board.b_title}</h1>
            <table class="tab1">
                <tr>
                    <th>공지사항 제목</th>
                    <td>${board.b_title}</td>
                </tr>
                <tr>
                    <th>글작성자</th>
                    <td>${board.s_name}</td>
                </tr>
                <tr>
                    <th>공지사항 내용 설명</th>
                    <td style="height: 400px; vertical-align: top;">${board.b_cont}</td>
                </tr>
            </table>
            <br>
            <div style="text-align: center;">
            <c:choose>
                <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq board.s_no}">
                    <form action="/BoardDelete?s_no=${board.s_no}&b_idx=${board.b_idx}" method="POST" id="search-form">
                        <a type="submit" class="btn btn-secondary" onclick="goBack()">뒤로가기</a>
                        <a href="/BoardContUpdateForm?s_no=${board.s_no}&b_idx=${board.b_idx}&b_title=${board.b_title}" class="btn btn-primary" id="update-link">수정</a>
                        <button type="submit" class="btn btn-danger" id="delete-button">삭제</button>
                    </form>
                </c:when>
            </c:choose>
            </div>
        </div>
    </c:forEach>
<script>

	document.getElementById('delete-button').addEventListener('click',
			function() {
				var confirmation = confirm("삭제하시겠습니까?");
				if (!confirmation) {
					event.preventDefault();
				}
			});
	document.getElementById('update-link').addEventListener('click',
			function(event) {
				var confirmation = confirm("수정하시겠습니까?");
				if (!confirmation) {
					event.preventDefault(); // "아니요"를 선택한 경우 이벤트 막음
				}
			});
function goBack() {
	window.history.back();
}
</script>
</body>
</html>