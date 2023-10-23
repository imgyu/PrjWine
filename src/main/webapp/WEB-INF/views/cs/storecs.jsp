<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>(유저)고객 센터</title>
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
   <script>
   function selChange() {
      var sel = document.getElementById('cntPerPage').value;
      location.href="boardList?nowPage=${paging.nowPage}&cntPerPage="+sel;
   }
</script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>


    <main>

        <table id="table">
            <tr>
                <th>문의번호</th>
                <th>카테고리</th>
                <th>문의제목</th>
                <th>문의날짜</th>
                <th>답변날짜</th>
            </tr>

                <c:forEach var="scs" items="${storecsList}">

                    <tr>
                 <td><a href="/CsStoreView?scs_idx=${scs.scs_idx}" class="nav-link">${scs.scs_idx }</a></td>
                        <td><a href="/CsStoreView?scs_idx=${scs.scs_idx}" class="nav-link">${scs.scs_category}</a></td>
                        <td><a href="/CsStoreView?scs_idx=${scs.scs_idx}" class="nav-link">${scs.scs_title}</a></td>
                        <td><a href="/CsStoreView?scs_idx=${scs.scs_idx}" class="nav-link">${scs.sw_date}</a></td>
                        <td><a href="/CsStoreView?scs_idx=${scs.scs_idx}" class="nav-link">${scs.res_date}</a></td>
                    </tr>
                </c:forEach>

        </table>
                   <div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/StoreCs?s_no=${s_no }&nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/StoreCs?s_no=${s_no }&nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/StoreCs?s_no=${s_no }&nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>
 </div>
        
          <a href="/StoreCsInquiryForm?s_no=${sloginVo.s_no }" class="btn btn-primary">글쓰기</a>

   

    </main>
        
</body>
</html>