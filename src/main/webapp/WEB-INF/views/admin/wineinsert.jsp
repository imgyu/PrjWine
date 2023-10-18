<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html> 
<head>
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
<style>
/* 전체 테이블 스타일 */
#table {
	width: 70%;
	margin: 0 auto; /* 수평 가운데 정렬 */
	border-collapse: collapse; /* 테이블 셀 경계를 합칩니다. */
}

/* 테이블 헤더 스타일 */
#table th {
	background-color: #f2f2f2; /* 헤더 배경색 */
	border: 1px solid #dddddd; /* 테두리 선 스타일 */
	padding: 10px; /* 셀 안 여백 */
	text-align: center; /* 가운데 정렬 */
	font-weight: bold; /* 텍스트 굵게 표시 */
}

/* 테이블 내용 스타일 */
#table td {
	border: 1px solid #dddddd; /* 테두리 선 스타일 */
	padding: 10px; /* 셀 안 여백 */
	text-align: center; /* 가운데 정렬 */
}

/* 취소요청 버튼 스타일 */
#table input[type="button"] {
	background-color: #ff0000; /* 배경색 */
	color: #ffffff; /* 글자색 */
	border: none; /* 테두리 없음 */
	padding: 5px 10px; /* 여백 */
	cursor: pointer; /* 포인터로 마우스 커서 변경 */
}

form#search-form {
	text-align: center;
	margin-bottom: 20px;
}

form#search-form input[type="text"] {
	width: 218px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
}
input#text1 {
	width: 150px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
}
input#text2 {
	width: 150px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
}
form#search-form #select {
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-right: 10px;
}
form#search-form #select2 {
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-right: 10px;
}
form#search-form button[type="submit"] {
	padding: 5px 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}
button#btn1 {
    padding: 5px 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
   <script src="assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="assets/js/main.js"></script>	
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>와인등록</h1>
                  <br>
                  <p>Admin</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>
	<main>
		<!-- 게시물 목록 -->
		<form action="/AdminWineInsert" method="POST" enctype="multipart/form-data">
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
							<td><input type="text" name="w_wineery"></td>
							<td><input type="text" name="w_wine"></td>
							<td><input type="text" name="w_vintage"></td>
							<td><input type="text" name="w_avg"></td>
							<td><input type="text" name="w_reviews"></td>
							<td><input type="text" name="w_location"></td>
							<td><input type="file" accept="image/*" onchange="readURL(this)" name="w_image" class="upfile">
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
				<button id="btn1" type="submit" class="btn btn-primary">등록</button>
			</div>
		</div>
		</form>
	</main>
<script>
// 선택한 옵션을 입력 필드에 설정하는 JavaScript 코드
document.getElementById("kind").addEventListener("change", function () {
    var selectedValue = this.value;
    document.getElementsByName("w_kind")[0].value = selectedValue;
});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview').src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview').src = "";
	}
}

</script>
</body>
</html>