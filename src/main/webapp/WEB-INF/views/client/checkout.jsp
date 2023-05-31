<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

	<head>
		<meta charset="UTF-8">
		<meta name="description"
			  content="Male_Fashion Template">
		<meta name="keywords"
			  content="Male_Fashion, unica, creative, html">
		<meta name="viewport"
			  content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible"
			  content="ie=edge">
		<title>Male-Fashion | Template</title>
		<!-- Google Font -->
		<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
			  rel="stylesheet">
		<!-- Css Styles -->
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/bootstrap.min.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/font-awesome.min.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/elegant-icons.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/magnific-popup.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/nice-select.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/slicknav.min.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/style.css"
			  type="text/css">
	</head>

	<body>
		<!-- Page Preloder -->
		<div id="preloder">
			<div class="loader"></div>
		</div>
		<!-- Offcanvas Menu Begin -->
		<div class="offcanvas-menu-overlay"></div>
		<div class="offcanvas-menu-wrapper">
			<div class="offcanvas__option">
				<div class="offcanvas__links">
					<a href="#">Sign in</a> <a href="#">FAQs</a>
				</div>
				<div class="offcanvas__top__hover">
					<span>Usd <i class="arrow_carrot-down"></i></span>
					<ul>
						<li>USD</li>
						<li>EUR</li>
						<li>USD</li>
					</ul>
				</div>
			</div>
			<div class="offcanvas__nav__option">
				<a href="#"
				   class="search-switch"><img src="${pageContext.request.contextPath}/img/icon/search.png"
						 alt=""></a> <a href="#"><img src="${pageContext.request.contextPath}/img/icon/heart.png"
						 alt=""></a>
				<a href="#"><img src="${pageContext.request.contextPath}/img/icon/cart.png"
						 alt=""> <span>0</span></a>
				<div class="price">$0.00</div>
			</div>
			<div id="mobile-menu-wrap"></div>
			<div class="offcanvas__text">
				<p>Free shipping, 30-day return or refund guarantee.</p>
			</div>
		</div>
		<!-- Offcanvas Menu End -->
		<!-- Header Section Begin -->
		<header class="header">
			<div class="container ">
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<div class="header__logo">
							<a href="/"><img src="${pageContext.request.contextPath}/img/main-logo.png"
									 alt=""
									 height="33px" /></a>
						</div>
					</div>
					<div class="col-lg-5 col-md-5">
						<nav class="header__menu mobile-menu">
							<ul>
								<li><a href="/">Trang chủ</a></li>
								<li><a href="/shop">Sản phẩm</a></li>
								<li class="active"><a href="/shop/order-history">Đơn hàng</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="header__nav__option">
							<a href="#"
							   class="search-switch"><img src="${pageContext.request.contextPath}/img/icon/search.png"
									 alt="" /></a>
							<a href="/shop/cart-detail"
							   title="Giỏ hàng"
							   class="position-relative pr-3"><img
									 src="${pageContext.request.contextPath}/img/icon/cart.png"
									 alt=""
									 width="20px" /> <span class="badge badge-danger position-absolute "
									  style="top: -2px;">2</span></a>
							<div class="dropdown d-inline">
								<div class="btn btn-white dropdown-toggle  btn-sm"
									 type="button"
									 data-toggle="dropdown"
									 aria-expanded="false">
									AlexNguyeen
									<i class="fa fa-user-circle-o"
									   aria-hidden="true"></i>
								</div>
								<div class="dropdown-menu">
									<a class="dropdown-item"
									   href="/account/login"><i class="fa fa-sign-in"
										   aria-hidden="true"></i> Đăng nhập</a>
									<a class="dropdown-item"
									   href="/account/change-password"> <i class="fa fa-sign-out"
										   aria-hidden="true"></i> Đổi mật khẩu</a>
									<a class="dropdown-item"
									   href="/account/update-account"><i class="fa fa-pencil-square-o"
										   aria-hidden="true"></i> Chỉnh sửa tài khoản</a>
									<a class="dropdown-item"
									   href="/"><i class="fa fa-sign-out"
										   aria-hidden="true"></i> Đăng xuất</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="canvas__open"><i class="fa fa-bars"></i></div>
			</div>
		</header>
		<!-- Header Section End -->
		<!-- Breadcrumb Section Begin -->
		<section class="breadcrumb-option">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumb__text">
							<h4>Thanh toán đơn hàng</h4>
							<div class="breadcrumb__links">
								<a href="/">Trang chủ</a> <a href="/shop">Sản phẩm</a> <span>Thanh toán đơn hàng</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Breadcrumb Section End -->
		<!-- Checkout Section Begin -->
		<div class="checkout">
			<div class="container mt-5 mb-5">
				<div class="row">
					<div class="col-lg-6 border-right">
						<h4 class="mb-4 text-center font-weight-bold">CHI TIẾT THANH TOÁN</h4>
						<form>
							<div class="form-group">
								<label for="fullname"
									   class="form-label">Họ và tên</label> <input type="text"
									   class="form-control"
									   id="fullname">
							</div>
							<div class="container p-0">
								<div class="row">
									<div class="col-lg-7">
										<div class="form-group">
											<label for="email"
												   class="form-label">Email</label> <input type="email"
												   class="form-control"
												   id="email">
										</div>
									</div>
									<div class="col-lg-5">
										<div class="form-group">
											<label for="phone"
												   class="form-label">Số điện thoại</label> <input type="text"
												   class="form-control"
												   id="phone">
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="address"
									   class="form-label">Địa chỉ</label> <input type="text"
									   class="form-control"
									   id="address">
							</div>
							<a href="/shop/cart-detail"
							   class="btn btn-secondary w-50 float-right mt-5">Quay
								lại giỏ hàng</a>
						</form>
					</div>
					<div class="col-lg-6">
						<h4 class="mb-4 text-center font-weight-bold">ĐƠN HÀNG CỦA BẠN</h4>
						<div class="container">
							<div class="row">
								<div class="col-lg-3 mb-3">
									<img src="${pageContext.request.contextPath}/img/checkout/tainghe.png"
										 class="card-img-top"
										 height="80">
								</div>
								<div class="col-lg-6">
									<span class="font-weight-bold">Tai nghe
										Bluetooth Jabra Elite 85h | 540.000.000 ₫</span><br> <span class="text-dark">Số
										Lượng: 2</span>
								</div>
								<div class="col-lg-3">
									<h4 class="mt-3 text-danger font-weight-bold">18,000 ₫</h4>
								</div>
								<div class="col-lg-3 mb-3">
									<img src="${pageContext.request.contextPath}/img/checkout/tainghe.png"
										 class="card-img-top"
										 height="80">
								</div>
								<div class="col-lg-6">
									<span class="font-weight-bold">Tai nghe
										Bluetooth Jabra Elite 85h | 540.000.000 ₫</span><br> <span class="text-dark">Số
										Lượng: 2</span>
								</div>
								<div class="col-lg-3">
									<h4 class="mt-3 text-danger font-weight-bold">18,000 ₫</h4>
								</div>
								<div class="col-lg-12">
									<hr>
								</div>
								<div class="col-lg-9">
									<form action="">
										<input type="text"
											   class="form-control"
											   placeholder="Mã giảm giá">
									</form>
								</div>
								<div class="col-lg-3">
									<button type="button"
											class="btn btn-primary w-100"
											disabled>Sử
										dụng</button>
								</div>
								<div class="col-lg-12">
									<hr>
								</div>
								<div class="col-lg-6">
									<p>Tạm tính</p>
									<p>Giảm giá</p>
								</div>
								<div class="col-lg-6 text-right">
									<h4 class="font-weight-bold">18,000 ₫</h4>
									<h4 class="font-weight-bold mt-2">0 ₫</h4>
								</div>
								<div class="col-lg-12">
									<hr>
								</div>
								<div class="col-lg-6 mb-3">
									<h3 class="font-weight-bold">Tổng cộng</h3>
								</div>
								<div class="col-lg-6 text-right">
									<h3 class="font-weight-bold">120,000 ₫</h3>
								</div>
								<div class="col-lg-12">
									<button type="submit"
											class="btn btn-info w-100 font-weight-bold p-2">Thanh
										toán</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Checkout Section End -->
		<!-- Footer Section Begin -->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="footer__about">
							<div class="footer__logo">
								<a href="/"><img src="${pageContext.request.contextPath}/img/main-logo.png"
										 alt="" /></a>
							</div>
							<p>
								Khách hàng luôn ở trung tâm trong những giao dịch độc nhất của
								chúng tôi, bao gốm cả thiết kế.
							</p>
							<a href="#"><img src="${pageContext.request.contextPath}/img/payment.png"
									 alt="" /></a>
						</div>
					</div>
					<div class="col-lg-2 offset-lg-1 col-md-2 col-sm-6">
						<div class="footer__widget">
							<h6>Sản phẩm</h6>
							<ul>
								<li><a href="#">Tai nghe</a></li>
								<li><a href="#">Đồng hồ</a></li>
								<li><a href="#">Phụ kiện</a></li>
								<li><a href="#">Túi xách</a></li>
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
								<p>
									Mọi thắc mắc về các dịch vụ trên trang web vui lòng gửi qua Email
								</p>
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
						   placeholder="Search here.....">
				</form>
			</div>
		</div>
		<!-- Search End -->
		<!-- Js Plugins -->
		<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
		<script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/main.js"></script>
	</body>

</html>