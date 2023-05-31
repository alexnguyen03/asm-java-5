<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home - 3MEMS</title>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
      rel="stylesheet"
    />
    <!--         <link rel="stylesheet" -->
    <!--               href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" -->
    <!--               integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" -->
    <!--               crossorigin="anonymous" /> -->
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css" />
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="css/nice-select.css" type="text/css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" />
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
  </head>
  <body>
    <!-- Header Section Begin -->
    <header class="header">
      <div class="header__top">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-md-7">
              <div class="header__top__left">
                <p>
                  Miễn phí chuyển phát, 30-ngày trả lại hoặc hoàn tiền một cách
                  đảm bảo.
                </p>
              </div>
            </div>
            <div class="col-lg-6 col-md-5">
              <div class="header__top__right">
                <div class="header__top__links">
                  <a href="#">Đăng nhập</a>
                  <a href="#">FAQs</a>
                </div>
                <div class="header__top__hover">
                  <span>Usd <i class="arrow_carrot-down"></i></span>
                  <ul>
                    <li>${msg}</li>
                    <li>/${pageContext.request.contextPath}</li>
                    <li>USD</li>
                    <li>EUR</li>
                    <li>USD</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-3">
            <div class="header__logo">
              <a href="/"><img src="img/3mems.png" alt="" /></a>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <nav class="header__menu mobile-menu">
              <ul>
                <li class="active"><a href="/">Trang chủ</a></li>
                <li><a href="/shop">Shop</a></li>
                <li>
                  <a href="#">Các trang</a>
                  <ul class="dropdown">
                    <li><a href="./about.html">Về chúng tôi</a></li>
                    <li><a href="./shop-details.html">Thông tin shop</a></li>
                    <li><a href="./shopping-cart.html">Giỏ hàng</a></li>
                    <li><a href="./checkout.html">Thanh toán</a></li>
                    <li><a href="./blog-details.html">Chi tiết Blog</a></li>
                  </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Liên hệ</a></li>
              </ul>
            </nav>
          </div>
          <div class="col-lg-3 col-md-3">
            <div class="header__nav__option">
              <a href="#" class="search-switch"
                ><img src="img/icon/search.png" alt=""
              /></a>
              <a href="#"><img src="img/icon/heart.png" alt="" /></a>
              <a href="#"
                ><img src="img/icon/cart.png" alt="" /> <span>0</span></a
              >
              <div class="price">$0.00</div>
            </div>
          </div>
        </div>
        <div class="canvas__open"><i class="fa fa-bars"></i></div>
      </div>
    </header>

    <!-- Header Section End -->
    <!-- Hero Section Begin -->
    <section class="hero">
      <div class="hero__slider owl-carousel">
        <div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
          <div class="container">
            <div class="row">
              <div class="col-xl-5 col-lg-7 col-md-8">
                <div class="hero__text">
                  <h6>Bộ sưu tập thịnh hành</h6>
                  <h2>
                    Thu - Đông <br />
                    Bộ sưu tập 2030
                  </h2>
                  <p>
                    Nhãn hiệu chuyên tạo ra các mặt hàng xa xỉ thiết yếu. Được
                    tạo ra dựa trên lòng tin, đạo đức, chất lượng vượt trội.
                  </p>
                  <a href="/shop" class="primary-btn"
                    >Mua ngay<span class="arrow_right"></span
                  ></a>
                  <div class="hero__social">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="hero__items set-bg" data-setbg="img/hero/hero-2.jpg">
          <div class="container">
            <div class="row">
              <div class="col-xl-5 col-lg-7 col-md-8">
                <div class="hero__text">
                  <h6>Bộ sưu tập thịnh hành</h6>
                  <h2>
                    Thu - Đông <br />
                    Bộ sưu tập 2030
                  </h2>
                  <p>
                    Nhãn hiệu chuyên tạo ra các mặt hàng xa xỉ thiết yếu. Được
                    tạo ra dựa trên lòng tin, đạo đức, chất lượng vượt trội.
                  </p>
                  <a href="/shop" class="primary-btn"
                    >Mua ngay<span class="arrow_right"></span
                  ></a>
                  <div class="hero__social">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
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
              <div class="banner__item__pic">
                <img src="img/banner/img-banner-1.png" alt="" style="background: #ebecf1"/>
              </div>
              <div class="banner__item__text">
                <h2>Bộ sưu tập Smart Watch 2030</h2>
                <a href="/shop">Mua ngay</a>
              </div>
            </div>
          </div>
          <div class="col-lg-5">
            <div class="banner__item banner__item--middle">
              <div class="banner__item__pic">
                <img src="img/banner/img-banner-2.png" alt="" style="background: #ebecf1"/>
              </div>
              <div class="banner__item__text">
                <h2>Tai nghe</h2>
                <a href="/shop">Mua ngay</a>
              </div>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="banner__item banner__item--last">
              <div class="banner__item__pic">
                <img src="img/banner/img-banner-3.png" alt="" style="background: #ebecf1"/>
              </div>
              <div class="banner__item__text">
                <h2>Túi xách 2023</h2>
                <a href="/shop">Mua ngay</a>
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
          <div class="col-lg-12">
            <ul class="filter__controls">
              <li class="active" data-filter="*">Bán chạy nhất</li>
              <li data-filter=".new-arrivals">Vừa nhập hàng</li>
              <li data-filter=".hot-sales">Hot Sales</li>
            </ul>
          </div>
        </div>
        <div class="row product__filter">
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-1.jpg"
              >
                <span class="label">Mới</span>
              </div>
              <div class="product__item__text">
                <h6>G-Sock Casio</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>$67.24</h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-2.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>EDIFICE CASIO</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>3.510.000 <span class="text-danger">đ</span> </h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item sale">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-3.jpg"
              >
                <span class="label">Giảm giá</span>
              </div>
              <div class="product__item__text">
                <h6>Samsung Galaxy Buds 2 Pro</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>3.900.000đ</h5> 
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-4.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>AirPods 2 Apple</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>3.900.000 <span class="text-danger">đ</span> </h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-5.jpeg"
              >
              </div>
              <div class="product__item__text">
                <h6>AirPods 3 Apple MV7N3</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>4.320.000 <span class="text-danger">đ</span> </h5>
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item sale">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-8.jpeg"
              >
                <span class="label">Sale</span>
              </div>
              <div class="product__item__text">
                <h6>Loa Mozart BT 100</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>1.070.000 <span class="text-danger">đ</span> </h5>
                
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-7.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>Loa bluetooth FENDA F5 Plus</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>225.000 <span class="text-danger">đ</span> </h5>
                
              </div>
            </div>
          </div>
          <div
            class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"
          >
            <div class="product__item">
              <div
                class="product__item__pic set-bg"
                data-setbg="img/product/product-10.jpg"
              >
              </div>
              <div class="product__item__text">
                <h6>Túi đựng nhiều ngăn</h6>
                <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                <div class="rating">
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <h5>150.000 <span class="text-danger">đ</span> </h5>
              </div>
            </div>
          </div>
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
                Phụ kiện Hot <br />
                <span>Bộ sưu tập Túi</span> <br />
                SmartWatch
              </h2>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="categories__hot__deal">
              <img src="img/product-sale.png" alt="" />
              <div class="hot__deal__sticker">
                <span>Giảm giá</span>
                <h5>100.000 đ</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 offset-lg-1">
            <div class="categories__deal__countdown">
              <span>Giao dịch trong tuấn</span>
              <h2>Túi sách nhiều ngăn cá tính</h2>
              <d class="categories__deal__countdown__timer" id="countdown">
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
              </d/shopv>
              <a href="#" class="primary-btn">Mua ngay</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Categories Section End -->

    <!-- Instagram Section Begin -->
    <section class="instagram spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="instagram__pic">
              <div
                class="instagram__pic__item set-bg"
                data-setbg="img/instagram/instagram-1.jpg"
              ></div>
              <div
                class="instagram__pic__item set-bg"
                data-setbg="img/instagram/instagram-2.jpg"
              ></div>
              <div
                class="instagram__pic__item set-bg"
                data-setbg="img/instagram/instagram-3.jpg"
              ></div>
              <div
                class="instagram__pic__item set-bg"
                data-setbg="img/instagram/instagram-4.jpg"
              ></div>
              <div
                class="instagram__pic__item set-bg"
                data-setbg="img/instagram/instagram-5.jpg"
              ></div>
              <div
                class="instagram__pic__item set-bg"
                data-setbg="img/instagram/instagram-6.jpg"
              ></div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="instagram__text">
              <h2>Instagram</h2>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua.
              </p>
              <h3>#Thời trang</h3>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Instagram Section End -->

    <!-- Latest Blog Section Begin -->
    <section class="latest spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="section-title">
              <span>Tin mới nhất</span>
              <h2>Xu hướng thời trang</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div
                class="blog__item__pic set-bg"
                data-setbg="img/blog/blog-1.jpg"
              ></div>
              <div class="blog__item__text">
                <span
                  ><img src="img/icon/calendar.png" alt="" /> 16 Tháng 2
                  2023</span
                >
                <h5>Máy uốn tóc nào tốt nhất</h5>
                <a href="#">Đọc thêm</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div
                class="blog__item__pic set-bg"
                data-setbg="img/blog/blog-2.jpg"
              ></div>
              <div class="blog__item__text">
                <span
                  ><img src="img/icon/calendar.png" alt="" /> 21 Tháng 2
                  2023</span
                >
                <h5>Ban nhạc vĩnh cửu tồn tại mãi mãi</h5>
                <a href="#">Đọc thêm</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div
                class="blog__item__pic set-bg"
                data-setbg="img/blog/blog-3.jpg"
              ></div>
              <div class="blog__item__text">
                <span
                  ><img src="img/icon/calendar.png" alt="" /> 28 Tháng 2
                  2023</span
                >
                <h5>Những lợi ích cho sức khỏe khi đeo kính</h5>
                <a href="#">Đọc thêm</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Latest Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="footer__about">
              <div class="footer__logo">
                <a href="#"><img src="img/footer-logo.png" alt="" /></a>
              </div>
              <p>
                Khách hàng luôn ở trung tâm trong những giao dịch độc nhất của
                chúng tôi, bao gốm cả thiết kế.
              </p>
              <a href="#"><img src="img/payment.png" alt="" /></a>
            </div>
          </div>
          <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
            <div class="footer__widget">
              <h6>Shopping</h6>
              <ul>
                <li><a href="#">Cửa hàng quần áo</a></li>
                <li><a href="#">Giày xu hướng</a></li>
                <li><a href="#">Phụ kiện</a></li>
                <li><a href="#">Giảm giá</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-2 col-md-3 col-sm-6">
            <div class="footer__widget">
              <h6>Shopping</h6>
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
              <h6>Thư mới</h6>
              <div class="footer__newslatter">
                <p>
                  Hãy là người đầu tiên biết về những người mới đến, sách tìm
                  kiếm, bán hàng và khuyến mãi!
                </p>
                <form action="#">
                  <input type="text" placeholder="Your email" />
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
                2020 All rights reserved | This template is made with
                <i class="fa fa-heart-o" aria-hidden="true"></i> by
                <a href="https://colorlib.com" target="_blank">Colorlib</a>
              </p>
              <p>@Copyright &copy; & Edited 2023 by 3MEMS Team </p>
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
          <input type="text" id="search-input" placeholder="Tìm kiếm....." />
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
