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



	<div class="container1" id="board" style="width: 50%; height: 350px; float: center;">
			<form action="/BoardWrite?s_no=${sloginVo.s_no}" method="POST" id="search-form">
			 <table id="table">
			    <div>
            	 <label>공지사항 제목</label>
                 <input type="text" name="b_title" placeholder="공지사항 제목을 입력하세요" autocomplete="off">
                </div>
                <div>
                 <label>공지사항 내용 설명</label>
                 <textarea name="b_cont" placeholder="공지사항 내용을 입력하세요" autocomplete="off"></textarea>
                </div>	
			  </table>
			  <input type="submit" value="등록" id="submit-button">
			</form>
    </div>
<script>
document.getElementById('submit-button').addEventListener('click', function (event) {
    var titleInput = document.querySelector('input[name="b_title"]');
    var contentTextarea = document.querySelector('textarea[name="b_cont"]');
    
    if (!titleInput.value || !contentTextarea.value) {
        alert("빈 칸을 모두 채워주세요.");
        event.preventDefault();
    } else {
        var confirmation = confirm("등록하시겠습니까?");
        if (!confirmation) {
            event.preventDefault(); // "아니요"를 선택한 경우에는 이벤트 막음
        }
    }
});

</script>
</body>
</html>
