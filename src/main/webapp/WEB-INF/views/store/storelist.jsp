<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
 <%@include file="/WEB-INF/include/nav.jsp" %>

<h1 style="text-align: center; margin-top: 60px;">매장찾기</h1>

<form action="/StoreList" method="POST">
	<div class="container" style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px;">
		<select name="u_si" id="u_si" onchange="itemChange()">
			<option value="서울">서울</option>
		    <option value="부산">부산</option>
		</select>
		<select name="u_gu" id="u_gu">
		</select>
	</div>
	<div class="container" style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px;">
		<button class="btn btn-primary" type="submit">위 지역으로 검색</button>
	</div>
</form>

<div class="container" style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px;">
	<c:forEach var="strvo" items="${ strvoli }">    
    	<div class="card" style="width: 18rem;">
	  		<img src="/img/test.jpg" class="card-img-top" alt="...">
	  		<div class="card-body">
	    		<h5 class="card-title">${ strvo.s_name }</h5>
	    		<p class="card-text">${ strvo.s_cont }</p>
	 			<ul class="list-group list-group-flush">
	    			<li class="list-group-item">${ strvo.s_si }  ${ strvo.s_gu }</li>
	      			<li class="list-group-item">${ strvo.s_phone }</li>
	      			<li class="list-group-item"></li>
	            </ul>    
	    		<a href="/Storegoinfo?s_no=${ strvo.s_no }" class="btn btn-primary">매장 정보</a>
	    		<a href="/Storegoinfo" class="btn btn-primary">매장 와인</a>
	  		</div>
		</div>
	</c:forEach>
</div>
  
</body>
</html>









