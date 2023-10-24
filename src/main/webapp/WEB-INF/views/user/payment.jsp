<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>결제 확인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imgpage/favicon.ico">
<script type="text/javascript"   src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<style>
body {
    background-color: #f7f7f7;
}

.container1 {
    background-color: #f2f2f2;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
    margin: 20px auto;
    max-width: 800px;
}

h1 {
    text-align: center;
}

.user-info, .order-info {
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 20px;
    margin-top: 20px;
     background-color: #fff;
}

.btn-primary {
    display: block;
    margin: 0 auto;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/include/nav.jsp" %>
<div class="breadcrumb-section breadcrumb-bg">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
               <br>
                  <h1>결제 확인</h1>
                  <br>
                  <p>Store Information</p>
               </div>
            </div>
   </div>
   <br>
   <br>
<div class="container1">
        <div class="user-info">
            <h2>주문자</h2>
            <c:forEach var="user" items="${userList}">
                <p><strong>이름:</strong><span id="u_name">${user.u_name }</span></p>
                <p><strong>주소:</strong><span id="u_address">${user.u_address }${user.u_detailAddress }</span></p>
                <p><strong>휴대폰:</strong><span id="u_phone">${user.u_phone }</span></p>
            </c:forEach>
        </div>
        <div class="order-info">
            <h2>주문 정보</h2>
            <c:forEach var="sel" items="${selCartList}">
                <p><strong>와인명:</strong><span id="w_name">${sel.w_name }</span></p>
                <p><strong>판매점:</strong><span id="s_name">${sel.s_name }</span></p>
                <p><strong>가격:</strong><span id="w_price">${sel.w_price }</span></p>
                <p><strong>수량:</strong><span id="c_count">${sel.c_count }</span></p>
                <p><strong>총가격:</strong><span id=c_allprice>${sel.c_allprice }</span></p>
                <p><strong>판매점번호:</strong><span id="s_no">${sel.s_no }</span></p>
                <p><strong>와인번호:</strong><span id="w_no">${sel.w_no }</span></p>
                <p><strong>장바구니번호:</strong><span id="c_idx">${sel.c_idx }</span></p>
                <p><strong>장바구니번호:</strong><span id="wl_idx">${sel.wl_idx }</span></p>
                <p><strong>와인목록:</strong><span id="w_amount">${sel.w_amount }</span></p>
                
		        <c:set var="totalPrice" value="${totalPrice + sel.c_allprice }" />
            </c:forEach>
		<p><strong>주문 총액:</strong><span id="p_allprice">${totalPrice}</span></p>
        </div>
        <div class="text-center">
        <br>
            <div class="btn-group">
                <button class="btn btn-primary" id="money-btn">결제</button>
            </div>
        </div>
</div>
<script>

var IMP  =  window.IMP;
IMP.init("imp64553480")

var storeName  = '와인이야기';
var wineNames   =  [];
var tel         =   document.getElementById('u_phone').textContent;
var wineNameElements  =  document.querySelectorAll('#w_name');
wineNameElements.forEach(function(element) {
   wineNames.push(element.textContent);
});
var s_no = document.getElementById('s_no').textContent;

var w_no = document.getElementById('w_no').textContent;

var c_idx = document.getElementById('c_idx').textContent;

var wl_idx = document.getElementById('wl_idx').textContent;

var w_amount = document.getElementById('w_amount').textContent;

var c_count = document.getElementById('c_count').textContent;

var wineName  =  wineNames.join(',');

var totalPrice  =  document.getElementById('p_allprice').textContent;
    totalPrice  =  parseInt(totalPrice);
    console.log(wineName);

$('#money-btn').click(function() {
   IMP.request_pay({
      pg: 'kakaopay',
      pay_method: 'card',
      merchant_uid: 'merchant_' + new Date().getTime(),      
      name  : wineName,
      amount: totalPrice,
      customer_uid : 'store-fd4992b6-fce9-4f0e-bc65-7372b0736b89'
   }, function(rsp) {
      console.log(rsp);
      
       //결제 성공 시
      if (rsp.success) {
         var msg = '결제가 완료되었습니다.';
         var result = {
               "paynum" : rsp.merchant_uid,
               "u_no" : ${loginVo.u_no},
               "sh_date" : new Date().toISOString().slice(0,10),
               "p_allprice" : totalPrice,
               "s_no" : s_no,
               "w_no" : w_no,
               "c_idx" : c_idx,
               "wl_idx" : wl_idx,
               "w_amount" : w_amount,
               "c_count" : c_count
         }
         
         $.ajax({
            url: '/insertPay',
            type: "POST",
            contentType : 'application/json',
            data: JSON.stringify(result),
            success : function (res) {
               console.log(res);
               location.href = "/";
            },
         });
      } else {
         var msg = '결제에 실패하였습니다.';
         msg += '에러내용 : ' + rsp.error_msg;
      }
         alert(msg);
   });
});

</script>
</body>
</html>