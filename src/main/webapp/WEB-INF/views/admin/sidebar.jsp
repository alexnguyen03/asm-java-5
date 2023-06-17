<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar">
  <div class="sidebar-header">
    <div class="app-icon">
      <img src="/img/main-logo.png"
           alt=""
           class="img-fluid mr-auto" />
    </div>
  </div>
  <ul class="sidebar-list">
    <li class="sidebar-list-item">
      <a href="/admin">
        <i class="fa fa-home mr-2"
           aria-hidden="true"></i>
        <span>Trang chủ</span>
      </a>
    </li>
    <li class="sidebar-list-item ${pageActive == 'user' ? 'active' : ''}">
      <a href="/admin/user">
        <i class="fa fa-user mr-2"
           aria-hidden="true"></i>
        <span>Người dùng </span>
      </a>
    </li>
    <li class="sidebar-list-item ">
      <a href="/admin/coupon">
        <i class="fa fa-product-hunt mr-2"
           aria-hidden="true"></i>
        <span>Khuyến mãi</span>
      </a>
    </li>
    <li class="sidebar-list-item ">
      <a href="/admin/product-manager">
        <i class="fa fa-product-hunt mr-2"
           aria-hidden="true"></i>
        <span>Sản phẩm</span>
      </a>
    </li>
    <li class="sidebar-list-item">
      <a href="/admin/category">
        <i class="fa-solid fa-bars mr-2"></i>
        <span>Danh mục</span>
      </a>
    </li>
    <li class="sidebar-list-item ${pageActive == 'order' ? 'active' : ''}">
      <a href="/admin/order">
        <i class="fa fa-first-order mr-2"
           aria-hidden="true"></i>
        <span>Đơn hàng </span>
      </a>
    </li>
    <li class="sidebar-list-item">
      <a href="/admin/review">
        <i class="fa fa-first-order mr-2"
           aria-hidden="true"></i>
        <span>Đánh giá</span>
      </a>
    </li>
    <li class="sidebar-list-item">
      <a href="/admin/report">
        <i class="fa fa-bar-chart mr-2"
           aria-hidden="true"></i>
        <span>Thống kê</span>
      </a>
    </li>
  </ul>
  <div class="account-info">
    <div class="account-info-picture">
      <img src="${pageContext.request.contextPath}/img/user-management/${u.photo}"
           alt="!" />
    </div>
    <div class="account-info-name"><%= session.getAttribute("username") %></div>
    <div class="btn-group dropup">
      <button class="btn dropdown-toggle"
              style="outline: none;"
              type="button"
              data-toggle="dropdown"
              aria-expanded="false">

      </button>
      <div class="dropdown-menu">
        <a class="dropdown-item"
           href="#">Đăng xuất</a>
        <a class="dropdown-item"
           href="#">Đổi mật khẩu</a>
        <a class="dropdown-item"
           href="#">Cập nhật tài khoản</a>
      </div>
    </div>
    <button class="account-info-more">

    </button>
  </div>
</div>