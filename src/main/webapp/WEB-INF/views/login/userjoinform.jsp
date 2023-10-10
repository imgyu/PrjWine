<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<style>
.logintitle {
	text-align: center;
	margin-top: 40px;
}

.container {
	margin: 0 auto; /* 상하여백 좌우여백 */
}

table {
	margin: 0 auto;
	border: 2px solid;
	border-collapse: collapse;
}

tr>td:nth-child(1) {
	text-align: center;
}

tr, td {
	border: 2px solid;
}

.redFont {
	color: red;
	font-size: 12px;
	font-style: italic;
}

textarea {
	resize: none;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/include/nav.jsp"%>

	<h2 class="logintitle">고객 회원가입</h2>
	<div class="container">
		<form action="/UserJoin" method="POST">
			<table>
				<colgroup>
					<col width="25%">
					<col width="*">
				</colgroup>
				<tr>
					<td colspan="2"
						style="background-color: #cee3f6; font-weight: bold;"><span
						class="redFont">(*필수입력)</span> 회원기본정보</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>아이디:</td>
					<td><input type="text" name="u_id" style="width: 200px">

				</tr>
				<tr>
					<td><span class="redFont">*</span>비밀번호:</td>
					<td><input type="password" name="u_pw" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>이름:</td>
					<td><input type="text" name="u_name" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>생일:</td>
					<td>
						<div>
							<input type="text" name="u_birth" placeholder="태어난년도"
								style="width: 200px">
						</div>
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>주소:</td>
					<td>
						<div>
							<input type="text" id="u_postcode" name="u_postcode" placeholder="우편번호">
							<input type="button" onclick="u_execDaumPostcode()"
								value="우편번호 찾기"><br> <input type="text"
								id="u_address" name="u_address" placeholder="주소"><br> <input
								type="text" id="u_detailAddress" name="u_detailAddress" placeholder="상세주소">
							<input type="text" id="u_extraAddress" name="u_extraAddress" placeholder="참고항목">
						</div>
					</td>
				</tr>
				<tr>
					<td><span class="redFont">*</span>연락처:</td>
					<td>
						<div>
							<input type="text" name="u_phone" placeholder="(-)빼고 입력">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<button class="btn btn-primary" type="submit">회원가입</button>
							<a class="btn btn-primary" href="/" role="button">홈으로가기</a>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>




	<script>
		 function u_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수

		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("u_extraAddress").value = extraAddr;
		                
		                } else {
		                    document.getElementById("u_extraAddress").value = '';
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('u_postcode').value = data.zonecode;
		                document.getElementById("u_address").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("u_detailAddress").focus();
		            }
		        }).open();
		    }
		
	</script>
</body>
</html>

