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
          href="${pageContext.request.contextPath}
    /css/style-admin.css" />

    <!-- Bootstrap 4.4.1 -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous" />

    <script src="https://kit.fontawesome.com/c0f581682c.js"
            crossorigin="anonymous"></script>

    <style>
      .video-edit-preview {
        width: 250px;
        height: 250px;
        border: 1px dashed #000;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        color: #000;
        cursor: pointer;
        position: relative;
      }

      .video-edit-preview i {
        font-size: 2rem;
      }

      .video-edit-preview span {
        margin-top: 30px;
        font-size: 1rem;
      }

      .video-edit-preview img {
        position: absolute;
        width: 95%;
        height: 95%;
        top: 95%;
        left: 95%;
        transform: translate(-95%, -95%);
        background: #fff;
        object-fit: cover;
      }

      .error {
        width: 600px;
        font-size: 2rem;
        color: #000;
      }
    </style>
  </head>

  <body>
    <div class="app-container">
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
          <li class="sidebar-list-item">
            <a href="/admin/user">
              <i class="fa fa-user mr-2"
                 aria-hidden="true"></i>
              <span>Người dùng</span>
            </a>
          </li>
          <li class="sidebar-list-item active">
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
      <div class="app-content">
        <div class="app-content-header">
          <h1 class="app-content-headerText font-weight-bold">SẢN PHẨM</h1>
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
          <button type="button"
                  class="app-content-headerButton"
                  data-toggle="modal"
                  data-target="#addProductModal">
            Thêm sản phẩm
          </button>
        </div>
        <!-- -------------------------------------------------------- -->
        <!-- Modal -->
        <div class="modal fade"
             id="addProductModal"
             tabindex="-1"
             role="dialog"
             aria-labelledby="addProductModalLabel"
             aria-hidden="true">
          <div class="modal-dialog modal-xl"
               role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5- class="modal-title container-fluid font-weight-bold"
                     id="addProductModalLabel">
                  <i class="fa fa-plus-circle mr-3"
                     aria-hidden="true"></i> Thêm
                  sản phẩm mới
                </h5->
                <button type="button"
                        class="close"
                        data-dismiss="modal"
                        aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="#"
                      class="container-fluid row">
                  <!-- Left form -->
                  <div class="col-4">
                    <!-- Img-priview -->
                    <div class="col-12">
                      <div class="mb-3 w-100 h-100">
                        <span class="error"></span>
                        <label for=""
                               class="font-weight-bold">Hình ảnh sản phẩm</label>
                        <label for="Video-edit-myPicture"
                               class="video-edit-preview">
                          <i class="fa-solid fa-cloud-arrow-up"></i>
                        </label>
                        <input type="file"
                               value=""
                               name="poster"
                               hidden
                               id="Video-edit-myPicture"
                               accept="/img/*" />
                      </div>
                    </div>
                  </div>

                  <!-- Right form -->
                  <div class="col-8">
                    <div class="row">
                      <div class="col-12">
                        <div class="form-group">
                          <label for="id"
                                 class="font-weight-bold">Mã sản phẩm</label>
                          <input type="text"
                                 class="form-control"
                                 id="id"
                                 aria-describedby="idHelp"
                                 placeholder="ID" />
                          <small id="idHelp"
                                 class="form-text text-muted"></small>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group">
                          <label for="name"
                                 class="font-weight-bold">Tên sản phẩm</label>
                          <input type="text"
                                 class="form-control"
                                 id="name"
                                 aria-describedby="nameHelp"
                                 placeholder="Name" />
                          <small id="nameHelp"
                                 class="form-text text-muted"></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="price"
                                 class="font-weight-bold">Giá sản phẩm</label>
                          <input type="text"
                                 class="form-control"
                                 id="exampleInputEmail1"
                                 aria-describedby="priceHelp"
                                 placeholder="Price" />
                          <small id="priceHelp"
                                 class="form-text text-muted"></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="create_date"
                                 class="font-weight-bold">Ngày tạo sản phẩm</label>
                          <input type="date"
                                 class="form-control"
                                 id="create_date"
                                 aria-describedby="create_dateHelp"
                                 placeholder="create_date" />
                          <small id="create_dateHelp"
                                 class="form-text text-muted"></small>
                        </div>
                      </div>
                      <div class="col-12 d-flex">
                        <label for="avaiable"
                               class="mr-5 font-weight-bold">Trạng thái</label>
                        <div class="form-check mr-3">
                          <input class="form-check-input"
                                 type="radio"
                                 name="avaiable"
                                 id="active"
                                 value="active"
                                 checked />
                          <label class="form-check-label"
                                 for="active">
                            Hoạt động
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input"
                                 type="radio"
                                 name="avaiable"
                                 id="inactive"
                                 value="inactive" />
                          <label class="form-check-label"
                                 for="inactive">
                            Vô hiệu
                          </label>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="category_id"
                                 class="font-weight-bold">Mã danh mục</label>
                          <input type="text"
                                 class="form-control"
                                 id="category_id"
                                 aria-describedby="categoryHelp"
                                 placeholder="category_id" />
                          <small id="categoryHelp"
                                 class="form-text text-muted"></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="quantity"
                                 class="font-weight-bold">Số lượng</label>
                          <input type="text"
                                 class="form-control"
                                 id="quantity"
                                 aria-describedby="quantityHelp"
                                 placeholder="quantity" />
                          <small id="quantityHelp"
                                 class="form-text text-muted"></small>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Button form -->
                  <div class="col-12 d-flex justify-content-end">
                    <button class="btn btn-dark font-weight-bold">
                      Tạo sản phẩm
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- -------------------------------------------------------- -->

        <div class="app-content-actions">
          <input class="search-bar"
                 placeholder="Tìm kiếm..."
                 type="text" />
          <div class="app-content-actions-wrapper">
            <div class="filter-button-wrapper">
              <button class="action-button filter jsFilter">
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
                <label>Danh mục</label>
                <select>
                  <option>Toàn danh mục</option>
                  <option>Tai nghe không dây</option>
                  <option>Tai nghe có dây</option>
                  <option>Đồng hồ</option>
                  <option>Ốp lưng</option>
                </select>
                <label>Trạng thái</label>
                <select>
                  <option>Cả 2</option>
                  <option>Kích hoạt</option>
                  <option>Vô hiệu hóa</option>
                </select>
                <div class="filter-menu-buttons">
                  <button class="filter-button reset">Reset</button>
                  <button class="filter-button apply">Thay đổi</button>
                </div>
              </div>
            </div>
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
        <div class="products-area-wrapper tableView overflow-auto">
          <div class="products-header">
            <div class="product-cell image">
              ID
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
              Tên sản phẩm<button class="sort-button">
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
              Hình ảnh<button class="sort-button">
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
              Giá thành<button class="sort-button">
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
              Ngày tạo<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell price">
              Trạng thái<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell category_id">
              Mã danh mục<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell category_id">
              Số lượng<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
            </div>
            <div class="product-cell category_id">
              Thao tác<button class="sort-button">
                <svg xmlns="http://www.w3.org/2000/svg"
                     width="16"
                     height="16"
                     viewBox="0 0 512 512">
                  <path fill="currentColor"
                        d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
              </button>
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
            <div class="product-cell id">
              <span>1</span>
            </div>
            <div class="product-cell name">
              <span>P9 pro</span>
            </div>
            <div class="product-cell image">
              <img src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
                   alt="product" />
            </div>
            <div class="product-cell price">
              <span>200.000đ</span>
            </div>
            <div class="product-cell create-date"><span>28/05/2023</span></div>
            <div class="product-cell status-cell">
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Tai nghe không dây</span> 5
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Stock:</span>25
            </div>
            <div class="product-cell price">
              <div class="row">
                <div class="col-6">
                  <button class="btn btn-primary font-weight-bold">Sửa</button>
                </div>
                <div class="col-6">
                  <button class="btn btn-danger font-weight-bold">Xóa</button>
                </div>
              </div>
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
            <div class="product-cell id">
              <span>2</span>
            </div>
            <div class="product-cell name">
              <span>Sony Express</span>
            </div>
            <div class="product-cell image">
              <img src="https://images.unsplash.com/photo-1554995207-c18c203602cb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aW50ZXJpb3J8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
                   alt="product" />
            </div>
            <div class="product-cell price">
              <span>600.000đ</span>
            </div>
            <div class="product-cell create-date"><span>28/05/2023</span></div>
            <div class="product-cell status-cell">
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Tai nghe có dây</span> 15
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Stock:</span>15
            </div>
            <div class="product-cell price">
              <div class="row">
                <div class="col-6">
                  <button class="btn btn-primary font-weight-bold">Sửa</button>
                </div>
                <div class="col-6">
                  <button class="btn btn-danger font-weight-bold">Xóa</button>
                </div>
              </div>
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
            <div class="product-cell id">
              <span>1</span>
            </div>
            <div class="product-cell name">
              <span>Samsung Galaxy Buds2</span>
            </div>
            <div class="product-cell image">
              <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60"
                   alt="product" />
            </div>
            <div class="product-cell price">
              <span>1.400.000đ</span>
            </div>
            <div class="product-cell create-date"><span>28/05/2023</span></div>
            <div class="product-cell status-cell">
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Tai nghe không dây</span> 35
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Stock:</span>55
            </div>
            <div class="product-cell price">
              <div class="row">
                <div class="col-6">
                  <button class="btn btn-primary font-weight-bold">Sửa</button>
                </div>
                <div class="col-6">
                  <button class="btn btn-danger font-weight-bold">Xóa</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap 4.4.1 -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>

    <script>
      //Upload review
      const upload = document.querySelector("#Video-edit-myPicture");
      const preview = document.querySelector(".video-edit-preview");
      const error = document.querySelector(".error");

      upload.addEventListener("change", function (e) {
        const file = upload.files[0];
        if (!file) {
          return;
        }

        // if (!file.name.endsWith(".jpg")) {
        //   error.innerText = "Png is not allow here";
        //   return;
        // } else {
        //   error.innerText = "";
        // }

        if (file.size / (1024 * 1024) > 5) {
          error.innerText = "Image must lower than 5mb";
          return;
        } else {
          error.innerText = "";
        }

        const img = document.createElement("img");
        img.src = URL.createObjectURL(file);
        preview.appendChild(img);
      });
    </script>
  </body>

</html>