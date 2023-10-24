<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
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
<c:forEach var="board" items="${boardCont}">
    <div class="container1" id="board" style="width: 50%; height: 350px; float: center;">
        <h1 style="text-align: center; margin-top: 60px">${board.b_title}</h1><br>
        <table id="table">
            <div>
                <label>공지사항 제목</label>
                <div>
                    <input type="text" value="${board.b_title}" readonly>
                </div>
            </div>
            <div>
                <div>
                    <label>글작성자</label>
                    <input type="text" value="${board.s_name}" readonly>
                </div>
                <label>공지사항 내용 설명</label>
                <textarea readonly>${board.b_cont}</textarea>
            </div>
        </table>
        <c:choose>
            <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq board.s_no}">
                <form action="/BoardDelete?s_no=${board.s_no}&b_idx=${board.b_idx}" method="POST" id="search-form">  
                    <button type="submit" class="btn1" id="delete-button">삭제</button>
					<a href="/BoardContUpdateForm?s_no=${board.s_no }&b_idx=${board.b_idx}&b_title=${board.b_title}" class="btn1" id="update-link">수정</a>                    
                    <a type="submit" class="boxed-btn" onclick="goBack()">뒤로가기</a>
                    <script>

					document.getElementById('delete-button').addEventListener('click', function () {
    				var confirmation = confirm("삭제하시겠습니까?");
    				if (!confirmation) {
        			event.preventDefault();
    				}
				});
	            </script>
                </form>
            </c:when>
        </c:choose>
    </div>
</c:forEach>
<script>
document.getElementById('update-link').addEventListener('click', function (event) {
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
