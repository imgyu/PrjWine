<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>고객 정보 확인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        .logintitle {
            text-align: center;
            margin-top: 40px;
        }

        .container {
            margin: 0 auto;
            max-width: 500px;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .container p {
            margin: 10px 0;
            font-weight: bold;
        }

        .btn {
            display: block;
            margin: 0 auto;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp" %>

<h2 class="logintitle">고객 정보 수정</h2>
<div class="container">
    <form action="/UserUpdate?u_no=${loginVo.u_no }" method="POST">
    	<c:forEach var="user" items="${userList }">
            <div class="mb-3">
                <label for="userId" class="form-label">아이디:</label>
                <span id="userId" class="form-text">${user.u_id }</span>
            </div>
            <div class="mb-3">
                 <label for="userpw" class="form-label"  >변경할 비밀번호</label>
                 <input type="password" name="u_pw" id="user_pw1" minlength="8" maxlength="16" placeholder="8~16자리 특수문자 조합" ><br>
                 <span id=pwdcheck_1 ></span>
            </div>
            <div class="mb-3">
                <label for="userpw" class="form-label"  >비밀번호 확인</label>
                <input type="password" name="u_pwChk" id="user_pw2" onKeyUp="fn_compare_pwd();" minlength="8" maxlength="16" placeholder="8~16자리 특수문자 조합" ><br>
                <span id="pwdcheck_2"></span>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">이름:</label>
                <span id="userName" class="form-text">${user.u_name }</span>
            </div>
            <div class="mb-3">
                <label for="userAddress" class="form-label">주소:</label>
                <input type="text" name="u_address" value="${user.u_address }">
            </div>
            <div class="mb-3">
                <label for="userPhone" class="form-label">연락처:</label>
                <input type="text" name="u_phone" value="${user.u_phone }">
            </div>
            <div class="mb-3">
                <label for="userPoint" class="form-label">보유 포인트:</label>
                <span id="userPoint" class="form-text">${user.u_point }</span>
            </div>
        </c:forEach>
        <div class="text-center">
          <div class="btn-group">
             <button type="submit" class="btn btn-primary mx-2">수정하기</button>
          </div>
        </div>
    </form>
</div>
<script>

$("#user_pw1").blur(function () {
	let pwdCheck= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	
	if($("#user_pw1").val() == "") {
		$("#pwdcheck_1").text("비밀번호를 입력하세요.");
		user_pwd1  =  false;
	}
	else if (!pwdCheck.test($("#user_pw1").val())) {
		$("#pwdcheck_1").text("이건 틀린거 ");
		user_pwd1  =  false;
	} else {
		$("#pwdcheck_1").text("안전한 비밀번호 입니다")
		user_pwd1  =  true;
	}
});

$("#user_pw2").blur(function() {
	if($("user_pw2").val() == "") {
		$("#pwdcheck_2").css("color", "red");
		$("#pwdcheck_2").text("필수정보입니다");
		user_pw2 = false;
	}
	else if(user_pwd1 == true && $("#user_pw1").val() == $("#user_pw2").val()) {
		$("#pwdcheck_2").css("color", "blue");
		$("#pwdcheck_2").text("비밀번호 일치");
		user_pw2 = true;
	} else {
		$("#pwdcheck_2").text("비밀번호 다시 확인해주세요");
		$("#pwdcheck_2").css("color", "red");
		$("#user_pw2").val("");
		user_pw2 = false;
	}
});



</script>
</body>
</html>
