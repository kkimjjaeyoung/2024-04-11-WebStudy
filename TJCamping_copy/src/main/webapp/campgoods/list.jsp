<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Travela - Tourism Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap"
   rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
   
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
   rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
   rel="stylesheet">
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>
<script src="../lib/lightbox/js/lightbox.min.js"></script>
<script type="text/javascript"></script>
<style>
.bg-breadcrumb {
   background-image: url('campgoods_list.jpg');
   background-size: cover; /* 이미지가 요소를 덮도록 설정 */
   background-position: center; /* 이미지가 중앙에 위치하도록 설정 */
}

main {
   margin-top: 70px;
}

.packages-item {
   margin-bottom: 30px; /* 각 패키지 항목 사이에 공간 추가 */
   max-width: 100%; /* 이미지를 컨테이너 너비에 맞게 조정 */
   overflow: hidden; /* 패키지 항목 내부의 넘치는 내용을 숨김 */
   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 부드러운 그림자 추가 */
   border-radius: 10px; /* 모서리를 둥글게 설정 */
   transition: transform 0.2s; /* 호버 시 애니메이션 효과 추가 */
}

.packages-item:hover {
   transform: scale(1.05); /* 호버 시 약간 확대 */
}

.packages-img {
    width: 100%;
    height: 200px; /* 모든 이미지 틀의 높이를 동일하게 설정 */
    overflow: hidden; /* 넘치는 부분을 숨김 */
    border-top-left-radius: 10px; /* 상단 모서리를 둥글게 설정 */
    border-top-right-radius: 10px; /* 상단 모서리를 둥글게 설정 */
}

.packages-img img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 이미지가 틀에 맞추어 크롭되도록 설정 */
    display: block; 
    margin: 0 auto; /* 이미지가 가운데에 위치하도록 설정 */
}

.packages-content h5 {
    white-space: nowrap; /* 텍스트가 한 줄로 표시되도록 설정 */
    overflow: hidden; /* 넘치는 텍스트를 숨김 */
    text-overflow: ellipsis; /* 넘치는 텍스트를 "..."로 표시 */
    text-align: center; /* 텍스트를 가운데 정렬 */
    font-size: 14px;
}

.packages-content {
   padding: 15px;
}

.pagination {
    display: flex;
    justify-content: center;
    padding: 20px 0;
}

.pagination ul {
    list-style: none;
    padding: 0;
    display: flex;
}

.pagination li {
    margin: 0 5px;
}

.pagination a {
    text-decoration: none;
    padding: 10px 15px;
    color: #007bff;
    border: 1px solid #dee2e6;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

.pagination a:hover {
    background-color: #007bff;
    color: white;
}

.pagination .current a {
    background-color: #007bff;
    color: white;
}
/* 기본 페이지네이션 스타일 */
.pagination {
    display: flex;
    justify-content: center;
    padding: 20px 0;
}

.pagination ul {
    list-style: none;
    padding: 0;
    display: flex;
}

.pagination li {
    margin: 0 5px;
}

.pagination a {
    text-decoration: none;
    padding: 10px 15px;
    color: #333; /* 텍스트 색상을 진한 회색으로 설정 */
    border: 1px solid #ddd; /* 테두리 색상을 연한 회색으로 설정 */
    border-radius: 5px;
    background-color: #f1f1f1; /* 배경색을 연한 회색으로 설정 */
    transition: background-color 0.3s, color 0.3s;
}

.pagination a:hover {
    background-color: #ddd; /* 호버 시 배경색을 더 진한 회색으로 설정 */
    color: #333; /* 호버 시 텍스트 색상을 진한 회색으로 설정 */
}

.pagination .current a {
    background-color: #aaa; /* 현재 페이지의 배경색을 진한 회색으로 설정 */
    color: white; /* 현재 페이지의 텍스트 색상을 흰색으로 설정 */
}

</style>
</head>
<body>
   <!-- Header Start -->
      <div class="container-fluid bg-breadcrumb">
         <div class="container text-center py-5" style="max-width: 900px;">
            <h3 class="text-white display-3 mb-4">캠핑용품</h3>
             <ol class="breadcrumb justify-content-center mb-0">
             </ol>    
          </div>
      </div>
   <!-- Header End -->
   <div class="container-fluid packages py-5">
       <div class="container py-5">
           <div class="mx-auto text-center mb-5" style="max-width: 900px;">
               <h3 class="section-title px-3"style="color: black;">${title }</h3>
                <h1 class="mb-0"></h1>
            </div>
            <div class="row">
               <c:forEach var="vo" items="${gList }" varStatus="s">
                  <div class="col-lg-3 col-md-6 col-sm-12">
                     <div class="packages-item">
                        <div class="packages-img">
                           <img src="${vo.poster}"
                              class="img-fluid w-100 rounded-top" title="${vo.name}">
                           <div
                              class="packages-info d-flex border border-start-0 border-end-0 position-absolute"
                              style="width: 100%; bottom: 0; left: 0; z-index: 5;">
                              <a href="../campgoods/detail.do?cno=${vo.cno}&gno=${gno}"
                                 class="text-white flex-fill text-center border-end py-2 text-decoration-none"><i
                                 class="text-white fa-solid fa-cart-shopping me-2"></i>구매하기</a>
                           </div>
                        </div>
                        <div class="packages-content bg-light">
                           <div class="p-4 pb-0">
                              <h5 class="mb-0 text-center small-title">${vo.name}</h5>
                              <div class="text-center packages-price py-2 px-4">
                               <span>${vo.price}</span> <!-- 가격 추가 -->
                              </div>
                              <p class="mb-4"></p>
                           </div>
                        </div>
                     </div>
                  </div>
               </c:forEach>
            </div>
        </div>
    </div>

<nav class="pagination">
   <ul>
      <c:if test="${startPage>1 }">
         <li><a href="../campgoods/list.do?page=${startPage-1 }&gno=${gno}">&laquo; Previous</a></li>
      </c:if>
      <c:forEach var="i" begin="${startPage }" end="${endPage }">
           <li ${i==curpage?"class=current":"" }><a href="../campgoods/list.do?page=${i }&gno=${gno}">${i }</a></li>
      </c:forEach>
      <c:if test="${endPage<totalpage }">
            <li><a href="../campgoods/list.do?page=${endPage+1 }&gno=${gno}">Next &raquo;</a></li>
      </c:if>
   </ul>
</nav>        
</body>
</html>