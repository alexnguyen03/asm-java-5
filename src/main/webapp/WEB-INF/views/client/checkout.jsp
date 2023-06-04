<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
      href="${pageContext.request.contextPath}/css/bootstrap.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/font-awesome.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/elegant-icons.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/magnific-popup.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/nice-select.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/slicknav.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css"
      type="text/css"
    />
  </head>

  <body>
    <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
    </div>
    
	<!-- Header -->
    <jsp:include page="header.jsp" />
    
	<!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="breadcrumb__text">
              <h4>Thanh toán đơn hàng</h4>
              <div class="breadcrumb__links">
                <a href="/">Trang chủ</a> <a href="/shop">Sản phẩm</a>
                <span>Thanh toán đơn hàng</span>
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
            <h4 class="mb-4 text-center font-weight-bold">
              CHI TIẾT THANH TOÁN
            </h4>
            <form>
              <div class="form-group">
                <label for="fullname" class="form-label">Họ và tên</label>
                <input type="text" class="form-control" id="fullname" />
              </div>
              <div class="container p-0">
                <div class="row">
                  <div class="col-lg-7">
                    <div class="form-group">
                      <label for="email" class="form-label">Email</label>
                      <input type="email" class="form-control" id="email" />
                    </div>
                  </div>
                  <div class="col-lg-5">
                    <div class="form-group">
                      <label for="phone" class="form-label"
                        >Số điện thoại</label
                      >
                      <input type="text" class="form-control" id="phone" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="address" class="form-label">Địa chỉ</label>
                <input type="text" class="form-control" id="address" />
              </div>
              <a
                href="/shop/cart-detail"
                class="btn btn-secondary w-50 float-right mt-5"
                >Quay lại giỏ hàng</a
              >
            </form>
          </div>
          <div class="col-lg-6">
            <h4 class="mb-4 text-center font-weight-bold">ĐƠN HÀNG CỦA BẠN</h4>
            <div class="container">
              <div class="row">
                <div class="col-lg-3 mb-3">
                  <img
                    src="${pageContext.request.contextPath}/img/checkout/tainghe.png"
                    class="card-img-top"
                    height="80"
                  />
                </div>
                <div class="col-lg-6">
                  <span class="font-weight-bold"
                    >Tai nghe Bluetooth Jabra Elite 85h | 540.000.000 ₫</span
                  ><br />
                  <span class="text-dark">Số Lượng: 2</span>
                </div>
                <div class="col-lg-3">
                  <h4 class="mt-3 text-danger font-weight-bold">18,000 ₫</h4>
                </div>
                <div class="col-lg-3 mb-3">
                  <img
                    src="${pageContext.request.contextPath}/img/checkout/tainghe.png"
                    class="card-img-top"
                    height="80"
                  />
                </div>
                <div class="col-lg-6">
                  <span class="font-weight-bold"
                    >Tai nghe Bluetooth Jabra Elite 85h | 540.000.000 ₫</span
                  ><br />
                  <span class="text-dark">Số Lượng: 2</span>
                </div>
                <div class="col-lg-3">
                  <h4 class="mt-3 text-danger font-weight-bold">18,000 ₫</h4>
                </div>
                <div class="col-lg-12">
                  <hr />
                </div>
                <div class="col-lg-9">
                  <form action="">
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Mã giảm giá"
                    />
                  </form>
                </div>
                <div class="col-lg-3">
                  <button type="button" class="btn btn-primary w-100" disabled>
                    Sử dụng
                  </button>
                </div>
                <div class="col-lg-12">
                  <hr />
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
                  <hr />
                </div>
                <div class="col-lg-6 mb-3">
                  <h3 class="font-weight-bold">Tổng cộng</h3>
                </div>
                <div class="col-lg-6 text-right">
                  <h3 class="font-weight-bold">120,000 ₫</h3>
                </div>
                <div class="col-lg-12">
                  <button
                    type="submit"
                    class="btn btn-info w-100 font-weight-bold p-2"
                  >
                    Thanh toán
                  </button>
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
          <input type="text" id="search-input" placeholder="Search here....." />
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
