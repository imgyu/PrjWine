<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
 .dropmenu{
border:none;
border:0px;
margin:0px;
padding:0px;
font: "sans-serif";
font-size:18px;
}

.dropmenu ul{
background: #800080;
height:100px;
list-style:none;
margin:0;
padding:0;
}

.dropmenu li{
float:left;
padding:0px;
}

.dropmenu li a{
background: #666;
color:#fff;
display:block;
line-height:100px;
margin:0px;
padding:0px 25px;
text-align:center;
text-decoration:none;
}

.dropmenu li a:hover, .dropmenu ul li:hover a{
background: rgb(31,31,31);
color:#00FFFF;
text-decoration:none;
}

.dropmenu li ul{
background: red;
display:none; 
height:auto;
border:0px;
position:absolute;
width:200px;
z-index:200;
/*top:1em;
/*left:0;*/
}

.dropmenu li:hover ul{
display:block;
}

.dropmenu li li {
background: #808080;
display:block;
float:none;
margin:0px;
padding:0px;
width:200px;
}

.dropmenu li:hover li a{
background:none;
}

.dropmenu li ul a{
display:block;
height:80px;
font-size:14px;
margin:0px;
padding:0px 10px 0px 15px;
text-align:left;
}

.dropmenu li ul a:hover, .dropmenu li ul li:hover a{
background: rgb(171,171,171);
border:0px;
color:#808080;
text-decoration:none;
}

.dropmenu p{
clear:left;
}
</style>
<!-- 위nav  -->
<div class="dropmenu">
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/UserLoginForm" ><b>고객로그인</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/StoreLoginForm"><b>가게로그인</b></a>
  </li>
</ul>
<!-- 위nav -->

<!-- 아래nav -->
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/StoreList"><b>매장찾기</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/WineList"><b>전체와인</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"><b>프로모션/이벤트</b></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/Testinglist"><b>시음회 정보</b></a>
  </li>
  <li class="nav-item">
    <a href="#" id="dropdown">점주페이지</a>
  <ul>
     <li><a href="#">와인관리</a></li>
     <li><a href="#">매장관리</a></li>
     <li><a href="#">매장쿠폰</a></li>
    </ul>
 </li>
</ul>
</div>
<!-- 아래nav -->