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
            <img src="/img/3mems.png"
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
          <li class="sidebar-list-item active">
            <a href="/admin/user">
              <i class="fa fa-user mr-2"
                 aria-hidden="true"></i>
              <span>Người dùng</span>
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
          <li class="sidebar-list-item ">
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
      <div class="app-content  h-100">
        <div class="app-content-header">
          <h1 class="app-content-headerText text-center">NGƯỜI DÙNG</h1>
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
            <input class="search-bar"
                   placeholder="Tìm kiếm..."
                   type="text"
                   list="user">

            <!-- <input list="user"
              value=""
              type="text"
              class="col-sm-6 custom-select custom-select-sm"> -->
            <datalist id="user">
              <option value="Nguyễn Hoài Nam"></option>
              <option value="Trần Trong Hiến"></option>
              <option value="Lê Minh Dương">John Le</option>
            </datalist>
          </form>
          <div class="w-100 d-flex justify-content-center">
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
            <!-- <div class="text-primary px-3 border">Hiển thị 15 / 20 người dùng</div> -->

          </div>
          <div class="app-content-actions-wrapper">
            <button class="action-button list active"
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
            <button class="action-button grid"
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
            <div class="product-cell image">
              Tên đăng nhập
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
            <div class="product-cell category">Họ tên<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button></div>
            <div class="product-cell status-cell">Trạng thái<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button></div>
            <div class="product-cell sales">Email<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button></div>
            <div class="product-cell stock">Vai trò<button class="sort-button">
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                   alt="product"
                   data-bigimage="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                   style="z-index: 1000;"
                   data-toggle="modal"
                   data-target="#prevImg">
              <span>AlexNguyeen</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Nguyễn Hoài Nam</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>namnhpc03517@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản
                trị
                viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger"
                   data-toggle="modal"
                   data-target="#deleteModal">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u2.jpg"
                   alt="product">
              <span>John Le</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Lê Minh Dương</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>duonglmpc043433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản trị viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u3.jpg"
                   alt="product">
              <span>Lucas Tran</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Trần Trọng Hiến</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>hienttpc034222@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản trị viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>

              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u4.jpg"
                   alt="product">
              <span>Henry Phan</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Phan Văn Lộc</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>locpvpc56433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status disabled bg-secondary text-white">Người
                dùng</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u5.jpg"
                   alt="product">
              <span>Robert Vo</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Võ Phát Tài</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>taivppc083433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status disabled bg-secondary text-white">Người
                dùng</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                   alt="product"
                   data-bigimage="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                   style="z-index: 1000;"
                   data-toggle="modal"
                   data-target="#prevImg">
              <span>AlexNguyeen</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Nguyễn Hoài Nam</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>namnhpc03517@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản
                trị
                viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger"
                   data-toggle="modal"
                   data-target="#deleteModal">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u2.jpg"
                   alt="product">
              <span>John Le</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Lê Minh Dương</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>duonglmpc043433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản trị viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u3.jpg"
                   alt="product">
              <span>Lucas Tran</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Trần Trọng Hiến</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>hienttpc034222@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản trị viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>

              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u4.jpg"
                   alt="product">
              <span>Henry Phan</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Phan Văn Lộc</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>locpvpc56433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status disabled bg-secondary text-white">Người
                dùng</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u5.jpg"
                   alt="product">
              <span>Robert Vo</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Võ Phát Tài</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>taivppc083433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status disabled bg-secondary text-white">Người
                dùng</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                   alt="product"
                   data-bigimage="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                   style="z-index: 1000;"
                   data-toggle="modal"
                   data-target="#prevImg">
              <span>AlexNguyeen</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Nguyễn Hoài Nam</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>namnhpc03517@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản
                trị
                viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger"
                   data-toggle="modal"
                   data-target="#deleteModal">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u2.jpg"
                   alt="product">
              <span>John Le</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Lê Minh Dương</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>duonglmpc043433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản trị viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u3.jpg"
                   alt="product">
              <span>Lucas Tran</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Trần Trọng Hiến</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>hienttpc034222@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status active bg-primary text-white ">Quản trị viên</span></div>
            <div class="product-cell price"><span class="cell-label"></span>

              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u4.jpg"
                   alt="product">
              <span>Henry Phan</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Phan Văn Lộc</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>locpvpc56433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status disabled bg-secondary text-white">Người
                dùng</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
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
            <div class="product-cell image">
              <img src="${pageContext.request.contextPath}/img/user-management/u5.jpg"
                   alt="product">
              <span>Robert Vo</span>
            </div>
            <div class="product-cell category"><span class="cell-label">Họ và tên</span>Võ Phát Tài</div>
            <div class="product-cell status-cell">
              <span class="cell-label">Trạng thái</span>
              <span class="status disabled">Không hoạt động</span>
            </div>
            <div class="product-cell sales"><span class="cell-label">Email</span>taivppc083433@fpt.edu.vn</div>
            <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                    class="status disabled bg-secondary text-white">Người
                dùng</span></div>
            <div class="product-cell price"><span class="cell-label"></span>
              <div class="btn btn-sm btn-danger">
                Xóa</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Modal -->
    <div class="modal fade"
         id="deleteModal"
         tabindex="-1"
         role="dialog"
         aria-labelledby="modelTitleId"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered"
           role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title ">Xóa người dùng</h5>
            <button type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="#">
              <div class="row bg rounded ">
                <div class="col-12 d-flex justify-content-center">
                  <img src="${pageContext.request.contextPath}/img/user-management/confirm-delete.svg"
                       alt=""
                       width="75%">
                </div>
                <div class="col-12">

                  <div class="alert alert-warning">Bạn có chắc muốn xóa người dùng
                    <strong class="text-danger">AlexNguyeen</strong> không ?
                  </div>

                </div>

                <!-- Submit Button -->
                <div class="form-group col-lg-12 mx-auto mb-4 ">
                  <hr>
                  <button type="button"
                          class="btn btn-secondary mr-5"
                          data-dismiss="modal">Hủy</button>
                  <a href="#"
                     class="btn btn-danger float-right w-50">
                    <span class="font-weight-bold">Xóa luôn</span>
                  </a>
                </div>

              </div>
            </form>
          </div>

        </div>
      </div>
    </div>



    <!-- Modal -->
    <div class="modal fade"
         id="prevImg"
         tabindex="-1"
         role="dialog"
         aria-labelledby="exampleModalLabel"
         aria-hidden="true">
      <div class="modal-dialog"
           role="document">
        <div class="modal-content">


          <div class="modal-body">

            <button type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>

            <img src="//media.tenor.com/images/556e9ff845b7dd0c62dcdbbb00babb4b/tenor.gif"
                 alt=""
                 id="image"
                 class="img-fluid">
          </div>

        </div>
      </div>
    </div>

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <script>
      $('#deleteModal').on('show.bs.modal', event => {
        var button = $(event.relatedTarget);
        var modal = $(this);
        // Use above variables to manipulate the DOM

      });
      $(document).ready(function () {

        // Gets the video src from the data-src on each button
        var $imageSrc;
        console.log($('.image>img'));
        $('.image img').click(function () {
          $imageSrc = $(this).data('bigimage');
        });
        console.log($imageSrc);
        // when the modal is opened autoplay it  
        $('#prevImg').on('shown.bs.modal', function (e) {

          // set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get

          $("#image").attr('src', $imageSrc);
        })
        // reset the modal image
        $('#prevImg').on('hide.bs.modal', function (e) {
          // a poor man's stop video
          $("#image").attr('src', '');
        })
        // document ready  
      });



    </script>
  </body>

</html>