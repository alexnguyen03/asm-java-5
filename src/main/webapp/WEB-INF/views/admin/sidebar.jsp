<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
      rel='stylesheet'>

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/font-awesome.min.css"
      type="text/css" />

<div class="sidebar">
  <div class="sidebar-header">
    <div class="app-icon">
      <img src="/img/main-logo.png"
           alt=""
           class="img-fluid mr-auto" />
    </div>
  </div>
  <ul class="sidebar-list">
    <li class="sidebar-list-item ${isPageActive == 'index'?'active':''}">
      <a href="/admin"> <i class="fa fa-home mr-2"
           aria-hidden="true"></i>
        <span>Trang chủ</span>
      </a>
    </li>
    <li class="sidebar-list-item ${isPageActive == 'user'?'active':''}">
      <a href="/admin/user"> <i class='bx bxs-user-detail mr-2'></i> <span>Người dùng</span>
      </a>
    </li>
    <li class="sidebar-list-item ${isPageActive == 'coupon'?'active':''}">
      <a href="/admin/coupon"> <i class='bx bxs-coupon mr-2'></i> <span>Khuyến mãi</span>
      </a>
    </li>
    <li class="sidebar-list-item ${isPageActive == 'product'?'active':''}">
      <a href="/admin/product-manager"> <i class="fa fa-product-hunt mr-2"
           aria-hidden="true"></i> <span>Sản
          phẩm</span>
      </a>
    </li>
    <li class="sidebar-list-item ${isPageActive == 'category'?'active':''}">
      <a href="/admin/category-manager"> <i class="fa-solid fa-bars mr-2"></i> <span>Danh mục</span>
      </a>
    </li>
    <li class="sidebar-list-item ${isPageActive == 'order'?'active':''}">
      <a href="/admin/order"> <i class='bx bx-package mr-2'></i> <span>Đặt hàng</span>
      </a>
    </li>
    <li class="sidebar-list-item ${isPageActive == 'preview'?'active':''}">
      <a href="/admin/review"> <i class='bx bx-message-dots mr-2'></i> <span>Đánh giá</span>
      </a>
    </li>
    <li class="sidebar-list-item ${isPageActive == 'statistic'?'active':''}">
      <a href="/admin/report"> <i class="fa fa-bar-chart mr-2"
           aria-hidden="true"></i> <span>Thống kê</span>
      </a>
    </li>
  </ul>
  <div class="account-info">
    <div class="account-info-picture">
      <img src="https://images.unsplash.com/photo-1527736947477-2790e28f3443?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE2fHx3b21hbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
           alt="Account" />
    </div>
    <div class="account-info-name">AlexNguyeen</div>
    <button class="account-info-more">
      <svg xmlns="http://www.w3.org/2000/svg"
           width="24"
           height="24"
           viewBox="0 0 24 24"
           fill="none"
           stroke="currentColor"
           stroke-width="2"
           stroke-linecap="round"
           stroke-linejoin="round"
           class="feather feather-more-horizontal">
        <circle cx="12"
                cy="12"
                r="1" />
        <circle cx="19"
                cy="12"
                r="1" />
        <circle cx="5"
                cy="12"
                r="1" />
      </svg>
    </button>
  </div>
</div>