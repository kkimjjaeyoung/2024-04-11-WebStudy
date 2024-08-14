<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>
<script src="../lib/lightbox/js/lightbox.min.js"></script>

<script type="text/javascript"></script>
<style></style>

</head>
<body>
<div class="wrapper row3">
  <main class="container clear">
   <h2 class="sectiontitle">상세보기</h2>
   <div class="flexslider carousel basiccarousel btmspace-80">
      <ul class="slides">
         <c:forTokens items="${vo.poster}" delims="^" var="image">
	        <li>
	          <figure>
	            <img class="radius-10 btmspace-10" src="${image }" style="width: 320px;height: 185px">
	          </figure>
	        </li>
         </c:forTokens>
      </ul>
    </div>
   
     <%-- 상세보기 / 댓글 --%>
     <table class="table">
       <tr>
        <td width="30%" class="text-center" rowspan="6">
          <img src="${vo.poster }" style="width: 100%">
        </td>
        <td colspan="2">
          <h3>${vo.title }&nbsp;<span style="color:orange"></span></h3>
        </td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">업종</td>
        <td width="65%">${vo.type }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">전화</td>
        <td width="65%">${vo.phone }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">주소</td>
        <td width="65%">${vo.address }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="5%">테마</td>
        <td width="65%">${vo.theme }</td>
       </tr>
       <tr>
        <td class="text-right" style="color:gray" width="15%">주차</td>
        <td width="65%">${vo.parking }</td>
       </tr>
       <tr>
         <td colspan="3" class="text-right">
         <c:if test="${sessionScope.id!=null }">
          <a href="#" class="btn btn-xs btn-success">좋아요</a>
          <a href="#" class="btn btn-xs btn-warning">찜하기</a>
          <a href="#" class="btn btn-xs btn-info">예약하기</a>
         </c:if>
         
          <input type="button" class="btn btn-xs btn-danger" value="목록"
           onclick="javascript:history.back()"
          >
         </td>
       </tr>
     </table>
     <table class="table">
       <tr>
        <td>${vo.content }</td>
       </tr>
     </table>
     <div style="height: 10px"></div>
     <div id="map" style="width:100%;height:350px;"></div>

		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9965c727d3306713c47391be682e4be9&libraries=services"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${vo.address}', function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">${vo.name}</div>'
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
		</script>
		<div style="height: 20px"></div>
		<h2 class="sectiontitle">인근 맛집</h2>
	    <div class="flexslider carousel basiccarousel btmspace-80">
	      <ul class="slides">
	       <c:forEach var="rvo" items="${rList }">
		        <li>
		          <figure><img class="radius-10 btmspace-10" src="http://menupan.com${rvo.poster }" style="width: 320px;height: 185px"
		            title="${rvo.address }"
		          >
		            <figcaption><a href="#">${rvo.name }</a></figcaption>
		          </figure>
		        </li>
	        </c:forEach>
	      </ul>
	    </div>
  </main>
</div>
</body>
</html>