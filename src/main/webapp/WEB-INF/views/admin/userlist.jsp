<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<title>고객목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
  #table { 
         width: 70%; 
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
         border: 2px solid #dddddd; /* 테두리 선 스타일 */
         padding: 10px; /* 셀 안 여백 */
         text-align: center; /* 가운데 정렬 */
      }

      /* 테이블 내용 중 텍스트가 왼쪽 정렬되어야 하는 셀 */
      #table td:nth-child(2) { text-align: center; /* 왼쪽 정렬 */ }
       select { padding: 5px; }
      
      /* 첫번째 열의 td들 색변경 */
      .first-row td {
      background-color: #f2f2f2;
      }
      
      .back-home-button {
	text-align: center; /* 가로 중앙 정렬 */
	display: flex;
	justify-content: center; /* 가로 중앙 정렬 */
	margin-top: 20px; 
}	
      
 tr th {
    background-color: #800021 !important;
  }
  
th {
      color: #ffffff !important; /* 테이블 헤더 글자색 */
      text-align: center; /* 헤더 텍스트 중앙 정렬 */
   }  
        
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>고객목록</h1>
               <br>
               <p>Customer List</p>
            </div>
         </div>
      </div>
<br>
<br>



	<table id="table" class="table table-striped table-hover">
	<tr class="first-row">
	    <th><input type="checkbox" id="allCheck"></th>
		<th>고객No</th>
		<th>고객ID</th>
		<th>고객이름</th>
		<th>고객주소</th>
		<th>고객번호</th>
		<th>고객포인트</th>
	</tr>
	
	
	<c:forEach var="userList" items="${userList}">
	<tr>
	    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${userList.u_no }"></td>
		<td>${userList.u_no }</td>
		<td>${userList.u_id}</td>
		<td>${userList.u_name }</td>
		<td>${userList.u_address } &nbsp; ${userList.u_detailAddress }</td>
		<td>${userList.u_phone }</td>
		<td>${userList.u_point }</td>
	</tr>
	</c:forEach>
	</table>
	 <div class="back-home-button text-center">
	<a type="button" class="btn btn-danger" onclick="deleteValue();">삭제</a>
	</div>
	<div class="pagination">

    <c:if test="${pds.startPage != 1 }">
    <a href="/AdminUserList?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
          <a>${p}</a>
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/AdminUserList?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/AdminUserList?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
 </c:if>

</div>
 
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
	   var u_no =  ${u_no};
	   var url  =  "/AdminUserListDelete?u_no=" + u_no;
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