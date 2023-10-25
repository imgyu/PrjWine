<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<style>
.event-create {
    width: 80%;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.event-create-title {
    font-size: 1.5rem;
    font-weight: bold;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
}

input[type="text"],
input[type="file"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
}

.preview-image {
    max-width: 300px;
    margin-top: 10px;
    display: none;
}

.event-button {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-weight: bold;
    cursor: pointer;
}

.ui-datepicker {
    font-family: Arial, sans-serif; /* 원하는 폰트로 설정 */
    font-size: 16px; /* 폰트 크기 크게 설정 */
    background-color: #fff; /* 배경색 설정 */
    padding: 20px; /* 내용과 테두리 사이의 간격을 크게 설정 */
    border-radius: 10px; /* 테두리를 둥글게 만듭니다 */
}

.ui-datepicker-header {
    background-color: #fff; /* 헤더 배경색 설정 */
    color: #070707; /* 헤더 텍스트 색상 설정 */
}

.ui-datepicker-title {
    font-weight: bold; /* 헤더 제목 굵게 설정 */
}
ui-datepicker             ui-widget                ui-widget-content              ui-helper-clearfix            ui-corner-all
.ui-datepicker-prev, .ui-datepicker-next {
    font-weight: bold;
    color: #007BFF; /* 이전 및 다음 화살표 색상 설정 */
    padding: 0 10px; /* 왼쪽 오른쪽 패딩으로 간격 설정 */
}

.ui-state-default {
    color: #333; /* 날짜 텍스트 색상 설정 */
}

.ui-state-active,
.ui-datepicker td.ui-datepicker-today a {
    background-color: #007BFF; /* 오늘의 날짜 배경색 설정 */
    color: #fff;
    font-weight: bold;
}

</style>
</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>프로모션</h1>
				<br>
				<p>Promotion</p>
			</div>
		</div>
	</div>
	<br>
	<br>
<div class="event-create">
    <form action="/EventInsert" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="s_no" value="${sloginVo.s_no}" />
        <input type="hidden" name="e_idx" value="" />
        <h2 class="event-create-title">이벤트 작성</h2>
        <div class="form-group">
            <label for="e_title">이벤트 제목</label>
            <input type="text" name="e_title" id="e_title" placeholder="이벤트 제목을 입력하세요" autocomplete="off">
        </div>
        <div class="form-group">
            <label for="upfile">메인 이미지</label>
            <input type="file" accept="image/*" onchange="readURL(this, 'preview1')" name="upfile" class="upfile" id="upfile">
            <img id="preview1" class="preview-image" alt="메인 이미지">
        </div>
        <div class="form-group">
            <label for="upfile2">내용 이미지</label>
            <input type="file" accept="image/*" onchange="readURL(this, 'preview2')" name="upfile2" class="upfile2" id="upfile2">
            <img id="preview2" class="preview-image" alt="내용 이미지">
        </div>
        <div class="form-group">
            <label for="datepicker1">시작 날짜 선택</label>
            <input type="text" id="datepicker1" name="e_sdate" autocomplete="off" class="ui-datepicker">
        </div>
        <div class="form-group">
            <label for="datepicker2">종료 날짜 선택</label>
            <input type="text" id="datepicker2" name="e_edate" autocomplete="off" class="ui-datepicker">
        </div>
        <input type="submit" value="글 쓰기" class="event-button" onclick="checkForm();">
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

		  // Flatpickr를 시작하고 옵션을 설정합니다.
		  flatpickr("#datepicker1", {
		    dateFormat:  'Y-m-d'
		  });

		  flatpickr("#datepicker2", {
		    dateFormat:  'Y-m-d'
		  });
		  

	</script>
</body>
</html>