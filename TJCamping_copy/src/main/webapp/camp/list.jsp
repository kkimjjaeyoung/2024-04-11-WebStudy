<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title></title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        
        
        
        
        
        
        
        
        
        <style>
        .bg-breadcrumb {
    background-image: url('camp_list.jpg');
}
.pagination {
  display: flex;
  justify-content: center;
  margin: 20px 0;
}

.pagination ul {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
}

.pagination li {
  margin: 0 5px;
}

.pagination a {
  display: block;
  padding: 10px 15px;
  border: 1px solid #ddd;
  background-color: #f9f9f9;
  color: #333;
  text-decoration: none;
  border-radius: 4px;
}

.pagination a:hover {
  background-color: #007bff;
  color: white;
}

.pagination .current a {
  background-color: #007bff;
  color: white;
  border: 1px solid #007bff;
}
        </style>
    </head>

    <body>

        

      

        

        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h3 class="text-white display-3 mb-4">캠핑장 목록</h3>
                <ol class="breadcrumb justify-content-center mb-0">
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        <!-- Explore Tour Start -->
        

                
        
        <div class="container-fluid destination py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">campsite</h5>
				<h1 class="mb-0">캠핑장</h1>
			</div>
			<div class="tab-class text-center">
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						
							<div class="flexslider carousel basiccarousel btmspace-80"> <!-- col-xl-8 -->
							<div class="slides"><!-- <div class="row g-4"> -->
					<div class="row g-4">
								<c:forEach var="vo" items="${list }">
									<div class="col-lg-3">
										<div class="destination-img">
										<!-- class="img-fluid rounded w-100" -->
											<img class="rounded w-100" style="width:300px;height:240px;object-fit:cover"
												src="${vo.camp_image }" alt="${vo.camp_name}">
											<div class="destination-overlay p-4">
												<h4 class="mb-2 mt-3"
								  style="color:white;background-color:rgb(37,105,73);font-size:23px;font-family:'휴먼모음T'">
												  ${vo.camp_name }</h4>
												<a href="../camp/detail.do?camp_no=${vo.camp_no }"
			class="btn-hover" style="color:white;background-color:rgb(37,105,73);font-size:15px;font-family:'휴먼모음T'">자세히 보기
													<i class="fa fa-arrow-right ms-2"></i>
												</a>
											</div>
											</div>
											</div>
										</c:forEach>
										</div>
									
									</div>
							
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>

        <div class="wrapper row3">
	  <main class="container clear"> 
<nav class="pagination">
        <ul>
        <c:if test="${startPage>1 }">
          <a href="../camp/list.do?page=${startPage-1 }">&laquo; 이전</a>
        </c:if>
        <c:forEach var="i" begin="${startPage }" end="${endPage }">
          <li ${curpage==i?"class=current":"" }><a href="../camp/list.do?page=${i }">${i }</a></li>
        </c:forEach>
        <c:if test="${endPage<totalpage }">
          <a href="../camp/list.do?page=${endPage+1 }">다음 &raquo;</a>
        </c:if>
        </ul>
      </nav>
      </main>
      </div>
      
      <div style="height:30px"></div>
        
        
        <!-- Copyright Start -->
        <div class="container-fluid copyright text-body py-4">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-center text-md-end mb-md-0">
                        <i class="fas fa-copyright me-2"></i><a class="text-white" href="#">Your Site Name</a>, All right reserved.
                    </div>
                    <div class="col-md-6 text-center text-md-start">
                        <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                        <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                        <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                        Designed By <a class="text-white" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a href="https://themewagon.com">ThemeWagon</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary btn-primary-outline-0 btn-md-square back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
        <!-- JavaScript Libraries -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
        
        
        
    </body>

</html>