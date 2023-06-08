<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

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
    <title>Sản phẩm</title>

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
              <h4>Sản phẩm</h4>
              <div class="breadcrumb__links">
                <a href="/">Trang chủ</a>
                <span>Sản phẩm</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <div class="shop__sidebar">
              <div class="shop__sidebar__search">
                <form action="#">
                  <input type="text"
                         placeholder="Tìm kiếm..." />
                  <button type="submit">
                    <span class="icon_search"></span>
                  </button>
                </form>
              </div>
              <div class="shop__sidebar__accordion">
                <div class="accordion"
                     id="accordionExample">
                  <div class="card">
                    <div class="card-heading">
                      <a data-toggle="collapse"
                         data-target="#collapseOne">Danh mục</a>
                    </div>
                    <div id="collapseOne"
                         class="collapse show"
                         data-parent="#accordionExample">
                      <div class="card-body">
                        <div class="shop__sidebar__categories">
                          <ul class="nice-scroll">
                            <li><a href="#">Đồng hồ cơ(20)</a></li>
                            <li><a href="#">Đồng hồ điện tử(20)</a></li>
                            <li><a href="#">Túi xách(20)</a></li>
                            <li><a href="#">Tai nghe không dây(20)</a></li>
                            <li><a href="#">Tai nghe có dây(20)</a></li>
                            <li><a href="#">Loa (20)</a></li>
                            <li><a href="#">Sạc dự phòng (20)</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-heading">
                      <a data-toggle="collapse"
                         data-target="#collapseTwo">Thương hiệu</a>
                    </div>
                    <div id="collapseTwo"
                         class="collapse show"
                         data-parent="#accordionExample">
                      <div class="card-body">
                        <div class="shop__sidebar__brand">
                          <ul>
                            <li><a href="#">Sony</a></li>
                            <li><a href="#">Apple</a></li>
                            <li><a href="#">Xiaomi</a></li>
                            <li><a href="#">Samsung</a></li>
                            <li><a href="#">Huawei</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-heading">
                      <a data-toggle="collapse"
                         data-target="#collapseThree">Lọc theo giá</a>
                    </div>
                    <div id="collapseThree"
                         class="collapse show"
                         data-parent="#accordionExample">
                      <div class="card-body">
                        <div class="shop__sidebar__price">
                          <ul>
                            <li><a href="#">Dưới 1 triệu</a></li>
                            <li><a href="#">1 - 2 triệu</a></li>
                            <li><a href="#">2 - 3 triệu</a></li>
                            <li><a href="#">3 - 4 triệu</a></li>
                            <li><a href="#">5 - 10 triệu</a></li>
                            <li><a href="#">Trên 10 triệu</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-heading">
                      <a data-toggle="collapse"
                         data-target="#collapseSix">Thẻ</a>
                    </div>
                    <div id="collapseSix"
                         class="collapse show"
                         data-parent="#accordionExample">
                      <div class="card-body">
                        <div class="shop__sidebar__tags">
                          <a href="#">Sản phẩm</a>
                          <a href="#">Túi sách</a>
                          <a href="#">Tai nghe</a>
                          <a href="#">Đồng hồ</a>
                          <a href="#">Ốp lưng</a>
                          <a href="#">Loa</a>
                          <a href="#">Phụ kiện</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-9">
            <div class="shop__product__option">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="shop__product__option__left">
                    <p>Hiển thị 1–12 trên 126 kết quả</p>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="shop__product__option__right">
                    <p>sắp xếp theo giá:</p>
                    <select>
                      <option value="">Thấp đến cao</option>
                      <option value="">1 - 2 triệu</option>
                      <option value="">2 - 4 triệu</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product List -->
            <div class="row">
              <!-- Item -->
              <div class="col-lg-4 col-md-6 col-sm-6">
                <a href="/shop/product-detail"
                   class="product__item">
                  <div class="product__item__pic">
                    <img src="img/product/product-1.png"
                         class="img-fluid"
                         alt="" />
                  </div>
                  <div class="product__item__text">
                    <h6>EDIFICE CASIO</h6>
                    <a href="#"
                       class="add-cart">+ Thêm vào giỏ hàng</a>
                    <div class="rating">
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <h5>3.510.000 <span class="text-danger">đ</span></h5>
                  </div>
                </a>
              </div>
              <!-- Item -->
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item sale">
                  <div class="product__item__pic">
                    <img src="img/product/product-2.png"
                         class="img-fluid"
                         alt="" />
                    <span class="label">Sell</span>
                  </div>
                  <div class="product__item__text">
                    <h6>G-SOCK</h6>
                    <a href="/shop/cart-detail/add/1002"
                       class="add-cart">+ Thêm vào giỏ hàng</a>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <h5>3.170.000 <span class="text-danger">đ</span></h5>
                  </div>
                </div>
              </div>
              <!-- Item -->
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic">
                    <img src="img/product/product-3.png"
                         class="img-fluid"
                         alt="" />
                  </div>
                  <div class="product__item__text">
                    <h6>Tai nghe Samsung Galaxy Buds 2 Pro</h6>
                    <a href="#"
                       class="add-cart">+ Thêm vào giỏ hàng</a>
                    <div class="rating">
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <h5>3.900.000đ</h5>
                  </div>
                </div>
              </div>
              <!-- item -->
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item sale">
                  <div class="product__item__pic">
                    <img src="img/product/product-4.png"
                         class="img-fluid"
                         alt="" />
                    <span class="label">Sale</span>
                  </div>
                  <div class="product__item__text">
                    <h6>Tai nghe AirPods 2 Apple</h6>
                    <a href="#"
                       class="add-cart">+ Thêm vào giỏ hàng</a>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <h5>3.900.000 <span class="text-danger">đ</span></h5>
                  </div>
                </div>
              </div>
              <!-- item -->
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic">
                    <img src="img/product/product-5.png"
                         class="img-fluid"
                         alt="" />
                  </div>
                  <div class="product__item__text">
                    <h6>Tai nghe AirPods 3 Apple MV7N3</h6>
                    <a href="#"
                       class="add-cart">+ Thêm vào giỏ hàng</a>
                    <div class="rating">
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <h5>4.320.000 <span class="text-danger">đ</span></h5>
                  </div>
                </div>
              </div>
              <!-- Item -->
              <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                  <div class="product__item__pic">
                    <img src="img/product/product-6.png"
                         class="img-fluid"
                         alt="" />
                  </div>
                  <div class="product__item__text">
                    <h6>Loa Mozart BT 100</h6>
                    <a href="#"
                       class="add-cart">+ Thêm vào giỏ hàng</a>
                    <div class="rating">
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <h5>1.070.000 <span class="text-danger">đ</span></h5>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <div class="product__pagination">
                  <a class="active"
                     href="#">1</a>
                  <a href="#">2</a>
                  <a href="#">3</a>
                  <span>...</span>
                  <a href="#">21</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Shop Section End -->

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
              <p>
                Khách hàng luôn ở trung tâm trong những giao dịch độc nhất của
                chúng tôi, bao gốm cả thiết kế.
              </p>
              <a href="#"><img src="img/payment.png"
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
                 placeholder="Tìm kiếm....." />
        </form>
      </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
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