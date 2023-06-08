<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge" />
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style-admin.css" />
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/font-awesome.min.css"
          type="text/css" />
    <script src="https://kit.fontawesome.com/c0f581682c.js"
            crossorigin="anonymous"></script>
  </head>

  <body onload="$('#UpdateStatus').toast('show')">
    <div class="app-container position-relative ">
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />
      <div class="app-content">
        <!-- toast msg  -->
        <div class="toast position-absolute"
             id="${isUpdated == true ? 'UpdateStatus' : ''}"
             role="alert"
             aria-live="assertive"
             aria-atomic="true"
             data-delay="3000"
             style="top:0.5rem;
                     right: 2rem;
                     z-index: 100;">
          <div class="toast-header">
            <strong class="mr-auto text-center">Hệ thống</strong>
            <button type="button"
                    class="ml-2 mb-1 close"
                    data-dismiss="toast"
                    aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="toast-body alert-info">Cập nhật trạng thái đơn hàng thành công !</div>
        </div>
        <!-- toast msg  -->
        <!-- Top content -->
        <jsp:include page="top-content.jsp">
          <jsp:param name="title"
                     value="${title}" />
        </jsp:include>
        <div class="app-content-actions">
          <form action="">
            <div class="input-group input-group-sm">
              <div class="input-group-prepend">
                <button type="button"
                        class="btn btn-outline-secondary">
                  Tìm theo ngày
                </button>
                <button type="button"
                        class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false">
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu">
                  <a class="dropdown-item"
                     href="#">Tìm theo ngày</a>
                  <a class="dropdown-item"
                     href="#">Tìm theo tháng</a>
                </div>
              </div>
              <input type="month"
                     class="form-control"
                     aria-label="Text input with segmented dropdown button" />
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
            <div class=" mx-3">STT</div>
            <div class="product-cell image">
              Họ tên khách hàng
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
            <div class="product-cell category">
              Tổng tiền<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell status-cell">
              Trạng thái đơn<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell sales">
              Ngày đặt<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell stock">
              Địa chỉ<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell price">Thao tác</div>
          </div>
          <c:forEach var="o"
                     items="${ orders }"
                     varStatus="loop">
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
              <div class="mx-4">
                <span>${ loop.count } </span>
              </div>
              <div class="product-cell">
                <span>${o.account.fullname}</span>
              </div>
              <div class="product-cell category">
                <span class="cell-label">Tổng tiền</span>${o.totalPrice}<sup>đ</sup>
              </div>
              <div class="product-cell status-cell">
                <span class="cell-label">Trạng thái</span>
                <span class="status ${o.status =='DG' ? 'active' : 'disabled'} ">
                  <c:choose>
                    <c:when test="${o.status =='C'}">
                      Đang chờ
                    </c:when>
                    <c:when test="${o.status =='XL'}">
                      Đang xử lý
                    </c:when>
                    <c:when test="${o.status =='G'}">
                      Đang giao
                    </c:when>
                    <c:when test="${o.status =='DG'}">
                      Đã giao
                    </c:when>
                    <c:when test="${o.status =='H'}">
                      Đã hủy
                    </c:when>
                    <c:otherwise>
                      Đang chờ
                    </c:otherwise>
                  </c:choose>
                </span>
              </div>
              <div class="product-cell sales">
                <span class="cell-label">Ngày đặt</span>${o.createDate}
              </div>
              <div class="product-cell address">
                <span class="cell-label">Địa chỉ </span>${o.address}
              </div>
              <div class="product-cell price">
                <span class="cell-label"> </span>
                <button class="btn btn-sm btn-primary mr-3"
                        data-toggle="modal"
                        data-target="#updateModal${o.id}">
                  Cập nhật trạng thái
                </button>
                <button class="btn btn-sm btn-info"
                        data-toggle="modal"
                        data-target="#viewModal${o.id}">
                  <i class="fa fa-info-circle"
                     aria-hidden="true"></i>
                </button>
              </div>
              <!-- Modal -->
              <div class="modal fade"
                   id="viewModal${o.id}"
                   tabindex="-1"
                   role="dialog"
                   aria-labelledby="modelTitleId"
                   aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg "
                     style="min-width: 1200px;"
                     role="document">
                  <div class="modal-content"
                       style="min-width: 1200px;">
                    <div class="modal-header alert alert-info">
                      <h3 class="modal-title w-100 text-center ">CHI TIẾT ĐƠN HÀNG </h3>
                      <button type="button"
                              class="close"
                              data-dismiss="modal"
                              aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="row rounded">
                        <div class="col-4">
                          <div class="card border-primary ">
                            <div class="card-header">
                              <h4 class="w-100 text-center mb-0">THÔNG TIN KHÁCH HÀNG</h4>
                            </div>
                            <ul class="list-group list-group-flush">
                              <li class="list-group-item"><span>Mã khách hàng</span>
                                <strong class="text-danger">${o.account.username}</strong>
                              </li>
                              <li class="list-group-item"><span>Họ tên:</span>
                                <strong class="text-danger">${o.account.fullname}</strong>
                              </li>
                              <li class="list-group-item"><span>Địa chỉ</span>
                                <strong class="text-danger">${o.address}</strong>
                              </li>
                              <li class="list-group-item"><span>Số điện thoại</span>
                                <strong class="text-danger">${o.phone}</strong>
                              </li>
                              <li class="list-group-item"><span>Ngày đặt hàng</span>
                                <strong class="text-danger">${o.createDate}</strong>
                              </li>
                              <li class="list-group-item"><span>Email</span>
                                <strong class="text-danger">${o.account.email}</strong>
                              </li>
                            </ul>
                          </div>
                          <div class="card mt-3 border-success">
                            <div class="card-header">
                              <h4 class="w-100 text-center mb-0">THÔNG TIN ĐƠN HÀNG</h4>
                            </div>
                            <ul class="list-group list-group-flush">
                              <li class="list-group-item">
                                <span>Mã đơn hàng</span>
                                <strong class="text-danger">${o.id}</strong>
                              </li>
                              <li class="list-group-item">
                                <span>Tạm tính:</span>
                                <strong class="text-danger">${o.totalPrice - (o.coupon.discountAmount * o.totalPrice)
                                  }<sup>đ</sup></strong>
                              </li>
                              <li class="list-group-item">
                                <span>Giảm giá:</span>
                                <strong class="text-danger">${o.coupon.discountAmount * o.totalPrice}
                                  <sup>đ</sup></strong>
                              </li>
                              <li class="list-group-item">
                                <span>Thành tiền:</span>
                                <strong class="text-danger">${o.totalPrice} <sup>đ</sup></strong>
                              </li>
                            </ul>
                          </div>
                        </div>
                        <div class="col-8">
                          <table class="table table-hover">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>Ảnh SP</th>
                                <th>Tên SP</th>
                                <th>Số lượng</th>
                                <th class="mx-3">Tổng cộng</th>
                              </tr>
                            </thead>
                            <tbody>
                              <c:forEach var="orderDetail"
                                         items="${o.orderDetails}"
                                         varStatus="loop">
                                <tr class="">
                                  <td>${loop.count}</td>
                                  <td class="product__cart__item">
                                    <img src="${pageContext.request.contextPath}/img/product/${orderDetail.product.image}"
                                         alt=""
                                         width="35px"
                                         height="35px"
                                         class="" />
                                  </td>
                                  <td class="product__cart__item">
                                    <h6 class="">${orderDetail.product.name}</h6>
                                  </td>
                                  <td class="quantity__item">
                                    <div class="quantity">
                                      <div class="pro-qty-2 text-center">
                                        <span>${orderDetail.quantity}</span>
                                      </div>
                                    </div>
                                  </td>
                                  <td class="cart__price">${orderDetail.price}<sup>đ</sup></td>
                                </tr>
                              </c:forEach>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Modal -->
              <!-- update modal -->
              <div class="modal fade"
                   id="updateModal${o.id}"
                   tabindex="-1"
                   role="dialog"
                   aria-labelledby="modelTitleId"
                   aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg"
                     role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Cập nhật trạng thái đơn hàng</h5>
                      <button type="button"
                              class="close"
                              data-dismiss="modal"
                              aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form action="/admin/order"
                            method="post">
                        <div class="row rounded">
                          <div class="col-12">
                            <div class="row mb-3">
                              <div class="col-6">
                                <span>Mã khách hàng</span>
                              </div>
                              <div class="col-6">
                                <span>${o.account.username}</span>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <div class="col-6">
                                <span>Tên khách hàng:</span>
                              </div>
                              <div class="col-6">
                                <span>${o.account.fullname}</span>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <div class="col-6">
                                <span>Tổng tiền đặt hàng:</span>
                              </div>
                              <div class="col-6">
                                <span>${o.totalPrice} <sup>đ</sup></span>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <div class="col-6">
                                <span>Ngày đặt hàng:</span>
                              </div>
                              <div class="col-6">
                                <span>${o.createDate}</span>
                              </div>
                            </div>
                            <div class="row mb-3">
                              <div class="col-6">
                                <span>Trạng thái đơn hàng:</span>
                              </div>
                              <div class="col-6">
                                <div class="input-group">
                                  <input type="hidden"
                                         name="id"
                                         value="${o.id}">
                                  <select class="custom-select custom-select-sm"
                                          id="inputGroupSelect04"
                                          name="status">
                                    <option selected>Chọn trạng thái</option>
                                    <c:forEach var="s"
                                               items="${listStatus}">
                                      <option value="${s.key}"
                                              class="text-primary">
                                        ${s.value}
                                      </option>
                                    </c:forEach>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <!-- Submit Button -->
                            <div class="form-group col-lg-12 mx-auto mb-4">
                              <hr />
                              <button type="button"
                                      class="btn btn-secondary mr-5"
                                      data-dismiss="modal">
                                Hủy
                              </button>
                              <button class="btn btn-danger float-right w-75">
                                <span class="font-weight-bold">Cập nhật</span>
                              </button>
                            </div>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
              <!-- update modal -->
            </div>
          </c:forEach>
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
      $("#viewModal").on("show.bs.modal", (event) => {
        var button = $(event.relatedTarget);
        var modal = $(this);
        // Use above variables to manipulate the DOM
      });
    </script>
  </body>

</html>