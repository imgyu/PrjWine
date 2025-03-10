<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<title>와인 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
/* 전체 테이블 스타일 */
#table {
	width: 100%;
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
	background-color: #F5F5F5;
	border: 2px solid #FFA500;
	color: #333;
	padding: 4px 10px;
	border-radius: 5px;
	font-size: 16px;
	font-weight: bold;
	placeholder-color: #FFA500;
}

form#search-form input[type="submit"] {
	background-color: #FFA500; /* 배경색 */
	color: #FFF; /* 글자색 */
	padding: 4px 15px;
	border-radius: 5px;
	border: 2px solid #FFA500;
	margin-left: 10px;
	/* 원하는 다른 스타일 속성들을 추가할 수 있습니다. */
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
 .container {
      margin: 20px auto; /* 페이지 중앙 정렬 */
   }

</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>와인 등록</h1>
               <br>
               <p>My Store</p>
            </div>
         </div>
      </div>
<br>
<br>
	<main>
      <!-- 버튼 검색 -->
      <div class="container">
		<div >
			<form action="/StoreWineSearch" method="GET" id="search-form">
				<div>
					<select id="select" name="searchOption">
						<option value="w_name">이름</option>
						<option value="w_location">국가</option>
						<option value="w_vintage">빈티지</option>
					</select>
					<select id="select2" name="kindOption">
						<option value="0">전체</option>
						<option value="1">PORT</option>
						<option value="2">DESSERT</option>
						<option value="3">RED</option>
						<option value="4">ROSE</option>
						<option value="5">WHITE</option>
						<option value="6">SPARKLING</option>
					</select>
				<input type="text" name="searchKeyword" placeholder="검색어 입력">
				 <input type="submit"  value="검색">
				</div>
			</form>
		</div>
		<!-- 게시물 목록 -->
		<div style="overflow-y: auto; max-height: 340px; max-width: 60%; margin: 0 auto; text-align: center;">
			<table id="table">
				<tr>
					<th></th>
					<th>이름</th>
					<th>종류</th>
					<th>국가</th>
					<th>빈티지</th>
				</tr>
			<form action="/StoreWineRegister?s_no=${sloginVo.s_no}" method="POST" id="list-form">
				<c:forEach var="store" items="${searchList}" varStatus="loop">
						<tr>
							<td colspan="1" style="text-align: center;">
							<label> <input type="radio" name="selectedOption" value="${store.w_no}">
							</td>
							<td>${store.w_name}</td>
							<td>${store.w_kind}</td>
							<td>${store.w_location}</td>
							<td>${store.w_vintage}</td>
						</tr>
				</c:forEach>
			</table>
			<div style="position: sticky; bottom: 0; background-color: white; padding: 10px; text-align: center;">
					<input id="text1" type="text" name="w_amount" placeholder="수량 입력" autocomplete="off"> 
					<input id="text2" type="text" name="w_price" placeholder="가격 입력" autocomplete="off">
				<button id="btn1" type="submit" class="btn btn-primary" id="btn1">등록</button>
			</div>
			</form>

		</div>
		</div>
	</main>
	<script>
	document.getElementById("btn1").addEventListener("click", function(event) {
	    var amountValue = document.getElementById("text1").value;
	    var priceValue = document.getElementById("text2").value;

	    if (amountValue === "" || priceValue === "") {
	        alert("값을 입력하세요."); // 값이 비어있을 때 알림 표시
	        event.preventDefault(); // 이벤트(등록)를 막음
	    } else {
	        var confirmation = confirm("등록 하시겠습니까?");
	        if (!confirmation) {
	            event.preventDefault(); // 이벤트(등록)를 막음
	        }
	    }
	});
	
	</script>
</body>
</html>