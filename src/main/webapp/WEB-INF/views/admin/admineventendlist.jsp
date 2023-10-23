<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<title>이벤트목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
   <div class="event-button">
		<ul>
			<li class="promotion-link"><a href="/AdminEvent">이달의 프로모션</a></li>
			<li class="promotion-link"><a href="/AdminEndEventList">종료된 프로모션</a></li>
		</ul>
	</div>

	<table id="table">
	<tr class="first-row">
	    <th><input type="checkbox" id="allCheck"></th>
		<th>이벤트제목</th>
		<th>주최매장</th>
		<th>미리보기사진</th>
		<th>메인사진</th>
		<th>이벤트시작날짜</th>
		<th>이벤트마감날짜</th>
	</tr>
	
	
	<c:forEach var="admineventendlist" items="${admineventendlist }">
	<tr>
	    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${admineventendlist.e_idx }"></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.e_title }</a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.s_no}</a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link"><img src="/imgpage/${admineventendlist.e_fimg}" style="max-width: 100px;
  max-height: 100px;
  overflow: hidden; /* 이미지를 컨테이너 크기로 자르기 */"></a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link"><img src="/imgpage/${admineventendlist.e_bimg}" style="max-width: 100px;
  max-height: 100px;
  overflow: hidden; /* 이미지를 컨테이너 크기로 자르기 */"></a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.e_sdate }</a></td>
		<td><a href="/EventCont?e_idx=${admineventendlist.e_idx }" class="nav-link">${admineventendlist.e_edate }</a></td>
	</tr>
	</c:forEach>
	</table>
	<div style="display: block; text-align: center;">

    <c:if test="${pds.startPage != 1 }">
    <a href="/AdminEndEventList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
         <b>${p}</b> 
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/AdminEndEventList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/AdminEndEventList?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>

</div>
	 <a type="button" class="btn btn-primary" onclick="deleteValue();">삭제</a>
<script>
//전체 체크    
var chkObj  =  document.getElementsByName("rowCheck");
var rowCnt  =  chkObj.length;

$("input[id='allCheck']").click(function() {
   var chk_listArr  =  $("input[name='rowCheck']");
   for (var i=0; i<chk_listArr.length; i++) {
      chk_listArr[i].checked  =  this.checked;
   }
});

function deleteValue() {
	   var e_idx =  ${e_idx};
	   var url  =  "/AdminEndEventListDelete?e_idx" + e_idx;
	   var valueArr  =  [];
	   var list  =  $("input[name='rowCheck']");
	   for(var i = 0; i < list.length; i++) {
	      if(list[i].checked) {
	         valueArr.push(list[i].value);
	      }
	   }
	   if(valueArr.length == 0) {
	      alert("선택하신 게 없습니다.");
	   }
	   else {
	      var chk  =  confirm("정말 삭제하시겠습니까?");
	      if(chk) {
	      $.ajax({
	         url  :  url,
	         type : 'post',
	         traditional : true,
	         data : {
	            'valueArr[]'  :  valueArr
	         },
	         success: function(jdata) {
	            if(jdata == 1) {
	               alert("삭제성공");
	               location.reload();
	               
	            }
	            else {
	               alert("삭제 실패");
	               event.preventDefault();
	            }
	         }
	      });
	   }
	}  // deleteValue
}

</script>
</body>
</html>