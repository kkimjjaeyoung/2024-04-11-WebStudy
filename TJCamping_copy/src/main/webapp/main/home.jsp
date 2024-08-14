<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 롤링배너 Start -->
	<div class="carousel-header">
		<div id="carouselId" class="carousel slide" data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselId" data-bs-slide-to="0" class="active"></li>
				<li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img src="../img/carousel-2.jpg" class="img-fluid" alt="Image">
					<div class="carousel-caption">
						<div class="p-3" style="max-width: 900px;">

							<h4 class="text-white text-uppercase fw-bold mb-4"
								style="letter-spacing: 3px;">Explore The World</h4>
							<h1 class="display-2 text-capitalize text-white mb-4">Let's
								The World Together!</h1>
							<p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry. Lorem Ipsum has been the
								industry's standard dummy text ever since the 1500s,</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../img/carousel-1.jpg" class="img-fluid" alt="Image">
					<div class="carousel-caption">i
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-white text-uppercase fw-bold mb-4"
								style="letter-spacing: 3px;">Explore The World</h4>
							<h1 class="display-2 text-capitalize text-white mb-4">Find
								Your Perfect Tour At Travel</h1>
							<p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry. Lorem Ipsum has been the
								industry's standard dummy text ever since the 1500s,</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../img/carousel-3.jpg" class="img-fluid" alt="Image">
					<div class="carousel-caption">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-white text-uppercase fw-bold mb-4"
								style="letter-spacing: 3px;">Explore The World</h4>
							<h1 class="display-2 text-capitalize text-white mb-4">You
								Like To Go?</h1>
							<p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry. Lorem Ipsum has been the
								industry's standard dummy text ever since the 1500s,</p>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselId" data-bs-slide="prev">
				<span class="carousel-control-prev-icon btn bg-primary"
					aria-hidden="false"></span> <span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselId" data-bs-slide="next">
				<span class="carousel-control-next-icon btn bg-primary"
					aria-hidden="false"></span> <span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<!-- 롤링배너 End -->
	
	
	<!-- Navbar & Hero End -->	
	 <div class="container-fluid search-bar position-relative"
		style="top: -50%; transform: translateY(-50%);">
		<div class="container">
			<div class="position-relative rounded-pill w-100 mx-auto p-4" style="background: rgba(37, 103, 75,0.8);">
				<input
					class="form-control border-0 rounded-pill w-100 py-3 ps-4 pe-5"
					type="text" placeholder="지역명">
				<button type="button"
					class="btn btn-primary rounded-pill py-2 px-4 position-absolute me-2"
					style="top: 50%; right: 46px; transform: translateY(-50%);">Search</button>
			</div>
		</div>
	</div>
	<!-- Navbar & Hero End -->


	<!-- About Start -->
	<div class="container-fluid about py-5 style="margin-left: 75px;">
		<div class="container py-5">
			<div class="row g-5 align-items-center">
				<div class="col-lg-5">
					<div class="h-100" style="border: 10px solid rgb(37, 103, 75);">
						<img src="../img/about-img.jpg" class="img-fluid w-100 h-100" alt="">
					</div>
				</div>
				<div class="col-lg-7"
					style="background: linear-gradient(rgba(255, 255, 255, .8), rgba(255, 255, 255, .8));">
					<h5 class="section-about-title"></h5>
					<h1 class="mb-4">
						Welcome to <span class="text-primary">TJ Camping!</span>
					</h1>
					<p class="mb-4">
						TJ캠핑은 캠핑에 관련된 모든 서비스를 제공하는 전문 캠핑 플랫폼입니다.<br>
                        캠핑장 서칭부터 예약, 용품 구매, 정보 및 팁 수집까지<br>
                        TJ 캠핑이 제공하는 독보적인 원스탑 서비스를 통해 스마트한 캠핑 라이프를 즐겨보세요!
					</p>
					<!-- <p class="mb-4">TJ 캠핑만의 원스탑 서비스를 통해 스마트한 캠핑 라이프를 즐겨보세요!</p> -->
					<div class="row gy-2 gx-4 mb-4">
						<div class="col-sm-5">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>캠핑장 소개
							</p>
						</div>
						<div class="col-sm-5">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>캠핑장 예약
							</p>
						</div>
						<div class="col-sm-5">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>캠핑용품 판매
							</p>
						</div>
						<div class="col-sm-5">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>맛집 추천
							</p>
						</div>
						<div class="col-sm-5">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>레시피 소개
							</p>
						</div>
						<div class="col-sm-5">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>생생한 후기
							</p>
						</div>
					</div>
					<a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Read
						More</a>
				</div>
			</div>
		</div>
	</div>
	<!-- About End -->


	<!-- Explore Tour Start -->
	<div class="container-fluid ExploreTour py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">quick menu</h5>
				<h1 class="mb-4">바로가기</h1>
				<!--<p class="mb-0">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Laborum tempore nam, architecto doloremque velit
					explicabo? Voluptate sunt eveniet fuga eligendi! Expedita
					laudantium fugiat corrupti eum cum repellat a laborum quasi.</p>-->
			</div>
			<!--  <div class="tab-class text-center">
				<ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill active"
						data-bs-toggle="pill" href="#NationalTab-1"> <span
							class="text-dark" style="width: 250px;">National Tour
								Category</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex py-2 mx-3 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#InternationalTab-2"> <span
							class="text-dark" style="width: 250px;">International tour
								Category</span>
					</a></li>
				</ul>-->
				<div class="tab-content">
					<div id="NationalTab-1" class="tab-pane fade show p-0 active">
						<div class="row g-4">
							<div class="col-md-6 col-lg-4">
								<div class="national-item">
									<img src="../img/explore-tour-1.jpg"
										class="img-fluid w-100 rounded" alt="Image">
									<div class="national-content">
										<div class="national-info">
											<h3 class="text-white text-uppercase mb-2">캠핑장 소개</h3>
											<a href="#" class="btn-hover text-white">바로가기 <i
												class="fa fa-arrow-right ms-2"></i></a>
										</div>
									</div>
									<div class="national-plus-icon">
										<a href="#" class="my-auto"><i
											class="fas fa-link fa-2x text-white"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="national-item">
									 <img src="../img/explore-tour-2.jpg"
										class="img-fluid w-100 rounded" alt="Image">
									<div class="national-content">
										<div class="national-info">
											<h3 class="text-white text-uppercase mb-2">캠핑장 예약 </h3>
											<a href="../camp/list.do" class="btn-hover text-white">바로가기 <i
												class="fa fa-arrow-right ms-2"></i></a>
										</div>
									</div>
									<div class="national-plus-icon">
										<a href="#" class="my-auto"><i
											class="fas fa-link fa-2x text-white"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="national-item">
									<img src="../img/explore-tour-3.jpg"
										class="img-fluid w-100 rounded" alt="Image">
									<div class="national-content">
										<div class="national-info">
											<h3 class="text-white text-uppercase mb-2">캠핑용품</h3>
											<a href="#" class="btn-hover text-white">바로가기 <i
												class="fa fa-arrow-right ms-2"></i></a>
										</div>
									</div>
									<div class="tour-offer bg-warning">추천</div>
									<div class="national-plus-icon">
										<a href="#" class="my-auto"><i
											class="fas fa-link fa-2x text-white"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="national-item">
									<img src="../img/explore-tour-4.jpg"
										class="img-fluid w-100 rounded" alt="Image">
									<div class="national-content">
										<div class="national-info">
											<h3 class="text-white text-uppercase mb-2">맛집</h3>
											<a href="#" class="btn-hover text-white">바로가기 <i
												class="fa fa-arrow-right ms-2"></i></a>
										</div>
									</div>
									<div class="national-plus-icon">
										<a href="#" class="my-auto"><i
											class="fas fa-link fa-2x text-white"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="national-item">
									<img src="../img/explore-tour-5.jpg"
										class="img-fluid w-100 rounded" alt="Image">
									<div class="national-content">
										<div class="national-info">
											<h3 class="text-white text-uppercase mb-2">레시피</h3>
											<a href="#" class="btn-hover text-white">바로가기 <i
												class="fa fa-arrow-right ms-2"></i></a>
										</div>
									</div>
									<div class="tour-offer bg-warning">추천</div>
									<div class="national-plus-icon">
										<a href="#" class="my-auto"><i
											class="fas fa-link fa-2x text-white"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="national-item">
									<img src="../img/explore-tour-6.jpg"
										class="img-fluid w-100 rounded" alt="Image">
									<div class="national-content">
										<div class="national-info">
											<h3 class="text-white text-uppercase mb-2">커뮤니티</h3>
											<a href="#" class="btn-hover text-white">바로가기 <i
												class="fa fa-arrow-right ms-2"></i></a>
										</div>
									</div>
									<div class="national-plus-icon">
										<a href="#" class="my-auto"><i
											class="fas fa-link fa-2x text-white"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--<div id="InternationalTab-2" class="tab-pane fade show p-0">
						<div class="InternationalTour-carousel owl-carousel">
							<div class="international-item">
								<img src="../img/explore-tour-1.jpg"
									class="img-fluid w-100 rounded" alt="Image">
								<div class="international-content">
									<div class="international-info">
										<h5 class="text-white text-uppercase mb-2">Australia</h5>
										<a href="#" class="btn-hover text-white me-4"><i
											class="fas fa-map-marker-alt me-1"></i> 8 Cities</a> <a href="#"
											class="btn-hover text-white"><i class="fa fa-eye ms-2"></i>
											<span>143+ Tour Places</span></a>
									</div>
								</div>
								<div class="tour-offer bg-primary">30% Off</div>
								<div class="international-plus-icon">
									<a href="#" class="my-auto"><i
										class="fas fa-link fa-2x text-white"></i></a>
								</div>
							</div>
							<div class="international-item">
								<img src="../img/explore-tour-2.jpg"
									class="img-fluid w-100 rounded" alt="Image">
								<div class="international-content">
									<div class="international-info">
										<h5 class="text-white text-uppercase mb-2">Germany</h5>
										<a href="#" class="btn-hover text-white me-4"><i
											class="fas fa-map-marker-alt me-1"></i> 12 Cities</a> <a href="#"
											class="btn-hover text-white"><i class="fa fa-eye ms-2"></i>
											<span>21+ Tour Places</span></a>
									</div>
								</div>
								<div class="international-plus-icon">
									<a href="#" class="my-auto"><i
										class="fas fa-link fa-2x text-white"></i></a>
								</div>
							</div>
							<div class="international-item">
								<img src="../img/explore-tour-3.jpg"
									class="img-fluid w-100 rounded" alt="Image">
								<div class="international-content">
									<div class="tour-offer bg-warning">45% Off</div>
									<div class="international-info">
										<h5 class="text-white text-uppercase mb-2">Spain</h5>
										<a href="#" class="btn-hover text-white me-4"><i
											class="fas fa-map-marker-alt me-1"></i> 9 Cities</a> <a href="#"
											class="btn-hover text-white"><i class="fa fa-eye ms-2"></i>
											<span>133+ Tour Places</span></a>
									</div>
								</div>
								<div class="international-plus-icon">
									<a href="#" class="my-auto"><i
										class="fas fa-link fa-2x text-white"></i></a>
								</div>
							</div>
							<div class="international-item">
								<img src="../img/explore-tour-4.jpg"
									class="img-fluid w-100 rounded" alt="Image">
								<div class="international-content">
									<div class="international-info">
										<h5 class="text-white text-uppercase mb-2">Japan</h5>
										<a href="#" class="btn-hover text-white me-4"><i
											class="fas fa-map-marker-alt me-1"></i> 8 Cities</a> <a href="#"
											class="btn-hover text-white"><i class="fa fa-eye ms-2"></i>
											<span>137+ Tour Places</span></a>
									</div>
								</div>
								<div class="international-plus-icon">
									<a href="#" class="my-auto"><i
										class="fas fa-link fa-2x text-white"></i></a>
								</div>
							</div>
							<div class="international-item">
								<img src="../img/explore-tour-5.jpg"
									class="img-fluid w-100 rounded" alt="Image">
								<div class="international-content">
									<div class="tour-offer bg-info">70% Off</div>
									<div class="international-info">
										<h5 class="text-white text-uppercase mb-2">London</h5>
										<a href="#" class="btn-hover text-white me-4"><i
											class="fas fa-map-marker-alt me-1"></i> 17 Cities</a> <a href="#"
											class="btn-hover text-white"><i class="fa fa-eye ms-2"></i>
											<span>26+ Tour Places</span></a>
									</div>
								</div>
								<div class="international-plus-icon">
									<a href="#" class="my-auto"><i
										class="fas fa-link fa-2x text-white"></i></a>
								</div>
							</div>
						</div>-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Explore Tour End -->


	<!-- 캠핑장 추천 Start -->
	<div class="container-fluid destination py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">campsite map</h5>
				<h1 class="mb-0">캠핑장</h1>
			</div>
			<div class="tab-class text-center">
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						
							<div class="flexslider carousel basiccarousel btmspace-80"> <!-- col-xl-8 -->
							<div class="slides"><!-- <div class="row g-4"> -->
					<div class="row g-4">
								<c:forEach var="cvo" items="${cList }">
									<div class="col-lg-3">
										<div class="destination-img">
										<!-- class="img-fluid rounded w-100" -->
											<img class="rounded w-100" style="width:250px;height:200px;object-fit:cover"
												src="${cvo.camp_image }" alt="${cvo.camp_name}">
											<div class="destination-overlay p-4">
												<h4 class="text-white mb-2 mt-3">${cvo.camp_name }</h4>
												<a href="../camp/detail.do?camp_no=${cvo.camp_no }"
													class="btn-hover text-white">자세히 보기
													<i class="fa fa-arrow-right ms-2"></i>
												</a>
											</div>
											<div class="search-icon">
												<a href="../img/destination-1.jpg"
													data-lightbox="destination-1"><i
													class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
											</div></div></div>
										</c:forEach>
										</div>
									
									</div>
							
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 캠핑장 추천 End -->


