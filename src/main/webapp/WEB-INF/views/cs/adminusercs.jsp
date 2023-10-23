<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>고객 센터(유저)</title>
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


    <main>
     <%--    <!-- 버튼 검색 -->
        <div class="container">
            <form action="/UcsCategorySearch" method="GET" id="search-form">
                <input type="hidden" name="u_no" value="${u_no}" />
                <div class="row">
                    <div class="col-md-3">
                        <select class="form-select" name="ucs_category">
                            <option value="ucs_category">카테고리</option>
                            <option value="계정관리">계정관리</option>
                            <option value="결제/환불">결제/환불</option>
                            <option value="입점문의">입점문의</option>
                            <option value="건의사항">건의사항</option>
                            <option value="고객센터/기타">고객센터/기타</option>
                        </select>
                    </div>
                                <button type="submit" class="btn btn-primary">검색</button>
           
                        </div>
              
            </form>
        </div>
        <br> <br> --%>
        <div class="event-button">
		<ul>
			<li class="promotion-link"><a href="/CsAllUser">유저 고객센터</a></li>
			<li class="promotion-link"><a href="CsAllStore">매장 고객센터</a></li>
		</ul>
	</div>

        <table id="table">
            <tr>
                <th>문의번호</th>
                <th>문의자ID</th>
                <th>카테고리</th>
                <th>문의제목</th>
                <th>문의날짜</th>
                <th>답변날짜</th>
            </tr>

            <!-- 검색하지 않았을떄  -->
            <c:if test="${not empty csalluserList}">
                <c:forEach var="ucs" items="${csalluserList }">
                    <tr>
                       <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_idx}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.u_id}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_category}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.ucs_title}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.uw_date}</a></td>
                        <td><a href="/AdminCsView?ucs_idx=${ucs.ucs_idx}" class="nav-link">${ucs.res_date}</a></td>
                    </tr>
                </c:forEach>
            </c:if>

 
 
             <%--      <c:if test="${not empty csalluserList}">
                <c:forEach var="ucs" items="${csalluserList }">
                    <tr>
                      <td>${ucs.ucs_idx }</td>
                        <td>${ucs.u_id}</td>
                        <td>${ucs.ucs_category}</td>
                        <td>${ucs.ucs_title}</td>
                        <td>${ucs.uw_date}</td>
                        <td>${ucs.res_date}</td>
                    </tr>
                </c:forEach>
            </c:if> --%>

        </table>
        
    <div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/CsAllUser?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/CsAllUser?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/CsAllUser?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>
 </div>

        <!-- 매장 홈으로 버튼 -->
        <a href="/" class="btn btn-primary">홈버튼</a>
        
 
    </main>
    <script>
        
    </script>
</body>
</html>