<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<title>진행중인 프로모션</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<style>
 .event-button {
        width: 70%; /* 중앙 70% 폭 설정 */
        margin: 0 auto; /* 가운데 정렬 */
    }

    .event-button ul {
        list-style-type: none;
        padding: 0;
        display: flex;
        justify-content: space-between;
    }
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
         vertical-align: middle;
      }

      /* 테이블 내용 중 텍스트가 왼쪽 정렬되어야 하는 셀 */
      #table td:nth-child(2) { text-align: center; /* 왼쪽 정렬 */ }
       select { padding: 5px; }
      
      /* 첫번째 열의 td들 색변경 */
      .first-row td {
      background-color: #f2f2f2;
      } 
      
        .promotion-link {
        flex: 1;
        text-align: center; /* 가운데 정렬 */
    }

       .promotion-link a {
        display: block;
        text-decoration: none;
        color: #000;
        font-weight: bold;
        padding: 10px; /* 내부 여백 설정 */
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    
.back-home-button {
	text-align: center; /* 가로 중앙 정렬 */
	display: flex;
	justify-content: center; /* 가로 중앙 정렬 */
	margin-top: 20px; 
}	

.card-info {
	text-decoration: none;
	font-size: 18px; /* 글씨 크기 조절 */
	color: #000; /* 글씨 색상 추가 */
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
               <h1>진행중인 프로모션</h1>
               <br>
               <p>Promotion</p>
            </div>
         </div>
      </div>
<br>
<br>
   <div class="event-button">
		<ul>
			<li class="promotion-link"><a href="/AdminEvent">이달의 프로모션</a></li>
			<li class="promotion-link"><a href="/AdminEndEventList">종료된 프로모션</a></li>
		</ul>
	</div>

	<table id="table" class="table table-striped table-hover">
	<tr class="first-row">
	    <th><input type="checkbox" id="allCheck"></th>
		<th>이벤트제목</th>
		<th>매장번호</th>
		<th>미리보기사진</th>
		<th>메인사진</th>
		<th>이벤트시작날짜</th>
		<th>이벤트마감날짜</th>
	</tr>
	
	
	<c:forEach var="admineventlist" items="${admineventlist }">
	<tr>
	    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${admineventlist.e_idx }"></td>
	    <td onclick="window.location='/EventCont?e_idx=${admineventlist.e_idx }'" class="card-info">${admineventlist.e_title }</td>
	    <td onclick="window.location='/EventCont?e_idx=${admineventlist.e_idx }'" class="card-info">${admineventlist.s_no}</td>
	    <td onclick="window.location='/EventCont?e_idx=${admineventlist.e_idx }'" class="card-info"><img src="/imgpage/${admineventlist.e_fimg}" style="max-width: 100px;
		     max-height: 100px; overflow: hidden; /* 이미지를 컨테이너 크기로 자르기 */"></td>
	    <td onclick="window.location='/EventCont?e_idx=${admineventlist.e_idx }'" class="card-info"><img src="/imgpage/${admineventlist.e_bimg}" style="max-width: 100px;
		     max-height: 100px; overflow: hidden; /* 이미지를 컨테이너 크기로 자르기 */"></td>
		<td onclick="window.location='/EventCont?e_idx=${admineventlist.e_idx }'" class="card-info"><fmt:formatDate value="${admineventlist.e_sdate }" pattern="yyyy-MM-dd HH:mm" /></td>     
		<td onclick="window.location='/EventCont?e_idx=${admineventlist.e_idx }'" class="card-info"><fmt:formatDate value="${admineventlist.e_edate }" pattern="yyyy-MM-dd HH:mm" /></td>     
	</tr>
	</c:forEach>
	</table>
	<br>
	<div class="back-home-button text-center">
	 <a type="button" class="btn btn-danger"" onclick="deleteValue();">삭제</a>
	 </div>
	<div class="pagination">

    <c:if test="${pds.startPage != 1 }">
    <a href="/AdminEvent?nowPage=${pds.startPage - 1 }&cntPerPage=${pds.cntPerPage}">&lt;</a>
    </c:if>
    <c:forEach begin="${pds.startPage }" end="${pds.endPage }" var="p">
      <c:choose>
       <c:when test="${p == pds.nowPage }">
 <a>${p}</a>
       </c:when>
        <c:when test="${p != page.nowPage }">
          <a href="/AdminEvent?nowPage=${p }&cntPerPage=${pds.cntPerPage}">${p }</a>
        </c:when>
      </c:choose>
    </c:forEach>
 <c:if test="${pds.endPage != pds.lastPage }">
   <a href="/AdminEvent?nowPage=${pds.endPage+1 }&cenPerPage${pds.cntPerPage}">&gt;</a>
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
	   var e_idx =  ${e_idx};
	   var url  =  "/AdminEventListDelete?e_idx" + e_idx;
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