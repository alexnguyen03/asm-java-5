<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://www.springframework.org/tags/form"
prefix="form"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/bootstrap.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style-admin.css"
    />
    <script
      src="https://kit.fontawesome.com/c0f581682c.js"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <div class="app-container">
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />
      <div class="app-content">
        <!-- Top content -->
        <jsp:include page="top-content.jsp" />
        <div class="app-content-actions-wrapper my-3">
          <div class="filter-button-wrapper d-flex justify-content-betwwen">
            <div class="filter-button-wrapper">
              <button class="action-button filter jsFilter mx-3 d-none">
                <span>Lọc</span
                ><svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  class="feather feather-filter"
                >
                  <polygon
                    points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"
                  />
                </svg>
              </button>
              <div class="filter-menu">
                <form action="" class="mb-3">
                  <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                      <button type="button" class="btn btn-outline-secondary">
                        Ngày
                      </button>
                      <button
                        type="button"
                        class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                      >
                        <span class="sr-only">Toggle Dropdown</span>
                      </button>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Thống kê theo ngày</a>
                        <a class="dropdown-item" href="#">Thống kê theo tuần</a>
                        <a class="dropdown-item" href="#"
                          >Thống kê theo tháng</a
                        >
                        <a class="dropdown-item" href="#">Thống kê theo năm</a>
                      </div>
                    </div>
                    <input
                      type="week"
                      class="form-control"
                      aria-label="Text input with segmented dropdown button"
                    />
                  </div>
                  <div class="input-group input-group-sm mr-3">
                    <label>Lọc theo danh mục</label>
                    <select class="" id="inputGroupSelect01">
                      <option selected>Chọn theo danh mục</option>
                      <option value="1">Tai nghe không dây</option>
                      <option value="2">Tai nghe có dây</option>
                      <option value="3">Đồng hồ cơ</option>
                      <option value="3">Đồng hồ thông minh</option>
                    </select>
                  </div>
                  <div class="input-group input-group-sm mr-3">
                    <label>Số lượng bán</label>
                    <select class="" id="inputGroupSelect01">
                      <option selected>Chọn số lượng</option>
                      <option value="1">Dưới 100 sản phẩm</option>
                      <option value="1">Từ 100 - 200 sản phẩm</option>
                      <option value="1">Từ 200 - 300 sản phẩm</option>
                    </select>
                  </div>
                  <div class="filter-menu-buttons">
                    <button class="filter-button reset">Làm mới</button>
                    <button class="filter-button apply">Thay đổi</button>
                  </div>
                </form>
              </div>
            </div>
            <button class="action-button list active d-none" title="List View">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="16"
                height="16"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-list"
              >
                <line x1="8" y1="6" x2="21" y2="6" />
                <line x1="8" y1="12" x2="21" y2="12" />
                <line x1="8" y1="18" x2="21" y2="18" />
                <line x1="3" y1="6" x2="3.01" y2="6" />
                <line x1="3" y1="12" x2="3.01" y2="12" />
                <line x1="3" y1="18" x2="3.01" y2="18" />
              </svg>
            </button>
            <button class="action-button grid d-none" title="Grid View">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="16"
                height="16"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-grid"
              >
                <rect x="3" y="3" width="7" height="7" />
                <rect x="14" y="3" width="7" height="7" />
                <rect x="14" y="14" width="7" height="7" />
                <rect x="3" y="14" width="7" height="7" />
              </svg>
            </button>

            <!-- <input class="search-bar"
						   placeholder="Tìm kiếm..."
						   type="text">
					<div class="app-content-actions-wrapper">
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
						<button type="button"
								class="btn btn-primary"
								data-toggle="modal"
								data-target="#myModal">THÊM KHUYẾN MÃI</button>
					</div> -->
            <div class="input-group" style="width: 250px">
              <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect01"
                  >Tìm theo</label
                >
              </div>
              <select class="custom-select" id="inputGroupSelect01">
                <option selected>Chọn</option>
                <option value="1">Ngày hết hạn</option>
                <option value="2">Tên khuyến mãi</option>
              </select>
            </div>
            <input
              class="search-bar ml-2"
              placeholder="Search..."
              type="text"
              style="height: 40px"
              ;
            />
            <button type="button" class="btn btn-primary ml-2">Tìm</button>
            <div class="input-group ml-5" style="width: 220px">
              <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect01"
                  >Lọc</label
                >
              </div>
              <select class="custom-select" id="inputGroupSelect01">
                <option selected>Chọn</option>
                <option value="1">Hoạt động</option>
                <option value="2">Ngưng hoạt động</option>
              </select>
            </div>
            <button type="button" class="btn btn-primary ml-2">Lọc</button>
          </div>
        </div>
        <div class="products-area-wrapper tableView">
          <div class="products-header">
            <div class="product-cell image">
              Mã giảm giá
              <button class="sort-button">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"
                  />
                </svg>
              </button>
            </div>
            <div class="product-cell category">
              Tên giảm giá
              <button class="sort-button">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"
                  />
                </svg>
              </button>
            </div>
            <div class="product-cell status-cell">
              Giá giảm
              <button class="sort-button">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"
                  />
                </svg>
              </button>
            </div>
            <div class="product-cell sales">
              Ngày Giảm
              <button class="sort-button">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"
                  />
                </svg>
              </button>
            </div>
            <div class="product-cell stock">
              Trạng Thái
              <button class="sort-button">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"
                  />
                </svg>
              </button>
            </div>
            <div class="product-cell price">
              Thao tác
              <button class="sort-button">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z"
                  />
                </svg>
              </button>
            </div>
          </div>
          <div class="products-row">
            <button class="cell-more-button">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="18"
                height="18"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-more-vertical"
              >
                <circle cx="12" cy="12" r="1" />
                <circle cx="12" cy="5" r="1" />
                <circle cx="12" cy="19" r="1" />
              </svg>
            </button>
            <div class="product-cell image">
              <span>a1b2c3</span>
            </div>
            <div class="product-cell category">
              <span class="cell-label">Category:</span>Tết Nguyên Đán
            </div>
            <div class="product-cell status-cell">
              <span>100.000 đ</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Sales:</span> 27/10/2023
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Stock:</span> Hoạt động
            </div>
            <div class="product-cell price">
              <span class="cell-label">Price:</span>
              <button
                type="button"
                class="btn btn-primary"
                data-toggle="modal"
                data-target="#myModal"
              >
                Sửa
              </button>
            </div>
          </div>
          <div class="products-row">
            <button class="cell-more-button">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="18"
                height="18"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-more-vertical"
              >
                <circle cx="12" cy="12" r="1" />
                <circle cx="12" cy="5" r="1" />
                <circle cx="12" cy="19" r="1" />
              </svg>
            </button>
            <div class="product-cell image">
              <span>a1b2c344</span>
            </div>
            <div class="product-cell category">
              <span class="cell-label">Category:</span>Tết Nguyên Đán
            </div>
            <div class="product-cell status-cell">
              <span>100.000 đ</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Sales:</span> 27/10/2023
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Stock:</span> Hoạt động
            </div>
            <div class="product-cell price">
              <span class="cell-label">Price:</span>
              <button
                type="button"
                class="btn btn-primary"
                data-toggle="modal"
                data-target="#myModal"
              >
                Sửa
              </button>
            </div>
          </div>
          <div class="products-row">
            <button class="cell-more-button">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="18"
                height="18"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="feather feather-more-vertical"
              >
                <circle cx="12" cy="12" r="1" />
                <circle cx="12" cy="5" r="1" />
                <circle cx="12" cy="19" r="1" />
              </svg>
            </button>
            <div class="product-cell image">
              <span>a1b2c3</span>
            </div>
            <div class="product-cell category">
              <span class="cell-label">Category:</span>Tết Nguyên Đán
            </div>
            <div class="product-cell status-cell">
              <span>100.000 đ</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Sales:</span> 27/10/2023
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Stock:</span> Hoạt động
            </div>
            <div class="product-cell price">
              <span class="cell-label">Price:</span>
              <button
                type="button"
                class="btn btn-primary"
                data-toggle="modal"
                data-target="#myModal"
              >
                Sửa
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- The Modal -->
    <div class="modal fade" id="myModal">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Thêm Khuyến Mãi</h4>
            <button type="button" class="close" data-dismiss="modal">
              &times;
            </button>
          </div>
          <!-- Modal body -->
          <div class="modal-body">
            <form action="">
              <div class="container">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label for="username" class="form-label fw-bold"
                        >Mã giảm giá</label
                      >
                      <input
                        type="text"
                        class="form-control bg-light"
                        id="username"
                      />
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label for="password" class="form-label fw-bold"
                        >Tên giảm giá</label
                      >
                      <input
                        type="password"
                        class="form-control"
                        id="password"
                      />
                    </div>
                  </div>
                  <div class="col-lg-6 mt-3">
                    <div class="form-group">
                      <label for="fullname" class="form-label fw-bold"
                        >Giá giảm</label
                      >
                      <input type="text" class="form-control" id="fullname" />
                    </div>
                  </div>
                  <div class="col-lg-6 mt-3">
                    <div class="form-group">
                      <label for="email" class="form-label fw-bold"
                        >Ngày giảm</label
                      >
                      <input type="email" class="form-control" id="email" />
                    </div>
                  </div>
                  <div class="col-lg-12 mt-3">
                    <label>Trạng thái</label><br />
                    <div class="form-check-inline">
                      <input
                        class="form-check-input"
                        type="radio"
                        name="exampleRadios"
                        id="exampleRadios1"
                        value="option1"
                        checked
                      />
                      <label class="form-check-label" for="exampleRadios1">
                        Hoạt động
                      </label>
                    </div>
                    <div class="form-check-inline">
                      <input
                        class="form-check-input"
                        type="radio"
                        name="exampleRadios"
                        id="exampleRadios2"
                        value="option2"
                      />
                      <label class="form-check-label" for="exampleRadios2">
                        Ngưng hoạt động
                      </label>
                    </div>
                  </div>
                </div>
                <button
                  type="submit"
                  class="btn btn-primary w-100 mt-2 font-weight-bold"
                >
                  Thêm khuyến mãi
                </button>
              </div>
            </form>
          </div>
          <!-- Modal footer -->
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-dismiss="modal"
            >
              Close
            </button>
          </div>
        </div>
      </div>
    </div>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
  </body>
</html>