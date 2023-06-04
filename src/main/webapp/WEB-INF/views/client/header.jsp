<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- Header Section Begin -->
 <header class="header header_scroll_top" id="header_scroll_top">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3">
        <div class="header__logo">
          <a href="/"><img src="${pageContext.request.contextPath }/img/main-logo.png"
                 alt=""
                 height="33px" /></a>
        </div>
      </div>
      <div class="col-lg-5 col-md-5">
        <nav class="header__menu mobile-menu">
          <ul>
            <li class="active"><a href="/">Trang chủ</a></li>
            <li><a href="/shop">Sản phẩm</a></li>
            <li><a href="/shop/order-history">Đơn hàng</a></li>
          </ul>
        </nav>
      </div>
      <div class="col-lg-4 col-md-4">
        <div class="header__nav__option">
          <a href="#"
             class="search-switch"><img src="img/icon/search.png"
                 alt="" /></a>
          <a href="/shop/cart-detail"
             title="Giỏ hàng"
             class="position-relative pr-3"><img src="${pageContext.request.contextPath }/img/icon/cart.png"
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