<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>등록한 와인 관리</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
</head>
<style>

.form-control::placeholder {
    text-align: left;
}


.search-container input[type="text"] {
	background-color: #F5F5F5;
	border: 2px solid #FFA500;
	color: #333;
	padding: 9px 40px;
	border-radius: 5px;
	font-size: 16px;
	font-weight: bold;
	placeholder-color: #FFA500;
	width: 200px;
	text-align: right;
	margin-right: -90px; /* 오른쪽 여백을 주기 위해 margin-right 사용 */
}


.search-container input[type="submit"] {
	background-color: #FFA500; /* 배경색 */
	color: #FFF; /* 글자색 */
	padding: 10px 15px;
	border-radius: 5px;
	border: 2px solid #FFA500;
	margin-left: 100px;
	/* 원하는 다른 스타일 속성들을 추가할 수 있습니다. */
}


form#search-form {
    text-align: center;
    margin: 10px auto; /* 위아래 여백 추가 */
    max-width: 400px; /* 최대 너비 설정 */
}

form#search-form .row {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 10px; /* 입력 요소 간의 간격 */
}

form#search-form .col-md-3 {
    flex: 1; /* 네 개의 컬럼을 동일하게 너비 분배 */
}

form#search-form select,
form#search-form input[type="text"],
form#search-form .btn {
    width: 100%;
    padding: 10px;
}

form#search-form .btn {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    font-weight: bold;
    cursor: pointer;
}

form#search-form .col-md-3 select {
    width: 100%; /* 넓이를 100%로 설정 */
    padding: 10px; /* 높이를 조정 */
}

.dropdown-group {
    text-align: center;
    margin-top: 20px;
}

/* 드롭다운 버튼 스타일 */
.dropdown {
    display: inline-block;
    margin-right: 10px;
}

/* 테이블 스타일 */
  #table { 
         width: 70%; 
         margin: 0 auto; /* 수평 가운데 정렬 */
         border-collapse: collapse; /* 테이블 셀 경계를 합칩니다. */
      }
      
      /* 테이블 헤더 스타일 */
      #table th { 
         border: 1px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
         font-weight: bold; /* 텍스트 굵게 표시 */
      }

      /* 테이블 내용 스타일 */
      #table td { 
         border: 2px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
         vertical-align: middle; /* 세로 가운데 정렬 */
      }

/* 수정/삭제 버튼 스타일 */
.edit-delete-buttons {
    display: flex;
    justify-content: center;
}

.edit-delete-buttons form {
    display: inline-block;
    margin-right: 5px;
}

