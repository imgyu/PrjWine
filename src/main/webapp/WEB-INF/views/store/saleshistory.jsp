<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<title>판매기록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

	<form action="/SalesHistoryUpdate" method="post">
    <table id="table">
        <tr>
            <th><input type="checkbox" id="allCheck"></th>
            <th>판매날짜</th>
            <th>손님고유번호</th>
            <th>손님이름</th>
            <th>손님연락처</th>
            <th>판매와인</th>
            <th>와인단가</th>
            <th>총가격</th>
            <th>
                <select id="select" name="p_state">
                    <option value="0">결제완료</option>
                    <option value="1">배송 준비완료</option>
                    <option value="2">배송중</option>
                    <option value="3">배송완료</option>
                </select>
            </th>
        </tr>

        <c:forEach var="sales" items="${salesHistory}">
        <input type="hidden" value="${sales.s_no}" name="s_no">
            <tr>
                <td><input type="checkbox" name="valueArr" value="${sales.paynum}" id="rowCheck"></td>
                <td>${sales.sh_date}</td>
                <td>${sales.u_no}</td>
                <td>${sales.u_name}</td>
                <td>${sales.u_phone}</td>
                <td>${sales.w_name}</td>
                <td>${sales.w_price}</td>
                <td>${sales.p_allprice}</td>
                <td>${sales.p_state}</td>
            </tr>
        </c:forEach>
    </table>
    <button type="submit" class="btn btn-primary">수정</button>
</form>
<script>

document.addEventListener("DOMContentLoaded", function () {
    // 수정 버튼 클릭 시 이벤트 핸들러
    $("button[type='submit']").click(function () {
        var chk_listArr = $("input[id='rowCheck']");
        var atLeastOneChecked = false;

        // 모든 체크박스를 확인하고 최소 하나 이상이 체크되었는지 확인
        for (var i = 0; i < chk_listArr.length; i++) {
            if (chk_listArr[i].checked) {
                atLeastOneChecked = true;
                break;
            }
        }

        if (!atLeastOneChecked) {
            alert("체크하세요!"); // 아무 체크가 되어있지 않으면 알림 표시
            return false; // 폼 전송을 막음
        }
    });

    // 전체 선택/해제 체크박스 이벤트 핸들러
    $("input[id='allCheck']").click(function () {
        var chk_listArr = $("input[id='rowCheck']");
        for (var i = 0; i < chk_listArr.length; i++) {
            chk_listArr[i].checked = this.checked;
        }
    });
});


</script>
</body>
</html>