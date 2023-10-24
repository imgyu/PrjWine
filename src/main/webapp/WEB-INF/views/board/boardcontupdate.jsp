<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>시음회 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	<div class="container1" id="board"
		style="width: 50%; height: 350px; float: center;">
		<form action="/BoardContUpdate" method="POST" id="search-form">
			<c:forEach var="board" items="${boardCont}">
				<input type="hidden" name="s_no" value="${board.s_no}">
				<input type="hidden" name="b_idx" value="${board.b_idx}">
				<h1 style="text-align: center; margin-top: 60px">${board.b_title}</h1>
				<br>
				<table id="table">
					<div>
						<label>공지사항 제목</label>
						<div>
							<input type="text" name="b_title" value="${board.b_title}"
								autocomplete="off">
						</div>
					</div>
					<div>
						<div>
							<label>글작성자</label> <input type="text" name="s_name"
								value="${board.s_name}" readonly>
						</div>
						<label>공지사항 내용 설명</label>
						<textarea name="b_cont" autocomplete="off">${board.b_cont}</textarea>
					</div>
				</table>

				<button type="submit" class="btn1" id="update-button">수정</button>
				<a type="button" class="boxed-btn" onclick="goBack()">뒤로가기</a>
			</c:forEach>
		</form>
	</div>
	<script>
		document.getElementById('update-button').addEventListener('click',
				function() {

					var success = confirm("수정하시겠습니까?.");
					if (!success) {
						event.preventDefault(); // 수정 성공 메시지 표시 후, 이벤트 막음
					}
				});

		function goBack() {
			window.history.back();
		}
	</script>
</body>
</html>
