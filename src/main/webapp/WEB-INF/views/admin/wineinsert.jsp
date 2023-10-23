<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html> 
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
</div>
		<!-- 게시물 목록 -->
		<form action="/AdminWineInsert" method="POST" >
		<div style="overflow-y: auto; max-height: 340px; max-width: 60%; margin: 0 auto; text-align: center;">
			<table id="table">
				<tr>
					<th>Winery</th>
					<th>Wine</th>
					<th>Vintage</th>
					<th>Average</th>
					<th>Reviews</th>
					<th>Location</th>
					<th>Image</th>
					<th>Kind</th>
				</tr>
						<tr>
							<td><input type="text" name="w_wineery" autocomplete="off"></td>
							<td><input type="text" name="w_name" autocomplete="off"></td>
							<td><input type="text" name="w_vintage" autocomplete="off"></td>
							<td><input type="text" name="w_avg" autocomplete="off"></td>
							<td><input type="text" name="w_reviews" autocomplete="off"></td>
							<td><input type="text" name="w_location" autocomplete="off"></td>
							<td><input type="text" name="w_image" autocomplete="off">
							    <img id="preview" style="max-width: 300px">
							</td>
							<td>					
					  <select id="kind" name="w_kind">
					  	<option value="kind">Kind</option>
					  	<option value="PORT">PORT</option>
					  	<option value="DESSERT">DESSERT</option>
					  	<option value="RED">RED</option>
					  	<option value="ROSE">ROSE</option>
					  	<option value="WHITE">WHITE</option>
					  	<option value="SPARKING">SPARKLING</option>
					  </select>
					</td>
						</tr>
			</table>
			<div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: center;">
				<button id="btn1" type="button" class="btn btn-primary" onclick="myconfirm();">등록</button>
			</div>
		</div>
		</form>
	</main>
<script>
var wineery = document.querySelector('input[name="w_wineery"]').value;
var wine = document.querySelector('input[name="w_wine"]').value;
var vintage = document.querySelector('input[name="w_vintage"]').value;
var avg = document.querySelector('input[name="w_avg"]').value;
var reviews = document.querySelector('input[name="w_reviews"]').value;
var location = document.querySelector('input[name="w_location"]').value;
var kind = document.querySelector('select[name="w_kind"]').value;

function myconfirm() {
if (wineery === '' || wine === '' || vintage === '' || avg === '' || reviews === '' || location === '' || kind === 'kind') {
    alert("입력 필드를 모두 작성하세요.");
} else {
    if (confirm('등록하시겠습니까?')) {
        alert("등록되었습니다.");
    } else {
        alert("등록 실패");
        event.preventDefault(); // 링크를 직접 실행하지 않음
    }
}
}


// 선택한 옵션을 입력 필드에 설정하는 JavaScript 코드
document.getElementById("kind").addEventListener("change", function () {
    var selectedValue = this.value;
    document.getElementsByName("w_kind")[0].value = selectedValue;
});


</script>
</body>
</html>