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

table, th, td {
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: center;
}

button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-weight: bold;
    margin: 20px auto;
    display: block;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}
form#search-form input[type="search"] {
	width: 150px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
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

<script>
	
  function make_table( wineList ) {
	  let table = 
	  `<tr>
	  <th></th>
	  <th>와인 이름</th>
	  <th>와인 종류</th>
	  <th>국가</th>
	  <th>빈티지</th>
	 </tr>`;
	
	 console.log('table', wineList[0]);
	 for (let i=0;i < wineList.length; i++) {
		let wine = wineList[i];
		console.log(wine.w_name);
		table += '<tr>';
		table += '<td>' + '<input type="radio" name="w_no" value="' + wine.w_no + '" /></td>';
		table += '<td>' + wine.w_name     + '</td>';
		table += '<td>' + wine.w_kind     + '</td>';
		table += '<td>' + wine.w_location + '</td>';
		table += '<td>' + wine.w_vintage  + '</td>';		  
		table += '</tr>'
     }
	 return table;
  }

  $(function() {
	
	  $('#btnSearch').on('click', function() {
		  
		  $.ajax({		
			  url   : '/Tasting/WineList' ,   // RestController
			  data  : {
				  searchOption  : $('[name=searchOption]').val(),
				  searchKeyword : $('[name=searchKeyword]').val(),
				  kindOption    : $('[name=kindOption]').val()
			  }			  
		  })
		  .done( function(result) {
			  console.log(result);			  
	          $('#searchWineList').html( make_table( result ) );			  
		  })
		  .fail( function(xhr) {
			  alert(xhr.status + ':' + xhr.textStatus)
		  });
		 
	  })
	  
  })
</script>

</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Tasting</p>
						<h1>시음회 등록</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>

	<div class="container">
    <form action="/TastingWrite" method="post" id="search-form">
		<input type="hidden" name="s_no"            value="${sloginVo.s_no}">
		
        <div>
            <label>시음회 이름</label>
            <input type="text" name="t_title" placeholder="시음회 이름을 입력하세요">
        </div>
        <div>
            <label>시음회 내용 설명</label>
            <textarea name="t_cont" placeholder="시음회 내용 설명을 입력하세요"></textarea>
        </div>
        	<div class="container">
				<div>
					<select id="select" name="searchOption">
						<option value="w_name">이름</option>
						<option value="w_location">국가</option>
						<option value="w_vintage">빈티지</option>
					</select>
					<select id="select2" name="kindOption">
						<option value="w_kind">전체</option>
						<option value="1">PORT</option>
						<option value="2">DESSERT</option>
						<option value="3">RED</option>
						<option value="4">ROSE</option>
						<option value="5">WHITE</option>
						<option value="6">SPARKLING</option>
					</select>
				<input id="search" type="search" name="searchKeyword" placeholder="검색어 입력">
				<button type="button" id="btnSearch">검색</button>
				</div>
			</div>
			<div style="overflow-y: auto; max-height: 340px;" id="div1">
				<table id="searchWineList" name="${w_no}" >
				
				</table>
				</div>
        <div>
            <label>시음회 날짜/시간</label>
            <input type="text" name="t_date" placeholder="날짜/시간을 입력하세요">
        </div>
        <div>
            <label>참가비</label>
            <input type="number" name="t_cost" placeholder="숫자만입력:>">
        </div>
    	<button type="submit">등록</button>
    </form>
</div>
</body>
</html>
