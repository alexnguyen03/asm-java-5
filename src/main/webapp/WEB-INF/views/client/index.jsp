<%@ page language="java" contentType="text; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xml="lang">

	<head>
		<meta charset="UTF-8" />
		<meta name="description"
			  content="Male_Fashion Template" />
		<meta name="keywords"
			  content="Male_Fashion, unica, creative, html" />
		<meta name="viewport"
			  content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible"
			  content="ie=edge" />

		<title>Home - 3MEMS</title>
		<!-- Google Font -->
		<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
			  rel="stylesheet" />

		<!-- Css Styles -->
		<link rel="stylesheet"
			  href="css/bootstrap.min.css"
			  type="text/css" />
		<link rel="stylesheet"
			  href="css/font-awesome.min.css"
			  type="text/css" />
		<link rel="stylesheet"
			  href="css/elegant-icons.css"
			  type="text/css" />
		<link rel="stylesheet"
			  href="css/magnific-popup.css"
			  type="text/css" />
		<link rel="stylesheet"
			  href="css/nice-select.css"
			  type="text/css" />
		<link rel="stylesheet"
			  href="css/owl.carousel.min.css"
			  type="text/css" />
		<link rel="stylesheet"
			  href="css/slicknav.min.css"
			  type="text/css" />
		<link rel="stylesheet"
			  href="css/style.css"
			  type="text/css" />
	</head>

	<body>
		<!-- Header -->
		<jsp:include page="header.jsp" />
		<!-- Header Section End -->




		<!-- Hero Section Begin -->
		<section class="hero mt-3">
			<div class="hero__slider owl-carousel">
				<div class="hero__items set-bg"
					 data-setbg="img/hero/hero-1.jpg">
					<img src="img/hero/hero-1.jpg"
						 alt="">
					<div class="container">
						<div class="row">
							<div class="col-xl-5 col-lg-7 col-md-8">
								<div class="hero__text">
									<h6>Sản phẩm thịnh hành</h6>
									<h2>
										Tai nghe không dây <br /> BCAT 2023
									</h2>
									<p>Tai nghe không dây chính hãng bán chạy nhất tại việt nam.
										Với chất âm bass trầm vang cực hiện đại</p>
									<a href="/shop"
									   class="primary-btn">Mua ngay<span class="arrow_right"></span></a>
									<div class="hero__social">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											   class="fa fa-twitter"></i></a> <a href="#"><i
											   class="fa fa-pinterest"></i></a> <a href="#"><i
											   class="fa fa-instagram"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="hero__items set-bg"
					 data-setbg="img/hero/hero-1.jpg">
					<div class="container">
						<div class="row">
							<div class="col-xl-5 col-lg-7 col-md-8">
								<div class="hero__text">
									<h6>Sản phẩm thịnh hành</h6>
									<h2>
										Tai nghe không dây <br /> Bộ sưu tập 2023
									</h2>
									<p>Tai nghe không dây chính hãng bán chạy nhất tại việt nam.
										Với chất âm bass trầm vang cực hiện đại</p>
									<a href="/shop"
									   class="primary-btn">Mua ngay<span class="arrow_right"></span></a>
									<div class="hero__social">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											   class="fa fa-twitter"></i></a> <a href="#"><i
											   class="fa fa-pinterest"></i></a> <a href="#"><i
											   class="fa fa-instagram"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Hero Section End -->

		<!-- Banner Section Begin -->
		<section class="banner spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 offset-lg-4">
						<div class="banner__item">
							<a href="/shop/shop-search-product-by-tab?keywords=earpod"
							   class="banner__item__pic"> <img src="img/banner/img-banner-1.png"
									 style="background: #ebecf1"
									 alt="" />
							</a>
							<div class="banner__item__text">
								<h2 class="mr-3">Bộ sưu tập EarPod</h2>
								<a href="/shop/shop-search-product-by-tab?keywords=earpod">Mua
									ngay</a>
							</div>
						</div>
					</div>
					<div class="col-lg-5 mt-5">
						<div class="banner__item banner__item--middle">
							<a href="/shop/shop-search-product-by-tab?keywords=tai nghe"
							   class="banner__item__pic"> <img src="img/banner/img-banner-2.png"
									 style="background: #ebecf1"
									 alt="" />
							</a>
							<div class="banner__item__text">
								<h2>Tai nghe</h2>
								<a href="/shop/shop-search-product-by-tab?keywords=tai nghe">Mua
									ngay</a>
							</div>
						</div>
					</div>
					<div class="col-lg-7">
						<div class="banner__item banner__item--last">
							<a href="/shop/shop-search-product-by-tab?keywords=loa"
							   class="banner__item__pic"> <img src="img/banner/img-banner-3.png"
									 style="background: #ebecf1"
									 alt="" />
							</a>
							<div class="banner__item__text">
								<h2>
									Bộ sưu tập <br /> Loa
								</h2>
								<a href="/shop/shop-search-product-by-tab?keywords=loa">Mua
									ngay</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Section End -->

		<!-- Product Section Begin -->
		<section class="product spad">
			<div class="container">
				<div class="row">
					<!-- Header fiilter -->
					<div class="col-lg-12">
						<ul class="filter__controls">
							<li class="active"
								data-filter="*">Bán chạy nhất</li>
							<li data-filter=".new-arrivals">Vừa nhập hàng</li>
							<li data-filter=".hot-sales">Hot Sales</li>
						</ul>
					</div>
				</div>
				<!-- List product -->
				<div class="row product__filter">
					<!-- Item -->
					<c:forEach var="item"
							   items="${items}">
						<div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
							<div class="product__item">
								<a href="/shop/shop-detail"
								   class="product__item__pic"> <img
										 src="${pageContext.request.contextPath}/img/product/${item.image}"
										 class="img-fluid"
										 alt="${item.name}" /> <span class="label">Mới</span>
								</a>
								<div class="product__item__text">
									<h6>${item.name}</h6>
									<a href="#"
									   class="add-cart">+ Thêm vào giỏ hàng</a>
									<div class="rating">
										<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										   class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										   class="fa fa-star-o"></i>
									</div>
									<h5>${item.price}</h5>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- Product Section End -->

		<!-- Categories Section Begin -->
		<section class="categories spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="categories__text">
							<h2>
								Phụ kiện Hot <br /> <span>Bộ sưu tập Tai nghe</span> <br />
								Load JPL
							</h2>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="categories__hot__deal">
							<img src="img/banner/img-banner-2.png"
								 alt="" />
							<div class="hot__deal__sticker">
								<span>Giảm giá</span>
								<h5>100.000 đ</h5>
							</div>
						</div>
					</div>
					<div class="col-lg-4 offset-lg-1">
						<div class="categories__deal__countdown">
							<span>Giao dịch trong tuấn</span>
							<h2>Tai nghe không dây EF105</h2>
							<d class="categories__deal__countdown__timer"
							   id="countdown">
								<div class="cd-item">
									<span>3</span>
									<p>Ngày</p>
								</div>
								<div class="cd-item">
									<span>1</span>
									<p>Giờ</p>
								</div>
								<div class="cd-item">
									<span>50</span>
									<p>Phút</p>
								</div>
								<div class="cd-item">
									<span>18</span>
									<p>Giây</p>
								</div>
						</div>
						<a href="#"
						   class="primary-btn">Mua ngay</a>
					</div>
				</div>
			</div>
			</div>
		</section>
		<!-- Categories Section End -->

		<!-- Footer Section Begin -->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="footer__about">
							<div class="footer__logo">
								<a href="/"><img src="img/main-logo.png"
										 alt="" /></a>
							</div>
							<p>Khách hàng luôn ở trung tâm trong những giao dịch độc nhất
								của chúng tôi, bao gốm cả thiết kế.</p>
							<a href="#"><img src="img/payment.png"
									 alt="" /></a>
						</div>
					</div>
					<div class="col-lg-2 offset-lg-1 col-md-2 col-sm-6">
						<div class="footer__widget">
							<h6>Sản phẩm</h6>
							<ul>
								<li><a href="/shop">Tai nghe</a></li>
								<li><a href="/shop">Đồng hồ</a></li>
								<li><a href="/shop">Phụ kiện</a></li>
								<li><a href="/shop">Túi xách</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-sm-6">
						<div class="footer__widget">
							<h6>Thông tin</h6>
							<ul>
								<li><a href="#">Liên hệ chúng tôi</a></li>
								<li><a href="#">Hình thức thanh toán</a></li>
								<li><a href="#">Vận chuyển</a></li>
								<li><a href="#">Trả lại và trao đổi</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
						<div class="footer__widget">
							<h6>Phản hồi</h6>
							<div class="footer__newslatter">
								<p>Mọi thắc mắc về các dịch vụ trên trang web vui lòng gửi
									qua Email</p>
								<form action="#">
									<input type="text"
										   placeholder="Email của bạn" />
									<button type="submit">
										<span class="icon_mail_alt"></span>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="footer__copyright__text">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							<p>Copyright &copy; & Edited by 3MEMS Team</p>
							<p>
								<script>
									document.write(new Date().getFullYear());
								</script>
								2022 All rights reserved

							</p>
							<p>@Copyright &copy; & Edited 2023 by 3MEMS Team</p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer end -->

		<!-- Search Begin -->
		<div class="search-model">
			<div class="h-100 d-flex align-items-center justify-content-center">
				<div class="search-close-switch">+</div>
				<form class="search-model-form">
					<input type="text"
						   id="search-input"
						   placeholder="Tìm kiếm....." />
				</form>
			</div>
		</div>
		<!-- Search End -->

		<!-- Js Plugins -->
		<!-- jquery -->
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
				integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
				crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
				integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
				crossorigin="anonymous"></script>
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.nicescroll.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.countdown.min.js"></script>
		<script src="js/jquery.slicknav.js"></script>
		<script src="js/mixitup.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/main.js"></script>
	</body>

</html>