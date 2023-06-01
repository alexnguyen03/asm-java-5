<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>Dashboard </title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style-admin.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/font-awesome.min.css"
          type="text/css" />
    <script src="https://kit.fontawesome.com/c0f581682c.js"
            crossorigin="anonymous"></script>
  </head>

  <body>
    <div class="app-container ">
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
            <a href="/">
              <i class="fa fa-home mr-2"
                 aria-hidden="true"></i>
              <span>Trang chủ</span>
            </a>
          </li>
          <li class="sidebar-list-item ">
            <a href="/admin/user">
              <i class="fa fa-user mr-2"
                 aria-hidden="true"></i>
              <span>Người dùng</span>
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
          <li class="sidebar-list-item active">
            <a href="/admin/order">
              <i class="fa fa-first-order mr-2"
                 aria-hidden="true"></i>
              <span>Đặt hàng</span>
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
      <div class="app-content">
        <div class="app-content-header">
          <h1 class="app-content-headerText font-weight-bold">ĐẶT HÀNG</h1>
          <button class="mode-switch"
                  title="Switch Theme">
            <svg class="moon"
                 fill="none"
                 stroke="currentColor"
                 stroke-linecap="round"
                 stroke-linejoin="round"
                 stroke-width="2"
                 width="24"
                 height="24"
                 viewBox="0 0 24 24">
              <defs></defs>
              <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z"></path>
            </svg>
          </button>
        </div>
        <div class="app-content-actions">
          <form action="">
            <div class=" input-group input-group-sm">
              <div class="input-group-prepend"> <button type="button"
                        class="btn btn-outline-secondary">Tìm theo ngày</button> <button type="button"
                        class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"> <span class="sr-only">Toggle Dropdown</span> </button>
                <div class="dropdown-menu"> <a class="dropdown-item"
                     href="#">Tìm theo ngày</a> <a class="dropdown-item"
                     href="#">Tìm theo tháng</a>
                </div>
              </div> <input type="month"
                     class="form-control"
                     aria-label="Text input with segmented dropdown button">
            </div>
          </form>
          <div class="filter-button-wrapper d-flex justify-content-betwwen">

            <button class="action-button filter jsFilter mx-3">
              <span>Lọc</span><svg xmlns="http://www.w3.org/2000/svg"
                   width="16"
                   height="16"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-filter">
                <polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3" />
              </svg>
            </button>
            <div class="filter-menu">
              <label>Trạng thái đơn</label>
              <select>
                <option>Đang chờ</option>
                <option>Đang xử lý</option>
                <option>Đang giao</option>
                <option>Đã giao</option>
              </select>
              <label>Địa chỉ đặt hàng</label>
              <select>
                <option>Vĩnh Long</option>
                <option>Cần Thơ</option>
                <option>TP HCM</option>
                <option>Hà Nội</option>
                <option>Đà Nẵng</option>
              </select>
              <div class="filter-menu-buttons">
                <button class="filter-button btn btn-secondary">Làm mới</button>
                <button class="filter-button apply">Áp dụng</button>
              </div>
            </div>
          </div>
          <div class="w-50 d-flex justify-content-center">
            <div class="product-cell status-cell d-flex flex-column justify-content-center">
              <span class="status active py-2">Hiển thị <strong class="mx-2">15 / 20</strong> người dùng</span>
            </div>
            <nav aria-label="Page navigation example"
                 class="mt-3 ml-4">
              <ul class="pagination justify-content-center pagination-sm align-self-center">
                <li class="page-item disabled">
                  <a class="page-link"
                     href="#"
                     tabindex="-1">Đầu</a>
                </li>
                <li class="page-item"><a class="page-link"
                     href="#">1</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">2</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link"
                     href="#">Cuối</a>
                </li>
              </ul>
            </nav>
          </div>
          <div class="app-content-actions-wrapper">
            <a href="/admin/order"
               class="btn btn${isCancel == true ? '-outline': ''}-primary btn-sm mx-2 ml-4">Đơn đã đặt</a>
            <a href="/admin/order/cancel"
               class="btn btn${isCancel == true ? '': '-outline'}-warning btn-sm mx-2">Đơn đã hủy</a>

            <button class="action-button list active d-none"
                    title="List View">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="16"
                   height="16"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-list">
                <line x1="8"
                      y1="6"
                      x2="21"
                      y2="6" />
                <line x1="8"
                      y1="12"
                      x2="21"
                      y2="12" />
                <line x1="8"
                      y1="18"
                      x2="21"
                      y2="18" />
                <line x1="3"
                      y1="6"
                      x2="3.01"
                      y2="6" />
                <line x1="3"
                      y1="12"
                      x2="3.01"
                      y2="12" />
                <line x1="3"
                      y1="18"
                      x2="3.01"
                      y2="18" />
              </svg>
            </button>
            <button class="action-button grid d-none"
                    title="Grid View">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="16"
                   height="16"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-grid">
                <rect x="3"
                      y="3"
                      width="7"
                      height="7" />
                <rect x="14"
                      y="3"
                      width="7"
                      height="7" />
                <rect x="14"
                      y="14"
                      width="7"
                      height="7" />
                <rect x="3"
                      y="14"
                      width="7"
                      height="7" />
              </svg>
            </button>
          </div>
        </div>
        <div class="products-area-wrapper tableView">
          <div class="products-header">
            <div class="text-white mx-3">STT</div>
            <div class="product-cell image">
              Họ tên người dùng
              <button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell category">Tổng tiền<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button></div>
            <div class="product-cell status-cell">Trạng thái đơn<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button></div>
            <div class="product-cell sales">Ngày đặt<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button></div>
            <div class="product-cell stock">Địa chỉ<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button></div>
            <div class="product-cell price">Thao tác
            </div>
          </div>
          <div class="products-row">
            <button class="cell-more-button">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="18"
                   height="18"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-more-vertical">
                <circle cx="12"
                        cy="12"
                        r="1" />
                <circle cx="12"
                        cy="5"
                        r="1" />
                <circle cx="12"
                        cy="19"
                        r="1" />
              </svg>
            </button>
            <div class="text-white mx-4">
              <span>1</span>
            </div>
            <div class="product-cell">
              <span>Nguyễn Hoài Nam</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Tổng tiền</span>350.000 <sup>đ</sup></div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status active">Đã giao</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Ngày đặt</span>26/05/2003</div>
            <div class="product-cell address"><span class="cell-label">Địa chỉ
              </span>Vĩnh Long</div>
            <div class="product-cell price"><span class="cell-label">
              </span>
              <button class="btn btn-sm btn-primary mr-3"
                      data-toggle="modal"
                      data-target="#updateModal">Cập nhật trạng thái</button>
              <button class="btn btn-sm btn-info"
                      data-toggle="modal"
                      data-target="#viewModal">
                <i class="fa fa-info-circle"
                   aria-hidden="true"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Modal -->
    <div class="modal fade"
         id="viewModal"
         tabindex="-1"
         role="dialog"
         aria-labelledby="modelTitleId"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg"
           role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title ">CHI TIẾT ĐƠN HÀNG</h5>
            <button type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row rounded ">
              <div class="col-7">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>
                        Ảnh SP
                      </th>
                      <th>Tên SP</th>
                      <th>Số lượng</th>
                      <th class=" mx-3">Tổng cộng</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="">
                      <td>1</td>
                      <td class="product__cart__item">
                        <img src="${pageContext.request.contextPath}/img/shopping-cart/64 Audio A12t.jpg"
                             alt=""
                             width="35px"
                             height="35px"
                             class="">
                      </td>
                      <td class="product__cart__item">
                        <h6 class="">64 Audio A12t</h6>
                      </td>
                      <td class="quantity__item">
                        <div class="quantity">
                          <div class="pro-qty-2 text-center">
                            <span>1</span>
                          </div>
                        </div>
                      </td>
                      <td class="cart__price">200.000 <sup>đ</sup></td>
                    </tr>
                    <tr class="">
                      <td>2</td>
                      <td class="product__cart__item">
                        <img src="${pageContext.request.contextPath}/img/shopping-cart/64 Audio A12t.jpg"
                             alt=""
                             width="35px"
                             height="35px"
                             class="">
                      </td>
                      <td class="product__cart__item">
                        <h6 class="">64 Audio A12t</h6>
                      </td>
                      <td class="quantity__item">
                        <div class="quantity">
                          <div class="pro-qty-2 text-center">
                            <span>1</span>
                          </div>
                        </div>
                      </td>
                      <td class="cart__price">200.000 <sup>đ</sup></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="col-5">
                <div class="card">
                  <div class="card-body">
                    <b class=" mb-3">THÔNG TIN NGƯỜI DÙNG</b>
                    <div class="mb-2">
                      <span>Họ tên:</span> <strong class="text-danger">Nguyễn Hoài Nam</strong>
                    </div>
                    <div class="mb-2">
                      <span>Địa chỉ</span> <strong class="text-danger">Vĩnh Long</strong>
                    </div>
                    <div class="mb-2">
                      <span>Số điện thoại</span> <strong class="text-danger">0326265147</strong>
                    </div>
                    <div class="mb-2">
                      <span>Ngày đặt hàng</span> <strong class="text-danger">26/05/2023</strong>
                    </div>
                    <div class="mb-2">
                      <span>Email</span> <strong class="text-danger">namnhpc03517@fpt.edu.vn</strong>
                    </div>
                    <hr>
                    <b class=" mb-3">THÔNG TIN ĐƠN HÀNG</b>
                    <div class="mb-2">
                      <span>Tạm tính:</span> <strong class="text-danger">400.00 <sup>đ</sup></strong>
                    </div>
                    <div class="mb-2">
                      <span>Giảm giá:</span> <strong class="text-danger">0 <sup>đ</sup></strong>
                    </div>
                    <div class="mb-2">
                      <span>Thành tiền:</span> <strong class="text-danger">400.000 <sup>đ</sup></strong>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- update modal -->
    <div class="modal fade"
         id="updateModal"
         tabindex="-1"
         role="dialog"
         aria-labelledby="modelTitleId"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered"
           role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title ">Cập nhật trạng thái đơn hàng</h5>
            <button type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="#">
              <div class="row rounded ">
                <div class="col-12">
                  <div class="row mb-3">
                    <div class="col-6">
                      <span>Tên người dùng:</span>
                    </div>
                    <div class="col-6">
                      <span>Nguyễn Hoài Nam</span>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col-6">
                      <span>Tổng tiền đặt hàng:</span>
                    </div>
                    <div class="col-6">
                      <span>300.000 <sup>đ</sup></span>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col-6">
                      <span>Ngày đặt hàng:</span>
                    </div>
                    <div class="col-6">
                      <span>26/05/2003</span>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col-6">
                      <span>Trạng thái đơn hàng:</span>
                    </div>
                    <div class="col-6">
                      <div class="input-group"> <select class="custom-select custom-select-sm"
                                id="inputGroupSelect04">
                          <option selected>Chọn trạng thái</option>
                          <option value="1"
                                  class="text-primary">Đang chờ</option>
                          <option value="2"
                                  class="text-warning">Đang xử lý</option>
                          <option value="3"
                                  class="text-secondary">Đang giao</option>
                          <option value="3"
                                  class="text-success">Đã giao</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <!-- Submit Button -->
                  <div class="form-group col-lg-12 mx-auto mb-4 ">
                    <hr>
                    <button type="button"
                            class="btn btn-secondary mr-5"
                            data-dismiss="modal">Hủy</button>
                    <a href="#"
                       class="btn btn-danger float-right w-75">
                      <span class="font-weight-bold">Cập nhật</span>
                    </a>
                  </div>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <script>
      $('#viewModal').on('show.bs.modal', event => {
        var button = $(event.relatedTarget);
        var modal = $(this);
        // Use above variables to manipulate the DOM
      });    
    </script>
  </body>

</html>