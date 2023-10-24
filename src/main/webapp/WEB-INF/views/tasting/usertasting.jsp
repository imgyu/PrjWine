<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<title>신청한 시음회 목록</title>
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body {
        background-color: #f2f2f2; /* 전체 배경색 */
    }
    #table {
        width: 70%;
        margin: 0 auto;
        background-color: #ffffff; /* 테이블 배경색 */
        border: 2px solid #ccc; /* 테이블 테두리 스타일 */
        border-radius: 5px;
    }

    /* 테이블 헤더 스타일 */
    #table th {
        background-color: #800021; /* 헤더 배경색 - 빨간색 */
        color: #f2f2f2; /* 글자색을 흰색으로 변경 */
        border: 1px solid #dddddd;
        padding: 10px;
        text-align: center;
        font-weight: bold;
    }

    /* 테이블 내용 스타일 */
    #table td {
        border: 1px solid #dddddd;
        padding: 10px;
        text-align: center;
    }
</style>
      $(function() {

         // 전체 체크    
         var chkObj = document.getElementsByName("rowCheck");
         var rowCnt = chkObj.length;

         $("input[name='allCheck']").click(function() {
            var chk_listArr = $("input[name='rowCheck']");
            for (var i = 0; i < chk_listArr.length; i++) {
               chk_listArr[i].checked = this.checked;
            }
         });
         $("input[name='rowCheck']").click(function() {
            if ($("input[name='allCheck']:checked").length == rowCnt) {
               $("input[name='allCheck']")[0].checked = true;
            } else {
               $("input[name='allCheck']")[0].checked = false;
            }
         });

      });

      function deleteValue() {
         var u_no = ${loginVo.u_no};
         var url ="/UserTastingDelete?u_no="+u_no;
         var valueArr = [];
         var list = $("input[name='rowCheck']");
         for (var i = 0; i < list.length; i++) {
            if (list[i].checked) {
               valueArr.push(list[i].value);
            }
         }
         if (valueArr.length == 0) {
            alert("선택하신 게 없습니다.");
         } else {
            var chk = confirm("정말 삭제하시겠습니까?");
            if(chk){
            $.ajax({
               url : url,
               type : 'post',
               traditional : true,
               data : {
                  'valueArr[]' : valueArr
               },
               success : function(jdata) {
                  if (jdata == 1) {
                     alert("삭제성공");
                     location.reload();

                  } else {
                     alert("삭제 실패");
                      event.preventDefault();
                  }
               }
            });
         }
      } // deleteTASTING
      }
</script>   
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
     <div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>전체매장</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
   </div>
   <br>
   <br>

    <main>
        <table id="table" class="table table-striped table-hover">
            <tr>
                <th><input type="checkbox" name="allCheck" id="allCheck" /></th>
                <th>주최매장</th>
                <th>시음회이름</th>
                <th>시음회장소</th>
                <th>시음회내용</th>
                <th>날짜/시간</th>
                <th>참가비</th>
            </tr>
            <c:forEach var="taste" items="${usertasting}">
                <tr>
                    <td><input type="checkbox" name="rowCheck" id="rowCheck" value="${taste.t_idx}" /></td>
                    <td>${taste.s_name}</td>
                    <td>${taste.t_title}</td>
                    <td>${taste.s_address}${taste.s_detailaddress}</td>
                    <td>${taste.t_cont}</td>
                    <td><fmt:formatDate value="${taste.t_date}" pattern="yyyy-MM-dd HH:mm" /></td>
                    <td>${taste.t_cost}</td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <div class="text-center">
        <input type="button" value="삭제" class="btn btn-danger" onclick="deleteValue();">
        <button type="button" class="btn btn-secondary" onclick="location.href='/ '">메인 화면</button>
       </div>
    </main>

</body>
</html>