<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
.logintitle {
    text-align: center;
    margin-top: 40px;
}

.container {
    margin: 0 auto; /* 상하여백 좌우여백 */
    max-width: 600px; /* 최대 폭 지정 */
}

form {
    padding: 20px;
    border: 2px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
}

form div {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

textarea {
    resize: vertical; /* 세로 크기 조절 허용 */
    min-height: 100px; /* 최소 높이 지정 */
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table {
    border: 1px solid #ccc;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script>
        function goBack() {
            window.history.back();
        }
</script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<c:forEach var="board" items="${boardCont}">
    <div class="container" id="board" style="width: 50%; height: 350px; float: center;">
        <h1 style="text-align: center; margin-top: 60px">${board.b_title}</h1><br>
        <table id="table">
            <div>
                <label>공지사항 제목</label>
                <div>
                    <input type="text" value="${board.b_title}">
                </div>
            </div>
            <div>
                <div>
                    <label>글작성자</label>
                    <input type="text" value="${board.s_name}" readonly>
                </div>
                <label>공지사항 내용 설명</label>
                <textarea>${board.b_cont}</textarea>
            </div>
        </table>
        <c:choose>
            <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq board.s_no}">
                <form action="/BoardDelete?s_no=${sloginVo.s_no}&b_idx=${board.b_idx}" method="POST" id="search-form">  
                    <button type="submit" class="btn btn-primary">삭제</button>
                    <button type="button" class="btn btn-primary" onclick="goBack()">뒤로가기</button>
                </form>
            </c:when>
        </c:choose>
    </div>
</c:forEach>
</body>
</html>
