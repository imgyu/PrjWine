<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 수정</title>
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
    width: 30%; /* 너비 조정 */
}

/* 테이블의 td 스타일 수정 */
table.tab1 td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center; /* 가운데 정렬 */
    width: 70%; /* 너비 조정 */
}

/* 입력 요소의 스타일 수정 */
table.tab1 input[type="text"],
table.tab1 textarea {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
}
table.tab1 textarea {
    height: 400px;
}

/* 버튼 스타일 수정 */
.btn-container {
    text-align: center;
}

.btn-container button.btn-primary {
    margin: 5px;
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
}

.btn-container a.btn-secondary {
    margin: 5px;
    background-color: #6c757d;
    color: #fff;
    border: none;
    padding: 10px 20px;
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
                    <td>
                        <input type="text" name="b_title" value="${board.b_title}" autocomplete="off">
                    </td>
                </tr>
                <tr>
                    <th>글작성자</th>
                    <td>
                        <input type="text" name="s_name" value="${board.s_name}" readonly>
                    </td>
                </tr>
                <tr>
                    <th>공지사항 내용 설명</th>
                    <td>
                        <textarea name="b_cont" autocomplete="off">${board.b_cont}</textarea>
                    </td>
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
                    event.preventDefault();
                }
            });
    function goBack() {
        window.history.back();
    }
</script>
</body>
</html>