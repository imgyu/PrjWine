<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>고객 문의</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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


input[type="submit"] {
  display: block;
  margin: 0 auto; 
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
   <!-- jquery -->
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
                  <h1>매장 문의</h1>
                  <br>
                  <p>Customer Service</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>
   <br>
	<div class="container1" id="board" style="width: 50%; height: 350px; float: center;">
			 <table id="table">
		         <c:forEach var="scs" items="${csstoreviewList}">
            	 <label>문의사항 제목</label>
                 <input type="text" value="${scs.scs_title}" readonly="readonly">
                 	 <label>카테고리</label>
                 <input type="text" value="${scs.scs_category}" readonly="readonly">
            	 <label>문의날짜</label>
                 <input type="text" value="${scs.sw_date}" readonly="readonly">
                <div>
                 <label>문의사항 내용 </label>
                 <textarea readonly="readonly">${scs.scs_cont}</textarea>
                </div>
                <label>문의사진</label>
              <img id="imagePreview" src="/imgpage/${scs.scs_img}" alt="Image Preview" />
              <c:choose>
            <c:when test="${not empty scs.response}">
            <div>
            <label>답변 내용 </label>
                 <textarea readonly="readonly">${scs.response}</textarea>
                            </div>
                             <label>답변날짜</label>
                 <input type="text" value="${scs.res_date}" readonly="readonly">
           </c:when>
             <c:when test="${empty scs.response}">
             <div>
             <label>문의사항 내용 </label>
              <textarea readonly="readonly">답변 대기중</textarea></div>
             </c:when>
           </c:choose>
                  </c:forEach>
              
			  </table>
              <button onclick="history.back();">뒤로가기</button>
    </div>
<script>
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
function confirmSubmit() {
	if(confirm('등록하시겠습니까?')) {
		alert("등록되었습니다");
	} else {
		alert("등록 실패!")
		event.preventDefault();
	}
}

</script>
</body>
</html>
