<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

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
        <title>Giỏ hàng</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
              rel="stylesheet" />
        <!-- Css Styles -->
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/bootstrap.min.css"
              type="text/css" />
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/font-awesome.min.css"
              type="text/css" />
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/elegant-icons.css"
              type="text/css" />
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/magnific-popup.css"
              type="text/css" />
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/nice-select.css"
              type="text/css" />
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
              type="text/css" />
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/slicknav.min.css"
              type="text/css" />
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/style.css"
              type="text/css" />
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
                    <a href="#">Sign in</a>
                    <a href="#">FAQs</a>
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
                         alt=""></a>

            </div>
            <div id="mobile-menu-wrap"></div>
            <div class="offcanvas__text">
                <p>Free shipping, 30-day return or refund guarantee.</p>
            </div>
        </div>
        <!-- Offcanvas Menu End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-7">
                            <div class="header__top__left">
                                <p>Free shipping, 30-day return or refund guarantee.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-5">
                            <div class="header__top__right">
                                <div class="header__top__links">
                                    <a href="#">Sign in</a>
                                    <a href="#">FAQs</a>
                                </div>
                                <div class="header__top__hover">
                                    <span>Usd <i class="arrow_carrot-down"></i></span>
                                    <ul>
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
                            <a href="./index.html"><img src="${pageContext.request.contextPath}/img/logo.png"
                                     alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="/">Trang chủ</a></li>
                                <li class="active"><a href="./shop.html">Sản phẩm</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./about.html">Về chúng tôi</a></li>
                                        <!-- <li><a href="./shop-details.html">Shop Details</a></li> -->
                                        <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                        <li><a href="./checkout.html">Check Out</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Blog</a></li>
                                <li><a href="./contact.html">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="header__nav__option">
                            <a href="#"
                               class="search-switch"><img src="${pageContext.request.contextPath}/img/icon/search.png"
                                     alt=""></a>
                            <a href="/shop/cart-detail"><img src="${pageContext.request.contextPath}/img/icon/cart.png"
                                     alt="" />
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
                            <h4>Giỏ hàng</h4>
                            <div class="breadcrumb__links">
                                <a href="/">Trang chủ </a>
                                <a href="/shop">Sản phẩm</a>
                                <span>Giỏ hàng</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Shopping Cart Section Begin -->
        <section class="shopping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="shopping__cart__table">
                            <form action="">

                                <table>
                                    <thead>
                                        <tr>
                                            <th>

                                                Sản phẩm
                                            </th>
                                            <th>Số lượng</th>
                                            <th>Tổng cộng</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product__cart__item d-flex justify-content-space-bewteen">
                                                <div class="form-check d-flex flex-column  justify-content-center">
                                                    <input class="form-check-input item"
                                                           type="checkbox"
                                                           value=""
                                                           id="defaultCheck1">
                                                </div>
                                                <div class="product__cart__item__pic">
                                                    <img src="${pageContext.request.contextPath}/img/shopping-cart/HiFiMan HE-R9.jpg"
                                                         alt=""
                                                         width="90px"
                                                         height="90px"
                                                         class="">
                                                </div>
                                                <div class="product__cart__item__text">
                                                    <h6>64 Audio A12t</h6>
                                                    <h5>200.000 <sup>đ</sup></h5>
                                                </div>
                                            </td>
                                            <td class="quantity__item">
                                                <div class="quantity">
                                                    <div class="pro-qty-2">
                                                        <input type="text"
                                                               value="1"
                                                               class="input__quantity">
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="cart__price">200.000 <sup>đ</sup></td>
                                            <td class="cart__close"><i class="fa fa-close  text-danger"></i></td>
                                        </tr>
                                        <tr>
                                            <td class="product__cart__item d-flex justify-content-space-bewteen">
                                                <div class="form-check d-flex flex-column  justify-content-center">
                                                    <input class="form-check-input item"
                                                           type="checkbox"
                                                           value=""
                                                           id="defaultCheck1">
                                                </div>
                                                <div class="product__cart__item__pic">
                                                    <img src="${pageContext.request.contextPath}/img/shopping-cart/64 Audio A12t.jpg"
                                                         alt=""
                                                         width="90px"
                                                         height="90px"
                                                         class="">
                                                </div>
                                                <div class="product__cart__item__text">
                                                    <h6>64 Audio A12t</h6>
                                                    <h5>200.000 <sup>đ</sup></h5>
                                                </div>
                                            </td>
                                            <td class="quantity__item">
                                                <div class="quantity">
                                                    <div class="pro-qty-2">
                                                        <input type="text"
                                                               value="1"
                                                               class="input__quantity">
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="cart__price">200.000 <sup>đ</sup></td>
                                            <td class="cart__close "><i class="fa fa-close text-danger"></i></td>
                                        </tr>


                                    </tbody>
                                </table>
                            </form>

                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-2 d-flex flex-column justify-content-center">
                                <div class="form-check d-flex ">
                                    <input class="form-check-input"
                                           type="checkbox"
                                           value=""
                                           id="checkAll"
                                           onClick="selectAll(this)">
                                    <label for="checkAll"
                                           class="font-weight-bold">Chọn tất cả</label>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5">
                                <div class="continue__btn">
                                    <a href="/shop">Tiếp tục mua sắm</a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-5">
                                <div class="continue__btn update__btn">
                                    <a href="#"><i class="fa fa-spinner"></i> Cập nhập </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">

                        <div class="cart__total rounded">
                            <h5 class="text-center mb-3">CHỜ THANH TOÁN</h5>
                            <ul>
                                <li>Tạm tính <span>400.000 <sup>đ</sup></span></li>
                                <li>Tổng cộng <span>400.000 <sup>đ</sup></span></li>
                            </ul>
                            <a href="#"
                               class="btn  btn-success w-100">THANH TOÁN</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shopping Cart Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__logo">
                                <a href="#"><img src="${pageContext.request.contextPath}/img/footer-logo.png"
                                         alt=""></a>
                            </div>
                            <p>The customer is at the heart of our unique business model, which includes design.</p>
                            <a href="#"><img src="${pageContext.request.contextPath}/img/payment.png"
                                     alt=""></a>
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
                                <p>Be the first to know about new arrivals, look books, sales & promos!</p>
                                <form action="#">
                                    <input type="text"
                                           placeholder="Your email">
                                    <button type="submit"><span class="icon_mail_alt"></span></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="footer__copyright__text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            <p>Copyright ©
                                <script>
                                    document.write(new Date().getFullYear());
                                </script>
                                All rights reserved <b class="text-danger">3MEMS</b>
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
        <script>
            function selectAll(source) {
                const items = document.querySelectorAll('.item')
                for (var i = 0, n = items.length; i < n; i++) {
                    items[i].checked = source.checked;
                }
            }


            // const items = document.querySelectorAll('.item')
            // var inputText = document.querySelectorAll('.input__quantity')
            // console.log(inputText);
            // for (var i = 0, n = items.length; i < n; i++) {
            //     items[i].addEventListener('change', function () {
            //         if (this.checked) {
            //             // textInput[i].disabled = false;
            //             console.log(i);
            //             console.log(inputText);
            //             console.log("Checkbox is checked.");
            //         } else {
            //             // textInput[i].disabled = true;
            //             console.log("Checkbox is not checked.");
            //         }
            //     });
            // }


        </script>
    </body>

</html>