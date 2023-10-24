<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
         background-color: #800021; /* 헤더 배경색 - 빨간색 */
         color: #f2f2f2;
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
      
      /* 첫번째 열의 td들 색변경 */
      .first-row td {
      background-color: #f2f2f2;
      } 
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
	  <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>관심매장</h1>
                  <br>
                  <p>User Information</p>
               </div>
      </div>
   </div>
   <br>
   <br>
	<table id="table" class="table table-striped table-hover">
	<tr class="first-row">
	    <th><input type="checkbox" id="allCheck"></th>
		<th>매장이름</th>
		<th>매장주소</th>
	</tr>
	<c:forEach var="favorite" items="${favorites}">
	 <tr>
	    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${favorite.s_no }">
	        <input type="hidden" value="${favorite.u_no }"></td>
		<td onclick="window.location='/StoreInfo?s_no=${favorite.s_no }'">${favorite.s_name}</td>
		<td onclick="window.location='/StoreInfo?s_no=${favorite.s_no }'">${favorite.s_address }&nbsp;${favorite.s_detailAddress }</td>
	</tr>
   </c:forEach>
	</table>
	<br>
	<div style="text-align: center;">
		<a type="button" class="btn btn-danger" onclick="deleteValue();">삭제</a>
		<button type="button" class="btn btn-secondary" onclick="location.href='/ '">메인 화면</button>
	</div>
</body>
<script>
function confirmDelete() {
    if (confirm('삭제하시겠습니까?')) {
        alert("삭제되었습니다.");
    } else {
    	alert("삭제 실패");
    	event.preventDefault(); // 링크를 직접 실행하지 않음
    }
}

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
	   var s_no =  ${s_no};
	   var url  =  "/UserFavoriteDelete?u_no=" + u_no + "&s_no=" + s_no;
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
	      if(chk){
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
</html>