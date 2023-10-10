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
.inputRound {
   border-radius: 5px;
}
</style>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
   crossorigin="anonymous"></script>
<script>
    // all 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="all_click"]').addEventListener('click', function() {
        location.href = '/All_Click';
    });
    
    // Red 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="red_click"]').addEventListener('click', function() {
        location.href = '/Red_Click';
    });

    // White 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="white_click"]').addEventListener('click', function() {
        location.href = '/White_Click';
    });

    // Sparkling 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="sparkling_click"]').addEventListener('click', function() {
        location.href = '/Sparkling_Click';
    });

    // Rose 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="rose_click"]').addEventListener('click', function() {
        location.href = '/Rose_Click';
    });

    // Other 버튼 클릭 이벤트 핸들러
    document.querySelector('[name="other_click"]').addEventListener('click', function() {
        location.href = '/Other_Click';
    });
</script>
</head>
<body>
   <%@include file="/WEB-INF/include/nav.jsp"%>

   <h1 style="text-align: center; margin-top: 60px;">전체와인</h1>
   <br>
   <br>

   <!-- 와인 검색start -->
   <div class="container">
      <!-- 버튼 검색 -->
      <div>
           <button type="button" onclick="location.href='/All_Click'"       name="all_click" class="btn btn-outline-secondary">all</button>
           <button type="button" onclick="location.href='/Red_Click'"       name="red_click" class="btn btn-outline-secondary">레드와인</button>
           <button type="button" onclick="location.href='/White_Click'"     name="white_click" class="btn btn-outline-secondary">화이트와인</button>
           <button type="button" onclick="location.href='/Sparkling_Click'" name="sparkling_click" class="btn btn-outline-secondary">스파클링</button>
           <button type="button" onclick="location.href='/Rose_Click'"      name="rose_click" class="btn btn-outline-secondary">로제</button>
           <button type="button" onclick="location.href='/Other_Click'"     name="other_click" class="btn btn-outline-secondary">기타와인</button>
      </div>
      <br>
      <br>
      <!-- input 검색 -->
      <div>
         <form action="/NameSearch" method="POST">
            <input type="search"   name="name_Search" placeholder="와인이름">
            <input type="submit"   value="찾기">
         </form>
      </div>
   </div>
   <!-- 와인 검색end -->

   <!--  와인 리스트 All버튼 -->
   <div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${allClick}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
                  <img src="${wine.w_image}" alt="와인이미지" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
            <div class="card-body">
               <h5 class="card-title">${wine.w_name}</h5>
               <p class="card-text">${wine.w_wineery}</p>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
   <!--  와인 리스트 ALL버튼 END -->
   
   <!--  와인 리스트 red버튼 -->
   <div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${redClick}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
                  <img src="${wine.w_image}" alt="와인이미지" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
            <div class="card-body">
               <h5 class="card-title">${wine.w_name}</h5>
               <p class="card-text">${wine.w_wineery}</p>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
   <!--  와인 리스트 red버튼 END -->
   
   <!--  와인 리스트 화이트버튼 -->
   <div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${whiteClick}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
                  <img src="${wine.w_image}" alt="와인이미지" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
            <div class="card-body">
               <h5 class="card-title">${wine.w_name}</h5>
               <p class="card-text">${wine.w_wineery}</p>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
   <!--  와인 리스트 화이트버튼 END -->

   <!--  와인 리스트 스파클링버튼 -->
   <div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${sparkClick}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
                  <img src="${wine.w_image}" alt="와인이미지" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
            <div class="card-body">
               <h5 class="card-title">${wine.w_name}</h5>
               <p class="card-text">${wine.w_wineery}</p>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
   <!--  와인 리스트 스파클링버튼 END -->

   <!--  와인 리스트 로제버튼 -->
   <div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${roseClick}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
                  <img src="${wine.w_image}" alt="와인이미지" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
            <div class="card-body">
               <h5 class="card-title">${wine.w_name}</h5>
               <p class="card-text">${wine.w_wineery}</p>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
   <!--  와인 리스트 로제버튼 END -->

   <!--  와인 리스트 나머지버튼 -->
   <div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${otherClick}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
                  <img src="${wine.w_image}" alt="와인이미지" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
            <div class="card-body">
               <h5 class="card-title">${wine.w_name}</h5>
               <p class="card-text">${wine.w_wineery}</p>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
   <!--  와인 리스트 나머지버튼 END -->
   
   <!--  와인 리스트  -->
   <div class="container"
      style="margin-top: 60px; display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; justify-content: start;">
      <c:forEach var="wine" items="${nameSearch}">
         <div class="card" style="width: 18rem;">
             <div style="max-width: 300px; max-height: 300px; margin: 0 auto;">
                  <img src="${wine.w_image}" alt="와인이미지" style="width: 100%; height: 100%; object-fit: contain;">
              </div>
            <div class="card-body">
               <h5 class="card-title">${wine.w_name}</h5>
               <p class="card-text">${wine.w_wineery}</p>
               <p class="card-text">${wine.w_kind}</p>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">${wine.w_price}</li>
                  <li class="list-group-item">${wine.w_amount}</li>
                  <li class="list-group-item"></li>
               </ul>
               <a href="/WineInfo?w_no=${wine.w_no}" class="btn btn-primary">와인 보기</a>
            </div>
         </div>
      </c:forEach>
   </div>
 

</body>
</html>