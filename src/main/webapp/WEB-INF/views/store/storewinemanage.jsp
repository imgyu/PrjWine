<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>와인 목록</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
</head>

<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="col-lg-8 offset-lg-2 text-center">
			<div class="breadcrumb-text">
				<br>
				<h1>Welcome to Wine Story</h1>
				<br>
				<p class="subtitle">Hello!!</p>
			</div>
		</div>
	</div>
	<br>
	<br>

    <main>
        <!-- 버튼 검색 -->
        <div class="container">
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
                            <input type="text" class="form-control" name="searchKeyword" placeholder="검색어 입력">
                                <button type="submit" class="btn btn-primary">검색</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br> <br>

        <table id="table">
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
        <div style="display: block; text-align: center;">

    <c:if test="${not empty pds && pds.startPage != 1 }">
    <a href="/StoreWineManaget?s_no=${s_no }&nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
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
            <button class="btn btn-primary" onclick="history.back();">매장 홈으로</button>
        </div>
    </main>
    <script>
        function myFunction() {
            alert("장바구니에 추가되었습니다");
        }
    </script>
</body>
</html>