<!-- 캠핑용품 Start -->
        <div class="container-fluid packages py-5">
            <div class="container py-5">
                <div class="mx-auto text-center mb-5" style="max-width: 900px;">
                    <h5 class="section-title px-3">Camping Tools</h5>
                    <h1 class="mb-0">캠핑용품</h1>
                </div>
                <div class="packages-carousel owl-carousel">
                    <div class="packages-item">
                        <div class="packages-img">
                            <img src="../img/packages-4.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                            <div class="packages-info d-flex border border-start-0 border-end-0 position-absolute" style="width: 100%; bottom: 0; left: 0; z-index: 5;">
                                <a href="https://example.com" class="flex-fill text-center border-end py-2 text-decoration-none"><i class="fa fa-map-marker-alt me-2"></i>찜하기</a>
                                <a href="https://example.com" class="flex-fill text-center border-end py-2 text-decoration-none"><i class="fa fa-map-marker-alt me-2"></i>장바구니</a>
                                <a href="https://example.com" class="flex-fill text-center border-end py-2 text-decoration-none"><i class="fa fa-map-marker-alt me-2"></i>구매하기</a>
                            </div>
                            <div class="text-center packages-price py-2 px-4">Best</div>
                        </div>
                        <div class="packages-content bg-light">
                            <div class="p-4 pb-0">
                                <h5 class="mb-0">노스피크 A9 에어텐트 (올리브그레이)</h5>
                                <small class="text-uppercase">텐트</small>
                                <div class="mb-3">
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                </div>
                                <p class="mb-4"></p>
                            </div>
                            <div class="row bg-primary rounded-bottom mx-0">
                                <div class="col-6 text-start px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">♥ 3</a>
                                </div>
                                <div class="col-6 text-end px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">1,987,100원</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="packages-item">
                        <div class="packages-img">
                            <img src="../img/packages-2.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                            <div class="packages-info d-flex border border-start-0 border-end-0 position-absolute" style="width: 100%; bottom: 0; left: 0; z-index: 5;">
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt me-2"></i>Venice - Italy</small>
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt me-2"></i>3 days</small>
                                <small class="flex-fill text-center py-2"><i class="fa fa-user me-2"></i>2 Person</small>
                            </div>
                            <div class="text-center packages-price py-2 px-4">Best</div>
                        </div>
                        <div class="packages-content bg-light">
                            <div class="p-4 pb-0">
                                <h5 class="mb-0">스노우라인 와일드롤테이블 블랙</h5>
                                <small class="text-uppercase">테이블/의자</small>
                                <div class="mb-3">
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                </div>
                                <p class="mb-4"></p>
                            </div>
                            <div class="row bg-primary rounded-bottom mx-0">
                                <div class="col-6 text-start px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">♥ 3</a>
                                </div>
                                <div class="col-6 text-end px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">380,000원</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="packages-item">
                        <div class="packages-img">
                            <img src="../img/packages-3.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                            <div class="packages-info d-flex border border-start-0 border-end-0 position-absolute" style="width: 100%; bottom: 0; left: 0; z-index: 5;">
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt me-2"></i>Venice - Italy</small>
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt me-2"></i>3 days</small>
                                <small class="flex-fill text-center py-2"><i class="fa fa-user me-2"></i>2 Person</small>
                            </div>
                            <div class="text-center packages-price py-2 px-4">Best</div>
                        </div>
                        <div class="packages-content bg-light">
                            <div class="p-4 pb-0">
                                <h5 class="mb-0">스노우라인 화로그릴세트L</h5>
                                <small class="text-uppercase">바베큐/화로</small>
                                <div class="mb-3">
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                </div>
                                <p class="mb-4"></p>
                            </div>
                            <div class="row bg-primary rounded-bottom mx-0">
                                <div class="col-6 text-start px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">♥ 3</a>
                                </div>
                                <div class="col-6 text-end px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">154,000원</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="packages-item">
                        <div class="packages-img">
                            <img src="../img/packages-1.png" class="img-fluid w-100 rounded-top" alt="Image">
                            <div class="packages-info d-flex border border-start-0 border-end-0 position-absolute" style="width: 100%; bottom: 0; left: 0; z-index: 5;">
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt me-2"></i>Thayland</small>
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt me-2"></i>3 days</small>
                                <small class="flex-fill text-center py-2"><i class="fa fa-user me-2"></i>2 Person</small>
                            </div>
                            <div class=" text-center packages-price py-2 px-4">Best</div>
                        </div>
                        <div class="packages-content bg-light">
                            <div class="p-4 pb-0">
                                <h5 class="mb-0">코베아 팬텀 롱 토치</h5>
                                <small class="text-uppercase">토치</small>
                                <div class="mb-3">
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                    <small class="fa fa-star text-primary"></small>
                                </div>
                                <p class="mb-4"></p>
                            </div>
                            <div class="row bg-primary rounded-bottom mx-0">
                                <div class="col-6 text-start px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">♥ 3</a>
                                </div>
                                <div class="col-6 text-end px-0">
                                    <a href="#" class="btn-hover btn text-white py-2 px-4">54,000원</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 캠핑용품 End -->


	<!-- 맛집 Start -->
	<div class="container-fluid destination py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">foodie map</h5>
				<h1 class="mb-0">맛집</h1>
			</div>
			<div class="tab-class text-center">
				<ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill active"
						data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
							style="width: 150px;">전체</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex py-2 mx-3 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
							style="width: 150px;">한식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-3"> <span class="text-dark"
							style="width: 150px;">일식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-4"> <span class="text-dark"
							style="width: 150px;">중식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-5"> <span class="text-dark"
							style="width: 150px;">양식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-6"> <span class="text-dark"
							style="width: 150px;">퓨전식</span>
					</a></li>
				</ul>
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						<div class="row g-4">
						<c:forEach var="fvo" items="${likeList}" varStatus="status"> <!-- ---------------------------------------------------------------------------- -->
							<c:if test="${status.index % 3 == 0}">
					            <div class="row">
					        </c:if>
							<div class="col-xl-4">
								<div class="destination-img h-100">
									<img class="img-fluid rounded w-150 h-150"
										src="http://menupan.com${fvo.poster }"
										style="object-fit: cover; min-height: 400px;" alt="">
									<div class="destination-overlay p-4">
										<h4 class="text-white mb-2 mt-3 " >${fvo.name }</h4>
										<a href="#" class="btn-hover text-white ">바로가기<i
											class="fa fa-arrow-left ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="http://menupan.com${fvo.poster }" data-lightbox="destination-4"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<c:if test="${status.index % 3 == 2 || status.last}">
							<h2></h2>
					            </div>
					        </c:if>
						</c:forEach> <!-- ---------------------------------------------------------------------------- -->
						</div>
					</div>
					<div id="tab-2" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-3" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-4" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-5" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-6" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 맛집 추천 End -->
	
	
	<!-- 레시피 Start -->
	<div class="container-fluid destination py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">camping recipes</h5>
				<h1 class="mb-0">레시피</h1>
			</div>
			<div class="tab-class text-center">
				<ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill active"
						data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
							style="width: 150px;">전체</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex py-2 mx-3 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
							style="width: 150px;">한식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-3"> <span class="text-dark"
							style="width: 150px;">일식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-4"> <span class="text-dark"
							style="width: 150px;">중식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-5"> <span class="text-dark"
							style="width: 150px;">양식</span>
					</a></li>
					<li class="nav-item"><a
						class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill"
						data-bs-toggle="pill" href="#tab-6"> <span class="text-dark"
							style="width: 150px;">퓨전식</span>
					</a></li>
				</ul>
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						<div class="row g-4">
							<div class="col-xl-8">
								<div class="row g-4">
									<div class="col-lg-6">
										<div class="destination-img">
											<img class="img-fluid rounded w-100"
												src="../img/destination-1.jpg" alt="">
											<div class="destination-overlay p-4">
												<a href="#"
													class="btn btn-primary text-white rounded-pill border py-2 px-3">20
													Photos</a>
												<h4 class="text-white mb-2 mt-3">New York City</h4>
												<a href="#" class="btn-hover text-white">View All Place
													<i class="fa fa-arrow-right ms-2"></i>
												</a>
											</div>
											<div class="search-icon">
												<a href="../img/destination-1.jpg"
													data-lightbox="destination-1"><i
													class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="destination-img">
											<img class="img-fluid rounded w-100"
												src="../img/destination-2.jpg" alt="">
											<div class="destination-overlay p-4">
												<a href="#"
													class="btn btn-primary text-white rounded-pill border py-2 px-3">20
													Photos</a>
												<h4 class="text-white mb-2 mt-3">Las vegas</h4>
												<a href="#" class="btn-hover text-white">View All Place
													<i class="fa fa-arrow-right ms-2"></i>
												</a>
											</div>
											<div class="search-icon">
												<a href="../img/destination-2.jpg"
													data-lightbox="destination-2"><i
													class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="destination-img">
											<img class="img-fluid rounded w-100"
												src="../img/destination-7.jpg" alt="">
											<div class="destination-overlay p-4">
												<a href="#"
													class="btn btn-primary text-white rounded-pill border py-2 px-3">20
													Photos</a>
												<h4 class="text-white mb-2 mt-3">Los angelas</h4>
												<a href="#" class="btn-hover text-white">View All Place
													<i class="fa fa-arrow-right ms-2"></i>
												</a>
											</div>
											<div class="search-icon">
												<a href="../img/destination-7.jpg"
													data-lightbox="destination-7"><i
													class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="destination-img">
											<img class="img-fluid rounded w-100"
												src="../img/destination-8.jpg" alt="">
											<div class="destination-overlay p-4">
												<a href="#"
													class="btn btn-primary text-white rounded-pill border py-2 px-3">20
													Photos</a>
												<h4 class="text-white mb-2 mt-3">Los angelas</h4>
												<a href="#" class="btn-hover text-white">View All Place
													<i class="fa fa-arrow-right ms-2"></i>
												</a>
											</div>
											<div class="search-icon">
												<a href="../img/destination-8.jpg"
													data-lightbox="destination-8"><i
													class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4">
								<div class="destination-img h-100">
									<img class="img-fluid rounded w-100 h-100"
										src="../img/destination-9.jpg"
										style="object-fit: cover; min-height: 300px;" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-9.jpg" data-lightbox="destination-4"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-4.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">Los angelas</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-4.jpg" data-lightbox="destination-4"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">Los angelas</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">Los angelas</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-2" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-3" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-4" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-5" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-6" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-5.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-5.jpg" data-lightbox="destination-5"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="destination-img">
									<img class="img-fluid rounded w-100"
										src="../img/destination-6.jpg" alt="">
									<div class="destination-overlay p-4">
										<a href="#"
											class="btn btn-primary text-white rounded-pill border py-2 px-3">20
											Photos</a>
										<h4 class="text-white mb-2 mt-3">San francisco</h4>
										<a href="#" class="btn-hover text-white">View All Place <i
											class="fa fa-arrow-right ms-2"></i></a>
									</div>
									<div class="search-icon">
										<a href="../img/destination-6.jpg" data-lightbox="destination-6"><i
											class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 레시피 End -->


	<!-- 후기 Start -->
	<div class="container-fluid testimonial py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">review</h5>
				<h1 class="mb-0">후기</h1>
			</div>
			<div class="testimonial-carousel owl-carousel">
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="../img/testimonial-1.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="../img/testimonial-2.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="../img/testimonial-3.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="../img/testimonial-4.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 후기 End -->


</body>
</html>