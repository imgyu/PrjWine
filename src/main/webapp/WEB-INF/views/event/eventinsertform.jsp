<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
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
table {
    border-collapse: collapse; !important;
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
<form action="/EventInsert" method="POST" enctype="multipart/form-data">
<input type="hidden"  name="s_no" value="${sloginVo.s_no}" />
<input type="hidden"  name="e_idx" value="" />
		<table>
			<div>
				<label>이벤트 제목</label>
				<input type="text" name="e_title" id="e_title" placeholder="이벤트 제목을 입력하세요">
			</div>
			<div>
				<label>메인 이미지</label>
				<input type="file" accept="image/*" onchange="readURL(this)"
					name="upfile" class="upfile" id="upfile"/><br>
				<img id="preview" style="max-width: 300px;">
			</div>
			<div>
				<label>내용 이미지</label>
				<input type="file" accept="image/*" onchange="readURL(this)"
					name="upfile2" class="upfile2" id="upfile2" /><br>
				<img id="preview" style="max-width: 300px;">
			</div>
			<div>
                <label>시작 날짜 선택</label>
                <input type="text" id="datepicker1" name="e_sdate" id="e_sdate">
            </div>
			<div>
                <label>종료 날짜 선택</label>
                <input type="text" id="datepicker2" name="e_edate" id="e_edate">
            </div>
		</table>
		<input type="submit" value="글 쓰기" onclick="checkForm();">
	</form>
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