.edit-delete-buttons button {
    padding: 5px 10px;
    background-color: #ff0000;
    color: #ffffff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

/* 매장 홈으로 버튼 스타일 */
.back-home-button {
    text-align: center;
    margin-top: 20px;
}

tr th {
    background-color: #800021 !important;
  }
  
th {
      color: #ffffff !important; /* 테이블 헤더 글자색 */
      text-align: center; /* 헤더 텍스트 중앙 정렬 */
   }  

.back-home-button {
    text-align: center; /* 가로 중앙 정렬 */
    display: flex;
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    height: 100vh; /* 수직 중앙 정렬에 필요한 높이 설정 (옵션) */
    margin-top: -440px;
}	

</style>

<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>보유한 와인 관리</h1>
				<br>
				<p>My Wine List</p>
			</div>
		</div>
	</div>
	<br>
	<br>

    <main>
        <!-- 버튼 검색 -->
        <div class="search-container" >
            <form action="/StoreListSearch" method="GET" id="search-form">
                <input type="hidden" name="s_no" value="${s_no}" />
                <div class="row">
                    <div class="col-md-3">
                        <select class="form-select" name="searchOption">
                            <option value="All">전체</option>
                            <option value="w_name">이름</option>
                            <option value="w_location">국가</option>
                            <option value="w_vintage">빈티지</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" name="w_kind">
                            <option value="w_kind">품종</option>
                            <option value="PORT">PORT</option>
                            <option value="DESSERT">DESSERT</option>
                            <option value="RED">RED</option>
                            <option value="ROSE">ROSE</option>
                            <option value="WHITE">WHITE</option>
                            <option value="SPARKLING">SPARKLING</option>
                        </select>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="input-group">
                            <input type="text" class="form-control" name="searchKeyword" placeholder="검색어입력">
                        </div>
                       </div>
                        <div class="col-md-3">
                                <input type="submit"  value="검색">
                    </div>
                </div>
            </form>
        </div>
        <br> <br>

        <table id="table" class="table table-striped table-hover">
            <tr>
                <th>와인명</th>
                <th>국가</th>
                <th>품종</th>
                <th>수량</th>
                <th>가격</th>
                <th>빈티지</th>
                <th></th>
            </tr>

            <!-- 검색하지 않았을떄  -->
            <c:if test="${not empty wineList }">
                <c:forEach var="wine" items="${wineList }">
                    <tr>
                        <td>${wine.w_name }</td>
                        <td>${wine.w_location}</td>
                        <td>${wine.w_kind}</td>
                        <td>${wine.w_amount}</td>
                        <td>${wine.w_price }</td>
                        <td>${wine.w_vintage}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty loginVo.u_no}">
                                    <form action="/AddCart" method="POST">
                                        <input type="hidden" name="u_no" value="${loginVo.u_no}">
                                        <input type="hidden" name="w_no" value="${wine.w_no}">
                                        <input type="hidden" name="wl_idx" value="${wine.wl_idx}">
                                        <input type="hidden" name="s_no" value="${wine.s_no}">
                                        <input id="text1" type="text" name="c_count" placeholder="수량 입력">
                                        <input type="submit" value="장바구니에 추가" onclick="myFunction()">
                                    </form>
                                </c:when>
                                <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq wine.s_no }">
                                    <a href="/WineUpdateForm?s_no=${wine.s_no}&wl_idx=${wine.wl_idx}"
                                        class="btn btn-primary">수정</a>
                                </c:when>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>

            <c:if test="${not empty storeListSearch }">
                <c:forEach var="Search" items="${storeListSearch }">
                    <tr>
                        <td>${Search.w_name }</td>
                        <td>${Search.w_location}</td>
                        <td>${Search.w_kind}</td>
                        <td>${Search.w_amount}</td>
                        <td>${Search.w_price }</td>
                        <td>${Search.w_vintage}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty loginVo.u_no}">
                                    <form action="/AddCart" method="POST">
                                        <input type="hidden" name="u_no" value="${loginVo.u_no}">
                                        <input type="hidden" name="w_no" value="${Search.w_no}">
                                        <input type="hidden" name="wl_idx" value="${Search.wl_idx}">
                                        <input type="hidden" name="s_no" value="${Search.s_no}">
                                        <input id="text1" type="text" name="c_count" placeholder="수량 입력">
                                        <input type="submit" value="장바구니에 추가" onclick="myFunction()">
                                    </form>
                                </c:when>
                                <c:when test="${not empty sloginVo.s_no and sloginVo.s_no eq Search.s_no }">
                                    <input id="text1" type="text" name="w_amount" placeholder="수량 입력">
                                    <a href="/WineUpdateForm?s_no=${Search.s_no }&wl_idx=${Search.wl_idx}"
                                        class="btn btn-primary">수정</a>
                                </c:when>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
        <br>
        <div class="pagination">

    <c:if test="${not empty pds && pds.startPage != 1 }">
    <a href="/StoreWineManaget?s_no=${s_no }&nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <a>${p}</a> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/StoreWineManage?s_no=${s_no }&nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/StoreWineManage?s_no=${s_no }&nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>
</div>
        <!-- 매장 홈으로 버튼 -->
        <div class="back-home-button">
            <button class="btn btn-secondary" onclick="history.back();">홈으로</button>
        </div>
    </main>
    <script>
        function myFunction() {
            alert("장바구니에 추가되었습니다");
        }
    </script>
</body>
</html>