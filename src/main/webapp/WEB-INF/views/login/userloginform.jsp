<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/responsive.css">	
<style>
.logintitle {
	text-align: center;
	margin-top: 40px;
}
.container1{
    background-color: #f2f2f2;
    width: 400px;
    /* padding-left: 200px;  padding은 안쪽 여백이다. */
    
    padding-top: 100px;
    padding-bottom: 100px;
    /* margin-left: 20px;  margin은 바깥 여백이다. */
    margin: 0 auto;  /* 상하여백(0) 좌우여백(auto) 이 태그를 감싸고있는,,*/
    margin-top: 70px;
    
    
    border-radius: 10px;   /* 테두리이다. */
    
}
table{
    border: 1px solid black;
    border-collapse: collapse;  /* 이중 실선이 하나로 나온다. */
    width:300px;
    margin : 0 auto;
    text-align: center;
}
tr, td{
    border: 1px solid black;
}
 
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="assets/js/jquery.countdown.js"></script>
<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
<script src="assets/js/waypoints.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/jquery.meanmenu.min.js"></script>
<script src="assets/js/sticker.js"></script>
<script src="assets/js/main.js"></script>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp"%>
<div class="breadcrumb-section breadcrumb-bg">
   <div class="container">
      <div class="row">
         <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
               <br>
               <h1>고객 로그인</h1>
               <br>
               <p>프로모션 Information</p>
            </div>
         </div>
      </div>
   </div>
</div>
<br>
<br>
<div class="container1">
<!-- div는 크기를 변경할 수도 있지만, 옆에 아무것도 못온다. 무조건 밑줄에나옴. -->
  <form action="/UserLogin" method="POST" >
    <table >
        <colgroup>
            <col width="30%">
            <col width="70%">
        </colgroup>
        <tr>
            <td>I D</td>
            <td><input type="text" name="u_id" placeholder="Input your ID"></td>
        </tr>
        <tr>
            <td>P W</td>
            <td><input type="password" name="u_pw" placeholder="Input your password"></td>
        </tr>
        <tr>
            <td colspan="2"> <button type="submit">로그인</button>
            <button type="button" onclick="location.href='/UserJoinForm'"> 회원가입</button></td>
            
        </tr>
    </table>
   </form>
 
</div>

		


</body>
</html>









