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

    <!-- Header -->
    <jsp:include page="header.jsp" />

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option" style="margin-bottom: 100px">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="breadcrumb__text">
              <h4>Sản phẩm</h4>
              <div class="breadcrumb__links">
                <a href="/">Trang chủ</a>
                <a href="/shop">Sản phẩm</a>
                <a href="/shop/product-detail">Chi tiết sản phẩm</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->

    <section class="shop-details">
      <div class="container bg-white">
        <div class="row">
          <div
            class="col-lg-4"
            style="
              background-color: #ebebeb;
              border-radius: 15px;
              height: 350px;
            "
          >
            <img
              src="${pageContext.request.contextPath }/img/shop-details/tainghe.png"
              class="card-img-top"
            />
          </div>
          <div class="col-lg-7">
            <h2 class="name-product d-flex justify-content-start mb-3">
              Tai nghe Bluetooth Jabra Elite 85h
            </h2>
            <div class="rating d-flex justify-content-start mb-2">
              <i class="fa fa-star text-warning"></i>
              <i class="fa fa-star text-warning"></i>
              <i class="fa fa-star"></i> <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <h5>&nbsp;&nbsp; - &nbsp;4 Đánh giá</h5>
            </div>
            <h5 class="mt-2 mb-2 d-flex justify-content-start">
              <strong>SỐ LƯỢNG:</strong>&nbsp; 12 &nbsp;&nbsp;&nbsp;&nbsp;
              <strong>THỂ LOẠI:</strong>&nbsp; TAI NGHE
            </h5>
            <strong class="d-flex justify-content-start">MÔ TẢ:</strong>
            <p class="details text-justify">
              Jabra Elite 85h là chiếc tai nghe chống ồn mới nhất trên thị
              trường của hãng âm thanh Đan Mạch. Jabra Elite 85h được trang bị
              nhiều công nghệ tiên tiến giúp cho chiếc tai nghe có được một khả
              năng chơi nhạc và chống ồn vô cùng ấn tượng, hứa hẹn sẽ là đối thủ
              nặng ký của những chiếc tai nghe chống ồn đầu bảng hiện tại.
            </p>
            <h5 class="float-left mr-4 mt-2">Giá:</h5>
            <h3 class="text-danger">5.590.000 ₫</h3>
            <div class="container p-0 mb-3 float-left">
              <div class="row mt-3">
                <div class="col-lg-2 mt-2">
                  <h5>Số lượng:</h5>
                </div>
                <div class="col-lg-3">
                  <div class="input-group mb-3">
                    <i
                      class="fa fa-minus border p-2 text-dark"
                      aria-hidden="true"
                    ></i>
                    <input
                      type="text"
                      class="form-control text-center"
                      value="1"
                    />
                    <i
                      class="fa fa-plus text-dark border p-2"
                      aria-hidden="true"
                    ></i>
                  </div>
                </div>
              </div>
            </div>
            <a
              href=""
              class="border bg-dark text-white p-3 font-weight-bold float-right"
              >THÊM VÀO GIỎ HÀNG</a
            >
          </div>
        </div>
      </div>
    </section>
    <!-- Shop Details Section End -->

    <div class="evaluate-wrapper">
      <div class="container mt-5 mb-5">
        <div class="row">
          <div class="col-lg-12">
            <h5>ĐÁNH GIÁ SẢN PHẨM</h5>
            <hr />
          </div>
          <div class="col-lg-12">
            <div class="container">
              <div class="row">
                <div class="col-lg-12 bg-light p-3 mb-3">
                  <p class="fw-bold">Đánh giá số sao của bạn tại đây???</p>
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <form action="">
                    <div class="mb-3 mt-3">
                      <label for="evaluate" class="form-label fw-bold"
                        >Viết đánh giá</label
                      >
                      <textarea
                        class="form-control"
                        id="evaluate"
                        rows="3"
                      ></textarea>
                    </div>
                    <button type="button" class="btn btn-dark">
                      GỬI ĐÁNH GIÁ
                    </button>
                  </form>
                </div>
                <div class="col-lg-12 mb-3">
                  <hr />
                </div>
                <div class="col-lg-1 d-flex justify-content-center">
                  <img
                    src="/img/shop-details/user.png"
                    class="rounded-circle border"
                    width="80px"
                    height="70px"
                  />
                </div>
                <div class="col-lg-11 mb-3">
                  <strong>Minh Dương</strong> <span>| 27-11-2023</span><br />
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <p class="fw-light">Sản phẩm chất lượng!!</p>
                </div>
                <div class="col-lg-1 d-flex justify-content-center">
                  <img
                    src="/img/shop-details/user.png"
                    class="rounded-circle border"
                    width="80px"
                    height="70px"
                  />
                </div>
                <div class="col-lg-9 mb-3">
                  <strong>Minh Dương</strong> <span>| 27-11-2023</span><br />
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <i class="fa fa-star text-warning" aria-hidden="true"></i>
                  <p class="fw-light">Sài rất bền gần 10 năm mới hư!!</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Related Section Begin -->
    <section class="related spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="related-title">Sản Phẩm Cùng Loại</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${pageContext.request.contextPath }/img/shop-details/tainghe.jpg"
              ></div>
              <div class="product__item__text">
                <h6>Tai nghe Bluetooth Sony WF-1000XM3</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>2.300.000đ</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item sale">
              <div
                class="product__item__pic set-bg"
                data-setbg="${pageContext.request.contextPath }/img/shop-details/tainghe1.jpeg"
              ></div>
              <div class="product__item__text">
                <h6>Tai nghe Bluetooth Monster Clarity 101 Airlinks</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>2.800.000đ</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${pageContext.request.contextPath }/img/shop-details/tainghe2.webp"
              ></div>
              <div class="product__item__text">
                <h6>Tai nghe Bluetooth True Wireless Lypertek Tevi</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>2.000.000đ</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${pageContext.request.contextPath }/img/shop-details/tainghe.jpg"
              ></div>
              <div class="product__item__text">
                <h6>Tai nghe Bluetooth Sony WF-1000XM3</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>2.300.000đ</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item sale">
              <div
                class="product__item__pic set-bg"
                data-setbg="${pageContext.request.contextPath }/img/shop-details/tainghe1.jpeg"
              ></div>
              <div class="product__item__text">
                <h6>Tai nghe Bluetooth Monster Clarity 101 Airlinks</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>2.800.000đ</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="${pageContext.request.contextPath }/img/shop-details/tainghe2.webp"
              ></div>
              <div class="product__item__text">
                <h6>Tai nghe Bluetooth True Wireless Lypertek Tevi</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>2.000.000đ</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Related Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="footer__about">
              <div class="footer__logo">
                <a href="/"><img src="img/main-logo.png" alt="" /></a>
              </div>
              <p>
                Khách hàng luôn ở trung tâm trong những giao dịch độc nhất của
                chúng tôi, bao gốm cả thiết kế.
              </p>
              <a href="#"><img src="img/payment.png" alt="" /></a>
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
    <script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath }/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/main.js"></script>
  </body>
</html>
