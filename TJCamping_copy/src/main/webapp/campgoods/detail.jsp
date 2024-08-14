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
<script type="text/javascript">
 
</script>
<style>
.bg-breadcrumb {
   background-image: url('campgoods_list.jpg');
   background-size: cover; /* 이미지가 요소를 덮도록 설정 */
   background-position: center; /* 이미지가 중앙에 위치하도록 설정 */
}
.wrapper {
        margin-top: 25px; /* 헤더와 본문 사이에 여백 추가 */
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
  <div class="wrapper row3">
    <main class="container clear"> 
	 <!-- <h2 class="sectiontitle">상세보기</h2>-->
	  <table class="table">
       <tr>
        <td width="30%" class="text-center" rowspan="6">
          <img src="${vo.poster }" style="width: 100%">
        </td>
        <td colspan="2">
          <h3>${vo.name }</h3>
        </td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">제조사</td>
        <td width="65%">${vo.brand }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">제조국</td>
        <td width="65%">${vo.origin }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">소비자가</td>
        <td width="65%">${vo.saleprice }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">판매가</td>
        <td width="65%">${vo.price }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="15%">배송비</td>
        <td width="65%">${vo.delivery }원</td>
       </tr>
       <tr>
         <td colspan="3" class="text-right">
          <c:if test="${sessionScope.id!=null }">
           <a href="#" class="btn btn-xs btn-success">좋아요</a>
           <c:if test="${check==false }">
            <input type=button class="btn btn-xs btn-warning" value="찜하기"
             id="jjimBtn" data-cno="${vo.fno }">
          </c:if>
          <c:if test="${check==true }">
           <span class="btn btn-xs btn-info">찜하기</span>
          </c:if>
           <a href="#" class="btn btn-xs btn-info">예약하기</a>
          </c:if>
          <input type="button" class="btn btn-xs btn-danger" value="목록"
           onclick="javascript:history.back()">
         </td>
       </tr>
      </table>
	</main>
  </div>
</body>
</html>