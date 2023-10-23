<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link rel="stylesheet" href="/css/main.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
.logintitle {
    text-align: center;
    margin-top: 40px;
}

.container1 {
    margin: 0 auto; /* 상하여백 좌우여백 */
    max-width: 600px; /* 최대 폭 지정 */
}

form {
    padding: 20px;
    border: 2px solid #ccc;
    border-radius: 5px;
    background-color: #f2f2f2;
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

table, th, td {
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: center;
    background-color: #f2f2f2;
}
.centered-text {
  display: flex;
  justify-content: center; /* 수평 가운데 정렬 */
}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.countdown.js"></script>
<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
<script src="assets/js/waypoints.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/jquery.meanmenu.min.js"></script>
<script src="assets/js/sticker.js"></script>
<script src="assets/js/main.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
const config = {
		dateFormat: 'yy-mm-dd'
	}
	$(function() {
		$("#datepicker1").datepicker(config);
	});
	$(function() {
		$("#datepicker2").datepicker(config);
	});
</script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
   <div class="container">
      <div class="row">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>이벤트</h1>
               <br>
               <p>프로모션 Information</p>
            </div>
         </div>
      </div>
   </div>
</div>
<br>
<br>
<div class="container1">
<form action="/EventInsert" method="POST" enctype="multipart/form-data">
<input type="hidden"  name="s_no" value="${sloginVo.s_no}" />
<input type="hidden"  name="e_idx" value="" />
		<table>
		<colgroup>
					<col width="25%">
					<col width="*">
		</colgroup>
			<tr>
				<td><label for="e_title">이벤트 제목</label></td>
				<td><input type="text" name="e_title" id="e_title"
					placeholder="이벤트 제목을 입력하세요" autocomplete="off"></td>
			</tr>
			<tr>
				<td><label for="upfile">메인 이미지</label></td>
				<td><input type="file" accept="image/*"
					onchange="readURL(this)" name="upfile" class="upfile" id="upfile">
					<br> <img id="preview" style="max-width: 300px;"></td>
			</tr>
			<tr>
				<td><label for="upfile2">내용 이미지</label></td>
				<td><input type="file" accept="image/*"
					onchange="readURL(this)" name="upfile2" class="upfile2"
					id="upfile2"> <br> <img id="preview"
					style="max-width: 300px;"></td>
			</tr>
			<tr>
				<td><label for="datepicker1">시작 날짜 선택</label></td>
				<td><input type="text" id="datepicker1" name="e_sdate">
				</td>
			</tr>
			<tr>
				<td><label for="datepicker2">종료 날짜 선택</label></td>
				<td><input type="text" id="datepicker2" name="e_edate">
				</td>
			</tr>
		</table>
		<input type="submit" value="글 쓰기" onclick="checkForm();">
	</form>
</div>
<script>
	function checkForm() {
		var e_title = document.getElementById('e_title').value;
		var upfile = document.getElementById('upfile').value;
		var upfile2 = document.getElementById('upfile2').value;
		var e_sdate = document.getElementById('datepicker1').value;
		var e_edate = document.getElementById('datepicker2').value;

		if (e_title.trim() === '') {
			alert('이벤트 제목을 입력하세요');
			event.preventDefault();
		}

		if (upfile.trim() === '') {
			alert('메인 이미지를 선택하세요');
			event.preventDefault();
		}

		if (upfile2.trim() === '') {
			alert('내용 이미지를 선택하세요');
			event.preventDefault();
		}

		if (e_sdate.trim() === '') {
			alert('시작 날짜를 선택하세요');
			event.preventDefault();
		}

		if (e_edate.trim() === '') {
			alert('종료 날짜를 선택하세요');
			event.preventDefault();
		}

	}

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