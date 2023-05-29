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
  </head>

  <body>
    <div class="app-container ">
      <div class="sidebar">
        <div class="sidebar-header">
          <div class="app-icon">
            <svg viewBox="0 0 512 512"
                 xmlns="http://www.w3.org/2000/svg">
              <path fill="currentColor"
                    d="M507.606 371.054a187.217 187.217 0 00-23.051-19.606c-17.316 19.999-37.648 36.808-60.572 50.041-35.508 20.505-75.893 31.452-116.875 31.711 21.762 8.776 45.224 13.38 69.396 13.38 49.524 0 96.084-19.286 131.103-54.305a15 15 0 004.394-10.606 15.028 15.028 0 00-4.395-10.615zM27.445 351.448a187.392 187.392 0 00-23.051 19.606C1.581 373.868 0 377.691 0 381.669s1.581 7.793 4.394 10.606c35.019 35.019 81.579 54.305 131.103 54.305 24.172 0 47.634-4.604 69.396-13.38-40.985-.259-81.367-11.206-116.879-31.713-22.922-13.231-43.254-30.04-60.569-50.039zM103.015 375.508c24.937 14.4 53.928 24.056 84.837 26.854-53.409-29.561-82.274-70.602-95.861-94.135-14.942-25.878-25.041-53.917-30.063-83.421-14.921.64-29.775 2.868-44.227 6.709-6.6 1.576-11.507 7.517-11.507 14.599 0 1.312.172 2.618.512 3.885 15.32 57.142 52.726 100.35 96.309 125.509zM324.148 402.362c30.908-2.799 59.9-12.454 84.837-26.854 43.583-25.159 80.989-68.367 96.31-125.508.34-1.267.512-2.573.512-3.885 0-7.082-4.907-13.023-11.507-14.599-14.452-3.841-29.306-6.07-44.227-6.709-5.022 29.504-15.121 57.543-30.063 83.421-13.588 23.533-42.419 64.554-95.862 94.134zM187.301 366.948c-15.157-24.483-38.696-71.48-38.696-135.903 0-32.646 6.043-64.401 17.945-94.529-16.394-9.351-33.972-16.623-52.273-21.525-8.004-2.142-16.225 2.604-18.37 10.605-16.372 61.078-4.825 121.063 22.064 167.631 16.325 28.275 39.769 54.111 69.33 73.721zM324.684 366.957c29.568-19.611 53.017-45.451 69.344-73.73 26.889-46.569 38.436-106.553 22.064-167.631-2.145-8.001-10.366-12.748-18.37-10.605-18.304 4.902-35.883 12.176-52.279 21.529 11.9 30.126 17.943 61.88 17.943 94.525.001 64.478-23.58 111.488-38.702 135.912zM266.606 69.813c-2.813-2.813-6.637-4.394-10.615-4.394a15 15 0 00-10.606 4.394c-39.289 39.289-66.78 96.005-66.78 161.231 0 65.256 27.522 121.974 66.78 161.231 2.813 2.813 6.637 4.394 10.615 4.394s7.793-1.581 10.606-4.394c39.248-39.247 66.78-95.96 66.78-161.231.001-65.256-27.511-121.964-66.78-161.231z" />
            </svg>
          </div>
        </div>
        <ul class="sidebar-list">
          <li class="sidebar-list-item">
            <a href="#">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="18"
                   height="18"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-home">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z" />
                <polyline points="9 22 9 12 15 12 15 22" />
              </svg>
              <span>Home</span>
            </a>
          </li>
          <li class="sidebar-list-item active">
            <a href="#">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="18"
                   height="18"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-shopping-bag">
                <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
                <line x1="3"
                      y1="6"
                      x2="21"
                      y2="6" />
                <path d="M16 10a4 4 0 0 1-8 0" />
              </svg>
              <span>ĐẶT HÀNG</span>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="18"
                   height="18"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-pie-chart">
                <path d="M21.21 15.89A10 10 0 1 1 8 2.83" />
                <path d="M22 12A10 10 0 0 0 12 2v10z" />
              </svg>
              <span>Statistics</span>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="18"
                   height="18"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-inbox">
                <polyline points="22 12 16 12 14 15 10 15 8 12 2 12" />
                <path
                      d="M5.45 5.11L2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z" />
              </svg>
              <span>Inbox</span>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#">
              <svg xmlns="http://www.w3.org/2000/svg"
                   width="18"
                   height="18"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round"
                   class="feather feather-bell">
                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9" />
                <path d="M13.73 21a2 2 0 0 1-3.46 0" />
              </svg>
              <span>Notifications</span>
            </a>
          </li>
        </ul>
        <div class="account-info">
          <div class="account-info-picture">
            <img src="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                 alt="product">
          </div>
          <div class="account-info-name">Monica G.</div>
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
      <div class="app-content  h-100">
        <div class="app-content-header">
          <h1 class="app-content-headerText text-center">ĐẶT HÀNG</h1>
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
          <div class="w-50 d-flex justify-content-center">
            <div class="product-cell status-cell d-flex flex-column justify-content-center">
              <span class="status active py-2">Hiển thị hihi<strong class="mx-2">15 / 20</strong> người dùng</span>
            </div>
            <nav aria-label="Page navigation example"
                 class="mt-3 ml-4">
              <ul class="pagination justify-content-center pagination-sm align-self-center">
                <li class="page-item disabled">
                  <a class="page-link"
                     href="#"
                     tabindex="-1">Previous</a>
                </li>
                <li class="page-item"><a class="page-link"
                     href="#">1</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">2</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link"
                     href="#">Next</a>
                </li>
              </ul>
            </nav>
          </div>
          <div class="app-content-actions-wrapper">
            <a href="/admin/order"
               class="btn btn${isCancel == true ? '-outline': ''}-primary btn-sm mx-2 ml-4">Đơn đã đặt</a>
            <a href="/admin/order/cancel"
               class="btn btn${isCancel == true ? '': '-outline'}-warning btn-sm mx-2">Đơn đã hủy</a>
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