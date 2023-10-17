<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
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
   .tr_header { 
      background-color : black;
      color :white;
   }
   .tr_header > td {
      text-align :center;
      font-weight : bold;
   }
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
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
 <%@include file="/WEB-INF/include/nav.jsp" %>
  <div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<h1>메뉴목록</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
   <main>
   	  
   	 <table>   	  
   	   <tr class="tr_header">
   	     <td>Menu_id</td>
   	     <td>Menu_Name</td>
   	     <td>Menu_Seq</td>
   	     <td>삭제</td>
   	     <td>수정</td>
   	   </tr>
   	   <tr>
   	     <td colspan="5" style="text-align:right;padding-right:30px;">
   	       <a href="/Menus/WriteForm">[메뉴등록]</a>
   	       <a href="/Menus/WriteForm2">[메뉴등록2]</a>
   	       <a href="/">[Home]</a>
   	     </td>
   	   </tr>
   	   <c:forEach var="menu"  items="${ menuList }">
   	   <tr>
   	     <td>${ menu.menu_id   }</td>
   	     <td>${ menu.menu_name }</td>
   	     <td>${ menu.menu_seq  }</td>
   	     <td><a href="/Menus/Delete?menu_id=${ menu.menu_id }">삭제</a></td>
   	     <td><a href="/Menus/UpdateForm?menu_id=${ menu.menu_id }">수정</a></td>
   	   </tr>
   	   </c:forEach>
   	   
   	 </table> 
   	  
   </main>
   
</body>
</html>










