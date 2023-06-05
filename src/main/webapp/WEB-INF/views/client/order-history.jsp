<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://www.springframework.org/tags/form"
prefix="form"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="Male_Fashion Template" />
    <meta name="keywords" content="Male_Fashion, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Male-Fashion | Template</title>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
      rel="stylesheet"
    />
    <!-- Css Styles -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/bootstrap.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/font-awesome.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/elegant-icons.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/magnific-popup.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/nice-select.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/owl.carousel.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/slicknav.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/style.css"
      type="text/css"
    />
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
        <a href="#" class="search-switch"
          ><img
            src="${pageContext.request.contextPath}/img/icon/search.png"
            alt=""
        /></a>
        <a href="#"
          ><img
            src="${pageContext.request.contextPath}/img/icon/heart.png"
            alt=""
        /></a>
        <a href="#"
          ><img
            src="${pageContext.request.contextPath}/img/icon/cart.png"
            alt=""
          />
          <span>0</span></a
        >
        <div class="price">$0.00</div>
      </div>
      <div id="mobile-menu-wrap"></div>
      <div class="offcanvas__text">
        <p>Free shipping, 30-day return or refund guarantee.</p>
      </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header -->
    <jsp:include page="header.jsp" />

    <!-- Shop Details Section Begin -->
    <section class="breadcrumb-option">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="breadcrumb__text">
              <h4>Lịch sử đơn hàng</h4>
              <div class="breadcrumb__links">
                <a href="/">Trang chủ</a>
                <a href="/shop">Sản phẩm</a>
                <span>Lịch sử đơn hàng</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- code cu cua Duong -->
    <!-- <section class="shop-details">
			<div class="product__details__pic p-2 mb-5">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumb__text">
							<div class="breadcrumb__links">
								<a href="/">Trang chủ</a>
								<span>Lịch sử đơn hàng</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section> -->
    <div class="order-history-wrapper mt-4">
      <div class="container">
        <div class="row">
          <div class="col-lg-10 m-auto mt-4">
            <h4>Lịch Sử Đặt Hàng</h4>
            <hr />
            <div class="d-flex flex-row-reverse mb-3">
              <button type="button" class="btn btn-warning ml-2">
                Đơn đã hủy
              </button>
              <button type="button" class="btn btn-primary">
                Đơn đã thanh toán
              </button>
            </div>
            <div class="table-responsive">
              <table class="table text-center">
                <thead class="bg-dark text-white">
                  <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Ngày Đặt</th>
                    <th scope="col">Tổng Tiền</th>
                    <th scope="col">Giảm Giá</th>
                    <th scope="col">Địa Chỉ</th>
                    <th scope="col">Số Điện Thoại</th>
                    <th scope="col">Trạng Thái</th>
                    <th scope="col">Hành Động</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="pt-4">1</th>
                    <td class="pt-4">2023-11-04</td>
                    <td class="pt-4">90.000.000đ</td>
                    <td class="pt-4">100.000đ</td>
                    <td class="pt-4">Hậu Giang</td>
                    <td class="pt-4">0776856483</td>
                    <td class="pt-4">Đã thanh toán</td>
                    <td class="pt-3">
                      <h5>
                        <!-- Button to Open the Modal -->
                        <button
                          type="button"
                          class="btn btn-light bg-white border-0"
                          data-toggle="modal"
                          data-target="#myModal"
                        >
                          <h4>
                            <i
                              class="fa fa-eye text-info mr-2"
                              aria-hidden="true"
                            ></i>
                          </h4>
                        </button>
                      </h5>
                    </td>
                  </tr>
                  <tr>
                    <th class="pt-4">2</th>
                    <td class="pt-4">2023-11-04</td>
                    <td class="pt-4">90.000.000đ</td>
                    <td class="pt-4">30.000đ</td>
                    <td class="pt-4">Hậu Giang</td>
                    <td class="pt-4">0776856483</td>
                    <td class="pt-4">Đã hủy</td>
                    <td class="pt-3">
                      <h5>
                        <!-- Button to Open the Modal -->
                        <button
                          type="button"
                          class="btn btn-light bg-white border-0"
                          data-toggle="modal"
                          data-target="#myModal"
                        >
                          <h4>
                            <i
                              class="fa fa-eye text-info mr-2"
                              aria-hidden="true"
                            ></i>
                          </h4>
                        </button>
                      </h5>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- The Modal -->
    <div class="modal fade" id="myModal">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Chi Tiết Đơn Hàng</h4>
            <button type="button" class="close" data-dismiss="modal">
              &times;
            </button>
          </div>
          <!-- Modal body -->
          <div class="modal-body">
            <table class="table font-weight-bold">
              <thead class="bg-dark text-white text-center">
                <tr>
                  <th scope="col" class="p-0">STT</th>
                  <th scope="col" class="p-0">Ảnh</th>
                  <th scope="col" class="p-0">Tên Sản Phẩm</th>
                  <th scope="col" class="p-0">Đơn Giá</th>
                  <th scope="col" class="p-0">Số Lượng</th>
                  <th scope="col" class="p-0">Tổng Tiền</th>
                </tr>
              </thead>
              <tbody style="font-size: 15px" class="text-center">
                <tr class="align-middle">
                  <th class="pt-4">1</th>
                  <td>
                    <img
                      src="/img/order-history/tainghe.png"
                      class="card-img-top"
                      height="50px"
                    />
                  </td>
                  <td class="pt-4">
                    <p>Tai nghe Bluetooth Jabra Elite 85h</p>
                  </td>
                  <td class="pt-4">5.000.000đ</td>
                  <td class="pt-4">6</td>
                  <td class="pt-4">30.000.000đ</td>
                </tr>
                <tr class="align-middle">
                  <th class="pt-4">2</th>
                  <td>
                    <img
                      src="/img/order-history/tainghe.png"
                      class="card-img-top"
                      height="50px"
                    />
                  </td>
                  <td class="pt-4">
                    <p>Tai nghe Bluetooth Jabra Elite 85h</p>
                  </td>
                  <td class="pt-4">5.000.000đ</td>
                  <td class="pt-4">6</td>
                  <td class="pt-4">30.000.000đ</td>
                </tr>
                <tr class="align-middle">
                  <th class="pt-4">3</th>
                  <td>
                    <img
                      src="/img/order-history/tainghe.png"
                      class="card-img-top"
                      height="50px"
                    />
                  </td>
                  <td class="pt-4">
                    <p>Tai nghe Bluetooth Jabra Elite 85h</p>
                  </td>
                  <td class="pt-4">5.000.000đ</td>
                  <td class="pt-4">6</td>
                  <td class="pt-4">30.000.000đ</td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- Modal footer -->
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-dismiss="modal"
            >
              Close
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer Section Begin -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="footer__about">
              <div class="footer__logo">
                <a href="/"
                  ><img
                    src="${pageContext.request.contextPath}/img/main-logo.png"
                    alt=""
                /></a>
              </div>
              <p>
                Khách hàng luôn ở trung tâm trong những giao dịch độc nhất của
                chúng tôi, bao gốm cả thiết kế.
              </p>
              <a href="#"
                ><img
                  src="${pageContext.request.contextPath}/img/payment.png"
                  alt=""
              /></a>
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
                  Mọi thắc mắc về các dịch vụ trên trang web vui lòng gửi qua
                  Email
                </p>
                <form action="#">
                  <input type="text" placeholder="Email của bạn" />
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

	<!-- Shop Details Section Begin -->
	<section class="shop-details">
		<div class="product__details__pic p-2 mb-5">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 d-flex justify-content-start">
						<div class="product__details__breadcrumb mt-4">
							<a href="./index.html">Trang Chủ</a><span>Lịch Sử Đơn Hàng</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="order-history-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-10  m-auto">
					<h4>Lịch Sử Đặt Hàng</h4>
					<hr>
					<div class="d-flex mb-2">
						<div class="p-2">
							<div class="input-group" style="width: 230px;">
								<div class="input-group-prepend">
									<label class="input-group-text" for="inputGroupSelect01">Tìm
										theo</label>
								</div>
								<select class="custom-select" id="inputGroupSelect01">
									<option selected>Chọn</option>
									<option value="1">Mã đơn hàng</option>
									<option value="2">Tên sản phẩm</option>
								</select>
							</div>
						</div>
						<div class="p-2">
							<input class="search-bar bg-white text-dark form-control"
								placeholder="Search..." type="text" style="height: 42px;">
						</div>
						<div class="mr-auto p-2">
							<button type="button" class="btn btn-primary" style="height: 42px;">Tìm</button>
						</div>
						<div class="p-2">
							<button type="button" class="btn btn-warning mr-2" style="height: 42px;">Đơn
								đã hủy</button>
						</div>
						<div class="p-2">
							<button type="button" class="btn btn-primary" style="height: 42px;">Đơn đã
								thanh toán</button>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table text-center">
							<thead class="bg-dark text-white">
								<tr>
									<th scope="col">Mã Đơn Hàng</th>
									<th scope="col">Ngày Đặt</th>
									<th scope="col">Tổng Tiền</th>
									<th scope="col">Giảm Giá</th>
									<th scope="col">Địa Chỉ</th>
									<th scope="col">Số Điện Thoại</th>
									<th scope="col">Trạng Thái</th>
									<th scope="col">Hành Động</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th class="pt-4">1</th>
									<td class="pt-4">2023-11-04</td>
									<td class="pt-4">90.000.000đ</td>
									<td class="pt-4">100.000đ</td>
									<td class="pt-4">Hậu Giang</td>
									<td class="pt-4">0776856483</td>
									<td class="pt-4">Đã thanh toán</td>
									<td class="pt-3">
										<h5>
											<!-- Button to Open the Modal -->
											<button type="button" class="btn btn-light bg-white border-0"
												data-toggle="modal" data-target="#myModal">
												<h4>
													<i class="fa fa-eye text-info mr-2" aria-hidden="true"></i>
												</h4>
											</button>
										</h5>
									</td>
								</tr>
								<tr>
									<th class="pt-4">2</th>
									<td class="pt-4">2023-11-04</td>
									<td class="pt-4">90.000.000đ</td>
									<td class="pt-4">30.000đ</td>
									<td class="pt-4">Hậu Giang</td>
									<td class="pt-4">0776856483</td>
									<td class="pt-4">Đã hủy</td>
									<td class="pt-3">
										<h5>
											<!-- Button to Open the Modal -->
											<button type="button" class="btn btn-light bg-white border-0"
												data-toggle="modal" data-target="#myModal">
												<h4>
													<i class="fa fa-eye text-info mr-2" aria-hidden="true"></i>
												</h4>
											</button>
										</h5>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Chi Tiết Đơn Hàng</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<h5 class="mb-3">
						Mã đơn hàng: <strong>1</strong>
					</h5>
					<table class="table font-weight-bold">
						<thead class="bg-dark text-white text-center">
							<tr>
								<th scope="col" class="p-0">STT</th>
								<th scope="col" class="p-0">Ảnh</th>
								<th scope="col" class="p-0">Tên Sản Phẩm</th>
								<th scope="col" class="p-0">Đơn Giá</th>
								<th scope="col" class="p-0">Số Lượng</th>
								<th scope="col" class="p-0">Tổng Tiền</th>
							</tr>
						</thead>
						<tbody style="font-size: 15px;" class="text-center">
							<tr class="align-middle">
								<th class="pt-4">1</th>
								<td><img src="/img/order-history/tainghe.png"
									class="card-img-top" height="50px"></td>
								<td class="pt-4">
									<p>Tai nghe Bluetooth Jabra Elite 85h</p>
								</td>
								<td class="pt-4">5.000.000đ</td>
								<td class="pt-4">6</td>
								<td class="pt-4">30.000.000đ</td>
							</tr>
							<tr class="align-middle">
								<th class="pt-4">2</th>
								<td><img src="/img/order-history/tainghe.png"
									class="card-img-top" height="50px"></td>
								<td class="pt-4">
									<p>Tai nghe Bluetooth Jabra Elite 85h</p>
								</td>
								<td class="pt-4">5.000.000đ</td>
								<td class="pt-4">6</td>
								<td class="pt-4">30.000.000đ</td>
							</tr>
							<tr class="align-middle">
								<th class="pt-4">3</th>
								<td><img src="/img/order-history/tainghe.png"
									class="card-img-top" height="50px"></td>
								<td class="pt-4">
									<p>Tai nghe Bluetooth Jabra Elite 85h</p>
								</td>
								<td class="pt-4">5.000.000đ</td>
								<td class="pt-4">6</td>
								<td class="pt-4">30.000.000đ</td>
							</tr>
						</tbody>

					</table>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<h4>
						Tổng số lượng sản phẩm: <strong>10</strong>
					</h4>
					<h4>
						Tổng tiền : <strong>90.00.00đ</strong>
					</h4>
				</div>

			</div>
		</div>
	</div>

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="#"><img src="img/footer-logo.png" alt=""></a>
						</div>
						<p>The customer is at the heart of our unique business model,
							which includes design.</p>
						<a href="#"><img src="img/payment.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Clothing Store</a></li>
							<li><a href="#">Trending Shoes</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Sale</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Payment Methods</a></li>
							<li><a href="#">Delivary</a></li>
							<li><a href="#">Return & Exchanges</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
					<div class="footer__widget">
						<h6>NewLetter</h6>
						<div class="footer__newslatter">
							<p>Be the first to know about new arrivals, look books, sales
								& promos!</p>
							<form action="#">
								<input type="text" placeholder="Your email">
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
						<p>
							Copyright ©
							<script>
								document.write(new Date().getFullYear());
							</script>
							2020 All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.nicescroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/js/mixitup.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
</body>

</html>
