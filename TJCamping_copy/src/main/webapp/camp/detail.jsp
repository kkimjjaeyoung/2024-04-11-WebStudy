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
        
        
        
        
<style type="text/css">
.bg-breadcrumb {
    background-image: url('camp_detail.png');
}
.no, .wifi{
	position: absolute;
}
.no, .store{
	position: absolute;
}
.no, .animal{
	position: absolute;
}
.wifi{
	position: absolute;
}
.store{
	position: absolute;
}
.animal{
	position: absolute;
}
</style>        

</head>
<body>

<!-- Header Start -->
        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5">
                <h3 class="display-3 mb-4"
                style="display:inline-block;color:white;background-color:rgb(37,105,73,0.5);">${vo.camp_name }</h3>
                <ol class="breadcrumb justify-content-center mb-0">
                </ol>    
            </div>
        </div>
        <!-- Header End -->




<!-- main_jsp Start -->
<!-- About Start -->
        <div class="container-fluid about py-5">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-8">
                        <div class="h-100"
                        style="border: 50px solid; border-color: transparent rgb(37,105,73) transparent rgb(37,105,73);">
                            <img src="${vo.camp_image }" class="img-fluid" style="width: 750px; height: 500px;">
                        </div>
                    </div>
                    <div class="col-lg-4"
             style="background: linear-gradient(rgba(255, 255, 255, .8), rgba(255, 255, 255, .8)), url(img/about-img-1.png);">
                        <h5 class="section-about-title pe-3" style="color:rgb(37,105,73)">About Campsite</h5>
                        <h1 class="mb-4">Welcome to</h1>
                        <h1 class="mb-4">
                        	<span style="color:rgb(37,105,73);font-family:'휴먼모음T'">${vo.camp_name }</span>
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

<div class="container">
	<div class="row">
		<table class="table" style="border: rgba(0, 0, 0, 0.0)">
			<tr>
				<th width="50%" style="font-size:33px;color:black">
				전화번호&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;${vo.camp_phone }</th>
				<th width="50%" style="font-size:33px;color:black">
				가격&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;${vo.camp_price }&nbsp;원</th>
			</tr>
		</table>
		<div style="height:30px"></div>
		<table class="table" style="border: rgba(0, 0, 0, 0.0)">
			<tr>
				<th style="font-size:33px;color:black">
				주소&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;${vo.camp_addr }</th>
			</tr>
		</table>
		<div style="height:30px"></div>
		<table class="table" style="border: rgba(0, 0, 0, 0.0)">
	    	<tr>
	    		<td style="font-size:23px">${vo.camp_content }</td>
	    	</tr>
	    </table>
	    <div style="height:30px"></div>
	    <table class="table">
	    	<div class="col-lg-4 text-center">
			    <c:if test="${vo.camp_wifi=='n' }">
			    	<p class="f_ico">
				    	<img src="no.svg" width="120" class="no"/>
				    	<img src="wifi.svg" width="120" class="wifi"/>
			    	</p>
				</c:if>
			    <c:if test="${vo.camp_wifi=='y' }">
			    	<p class="f_ico">
			    		<img src="wifi.svg" width="120" class="wifi"/>
			    	</p>
				</c:if>
			</div>
	    	<div class="col-lg-4 text-center">
			    <c:if test="${vo.camp_store=='n' }">
			    	<p class="f_ico">
				    	<img src="no.svg" width="120" class="no"/>
				    	<img src="store.svg" width="120" class="store"/>
			    	</p>
				</c:if>
			    <c:if test="${vo.camp_store=='y' }">
			    	<p class="f_ico">
			    		<img src="store.svg" width="120" class="store"/>
			    	</p>
				</c:if>
			</div>
	    	<div class="col-lg-4 text-center">
			    <c:if test="${vo.camp_animal=='n' }">
			    	<p class="f_ico">
				    	<img src="no.svg" width="120" class="no"/>
				    	<img src="animal.svg" width="120" class="animal"/>
			    	</p>
				</c:if>
			    <c:if test="${vo.camp_animal=='y' }">
			    	<p class="f_ico">
			    		<img src="animal.svg" width="120" class="animal"/>
			    	</p>
				</c:if>
			</div>
		</table>
		<div style="height:120px"></div>
		<table class="table">
			<div class="col-lg-4 text-center" style="font-size:20px">
			와이파이
			</div>
			<div class="col-lg-4 text-center" style="font-size:20px">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;매점
			</div>
			<div class="col-lg-4 text-center" style="font-size:20px">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;반려동물
			</div>
		</table>
	    	
		    
		
	</div>
</div>





<!-- main_jsp End -->






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