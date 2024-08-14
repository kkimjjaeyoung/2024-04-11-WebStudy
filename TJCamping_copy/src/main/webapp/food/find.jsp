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
    <!-- main body --> 
    <div class="content"> 
      <div id="gallery">
        <figure>
          <header class="heading inline">
           <form method="post" action="../food/find.do">
            <input type=text name=ss class="input-sm" size=20 value="${ss}">
            <input type=submit value="검색" class="btn-sm btn-primary">
           </form>
          </header>
          <ul class="nospace clear">
           <c:forEach var="vo" items="${fList }" varStatus="s">
            <li class="one_quarter ${ s.index%4==0?'first':''}"><a href="../food/detail_before.do?fno=${vo.fno }&type=1"><img src="http://menupan.com${vo.poster }" title="${vo.name }"></a></li>
           </c:forEach>
          </ul>
        </figure>
      </div>
      <nav class="pagination">
        <ul>
          <%-- startPage = 1 11 21... --%>
          <c:if test="${startPage>1}">
           <li><a href="../food/find.do?page=${startPage-1 }&ss=${ss}">&laquo; Previous</a></li>
          </c:if>
           <c:forEach var="i" begin="${startPage }" end="${endPage }">
            <li ${i==curpage?"class=current":""}><a href="../food/find.do?page=${i }&ss=${ss}">${i }</a></li>
           </c:forEach>
           
          <c:if test="${endPage<totalpage }">
           <li><a href="../food/find.do?page=${endPage+1}&ss=${ss}">Next &raquo;</a></li>
          </c:if>
          <%-- endPage = 10 20 30.. --%>
        </ul>
      </nav>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
</body>
</html>