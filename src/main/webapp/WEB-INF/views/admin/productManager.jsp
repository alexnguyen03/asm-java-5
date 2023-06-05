<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}
    /css/style-admin.css"
    />

    <!-- Bootstrap 4.4.1 -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/bootstrap.min.css"
    />

    <script
      src="https://kit.fontawesome.com/c0f581682c.js"
      crossorigin="anonymous"
    ></script>

    <style>
      .video-edit-preview {
        width: 100%;
        min-height: 300px;
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
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />

      <!-- Right content -->
      <div class="app-content">
        <!-- Top content -->
        <jsp:include page="top-content.jsp" />
        <!-- -------------------------------------------------------- -->
        <!-- Modal -->
        <!-- Add Product -->
        <div
          class="modal fade"
          id="addProductModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="addProductModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5-
                  class="modal-title container-fluid font-weight-bold"
                  id="addProductModalLabel"
                >
                  <i class="fa fa-plus-circle mr-3" aria-hidden="true"></i> Thêm
                  sản phẩm mới
                </h5->
                <button
                  type="button"
                  class="close"
                  data-dismiss="modal"
                  aria-label="Close"
                >
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="#" class="container-fluid row">
                  <!-- Left form -->
                  <div class="col-4">
                    <!-- Img-priview -->
                    <div class="col-12">
                      <div class="mb-3">
                        <label for="" class="font-weight-bold"
                          >Hình ảnh sản phẩm</label
                        >
                        <label
                          for="Video-edit-myPicture"
                          class="video-edit-preview"
                        >
                          <i class="fa-solid fa-cloud-arrow-up"></i>
                        </label>
                        <input
                          type="file"
                          value=""
                          name="poster"
                          hidden
                          id="Video-edit-myPicture"
                          accept="/img/*"
                        />
                        <span class="error"></span>
                      </div>
                    </div>
                  </div>

                  <!-- Right form -->
                  <div class="col-8">
                    <div class="row">
                      <div class="col-12">
                        <div class="form-group">
                          <label for="id" class="font-weight-bold"
                            >Mã sản phẩm</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="id"
                            aria-describedby="idHelp"
                            placeholder="ID"
                          />
                          <small
                            id="idHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group">
                          <label for="name" class="font-weight-bold"
                            >Tên sản phẩm</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="name"
                            aria-describedby="nameHelp"
                            placeholder="Name"
                          />
                          <small
                            id="nameHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="price" class="font-weight-bold"
                            >Giá sản phẩm</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="exampleInputEmail1"
                            aria-describedby="priceHelp"
                            placeholder="Price"
                          />
                          <small
                            id="priceHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="create_date" class="font-weight-bold"
                            >Ngày tạo sản phẩm</label
                          >
                          <input
                            type="date"
                            class="form-control"
                            id="create_date"
                            aria-describedby="create_dateHelp"
                            placeholder="create_date"
                          />
                          <small
                            id="create_dateHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-12 d-flex">
                        <label for="avaiable" class="mr-5 font-weight-bold"
                          >Trạng thái</label
                        >
                        <div class="form-check mr-3">
                          <input
                            class="form-check-input"
                            type="radio"
                            name="avaiable"
                            id="active"
                            value="active"
                            checked
                          />
                          <label class="form-check-label" for="active">
                            Hoạt động
                          </label>
                        </div>
                        <div class="form-check">
                          <input
                            class="form-check-input"
                            type="radio"
                            name="avaiable"
                            id="inactive"
                            value="inactive"
                          />
                          <label class="form-check-label" for="inactive">
                            Vô hiệu
                          </label>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="category_id" class="font-weight-bold"
                            >Mã danh mục</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="category_id"
                            aria-describedby="categoryHelp"
                            placeholder="category_id"
                          />
                          <small
                            id="categoryHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="quantity" class="font-weight-bold"
                            >Số lượng</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="quantity"
                            aria-describedby="quantityHelp"
                            placeholder="quantity"
                          />
                          <small
                            id="quantityHelp"
                            class="form-text text-muted"
                          ></small>
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

        <!-- Update Product -->
        <div
          class="modal fade"
          id="updateProductModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="updateProductModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5-
                  class="modal-title container-fluid font-weight-bold"
                  id="updateProductModalLabel"
                >
                  <i class="fa-regular fa-pen-to-square mr-3"></i> Sửa sản phẩm
                </h5->
                <button
                  type="button"
                  class="close"
                  data-dismiss="modal"
                  aria-label="Close"
                >
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="#" class="container-fluid row">
                  <!-- Left form -->
                  <div class="col-4">
                    <!-- Img-priview -->
                    <div class="col-12">
                      <div class="mb-3">
                        <label for="" class="font-weight-bold"
                          >Hình ảnh sản phẩm</label
                        >
                        <label
                          for="Video-edit-myPicture"
                          class="video-edit-preview"
                        >
                          <i class="fa-solid fa-cloud-arrow-up"></i>
                        </label>
                        <input
                          type="file"
                          value=""
                          name="poster"
                          hidden
                          id="Video-edit-myPicture"
                          accept="/img/*"
                        />
                        <span class="error"></span>
                      </div>
                    </div>
                  </div>

                  <!-- Right form -->
                  <div class="col-8">
                    <div class="row">
                      <div class="col-12">
                        <div class="form-group">
                          <label for="id" class="font-weight-bold"
                            >Mã sản phẩm</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="id"
                            aria-describedby="idHelp"
                            placeholder="ID"
                            disabled
                          />
                          <small
                            id="idHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group">
                          <label for="name" class="font-weight-bold"
                            >Tên sản phẩm</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="name"
                            aria-describedby="nameHelp"
                            placeholder="Name"
                          />
                          <small
                            id="nameHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="price" class="font-weight-bold"
                            >Giá sản phẩm</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="exampleInputEmail1"
                            aria-describedby="priceHelp"
                            placeholder="Price"
                          />
                          <small
                            id="priceHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="create_date" class="font-weight-bold"
                            >Ngày tạo sản phẩm</label
                          >
                          <input
                            type="date"
                            class="form-control"
                            id="create_date"
                            aria-describedby="create_dateHelp"
                            placeholder="create_date"
                          />
                          <small
                            id="create_dateHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-12 d-flex">
                        <label for="avaiable" class="mr-5 font-weight-bold"
                          >Trạng thái</label
                        >
                        <div class="form-check mr-3">
                          <input
                            class="form-check-input"
                            type="radio"
                            name="avaiable"
                            id="active"
                            value="active"
                            checked
                          />
                          <label class="form-check-label" for="active">
                            Hoạt động
                          </label>
                        </div>
                        <div class="form-check">
                          <input
                            class="form-check-input"
                            type="radio"
                            name="avaiable"
                            id="inactive"
                            value="inactive"
                          />
                          <label class="form-check-label" for="inactive">
                            Vô hiệu
                          </label>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="category_id" class="font-weight-bold"
                            >Mã danh mục</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="category_id"
                            aria-describedby="categoryHelp"
                            placeholder="category_id"
                          />
                          <small
                            id="categoryHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="form-group">
                          <label for="quantity" class="font-weight-bold"
                            >Số lượng</label
                          >
                          <input
                            type="text"
                            class="form-control"
                            id="quantity"
                            aria-describedby="quantityHelp"
                            placeholder="quantity"
                          />
                          <small
                            id="quantityHelp"
                            class="form-text text-muted"
                          ></small>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Button form -->
                  <div class="col-12 d-flex justify-content-end">
                    <button class="btn btn-dark font-weight-bold">
                      Sửa sản phẩm
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>

        <!-- Delete Product -->
        <div
          class="modal fade"
          id="DeleteProductModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="DeleteProductModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5
                  class="modal-title container-fluid"
                  id="DeleteProductModalLabel"
                >
                  <i class="fa-regular fa-trash-can mr-3"></i>
                  <span class="font-weight-bold">
                    Bạn có chắc muốn xóa sản phẩm này?
                  </span>
                  <br />
                  1 - <span class="text-danger">Samsung Galaxy Buds 2</span>
                </h5>
                <button
                  type="button"
                  class="close"
                  data-dismiss="modal"
                  aria-label="Close"
                >
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <img
                    src="${pageContext.request.contextPath}/img/cat-delete.jpg"
                    class="img-fluid"
                    alt=""
                  />
                </div>
              </div>
              <div class="modal-footer d-flex justify-content-end">
                <button class="btn btn-dark">Trở lại</button>
                <button class="btn btn-danger ml-3">Xóa</button>
              </div>
            </div>
          </div>
        </div>

        <!-- -------------------------------------------------------- -->

        <div class="app-content-actions">
          <input class="search-bar" placeholder="Tìm kiếm..." type="text" />
          <div class="app-content-actions-wrapper">
            <div class="filter-button-wrapper d-flex justify-content-betwwen">
              <button
                type="button"
                class="app-content-headerButton"
                data-toggle="modal"
                data-target="#addProductModal"
              >
                Thêm sản phẩm
              </button>

              <button class="action-button filter jsFilter mx-3">
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
            <button class="action-button list active" title="List View">
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
            <button class="action-button grid" title="Grid View">
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
          </div>
        </div>
        <div class="products-area-wrapper tableView overflow-auto">
          <div class="products-header">
            <div class="product-cell image">
              ID
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
              Tên sản phẩm<button class="sort-button">
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
              Hình ảnh<button class="sort-button">
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
              Giá thành<button class="sort-button">
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
              Ngày tạo<button class="sort-button">
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
              Trạng thái<button class="sort-button">
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
            <div class="product-cell category_id">
              Mã danh mục<button class="sort-button">
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
            <div class="product-cell category_id">
              Số lượng<button class="sort-button">
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
            <div class="product-cell category_id">
              Thao tác<button class="sort-button">
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
            <div class="product-cell id">
              <span class="cell-label">Mã: </span> 1
            </div>
            <div class="product-cell name">
              <span class="cell-label">Tên:</span>DEFICATI CASIO
            </div>
            <div class="product-cell image">
              <img
                src="${pageContext.request.contextPath}/img/product/product-1.png"
                alt="product"
              />
            </div>
            <div class="product-cell price">
              <span class="cell-label">Giá thành: </span> 1.070.000 đ
            </div>
            <div class="product-cell create-date">
              <span class="cell-label">Ngày tạo:</span>28/05/2023
            </div>
            <div class="product-cell status-cell">
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Mã danh mục:</span> 5
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Số lượng:</span>25
            </div>
            <div class="product-cell price">
              <div class="row">
                <div class="col-6">
                  <button
                    class="btn btn-primary font-weight-bold"
                    data-toggle="modal"
                    data-target="#updateProductModal"
                  >
                    Sửa
                  </button>
                </div>
                <div class="col-6">
                  <button
                    class="btn btn-danger font-weight-bold"
                    data-toggle="modal"
                    data-target="#DeleteProductModal"
                  >
                    Xóa
                  </button>
                </div>
              </div>
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
            <div class="product-cell id">
              <span class="cell-label">Mã: </span> 2
            </div>
            <div class="product-cell name">
              <span class="cell-label">Tên: </span> G-Clock CASIO
            </div>
            <div class="product-cell image">
              <img
                src="${pageContext.request.contextPath}/img/product/product-2.png"
                alt="product"
                class="img-fluid"
              />
            </div>
            <div class="product-cell price">
              <span class="cell-label">Giá thành: </span>600.000đ
            </div>
            <div class="product-cell create-date">
              <span class="cell-label">Ngày tạo:</span>28/05/2023
            </div>
            <div class="product-cell status-cell">
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Mã danh mục</span> 15
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Số lượng:</span>15
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
            <div class="product-cell id">
              <span class="cell-label">Mã: </span>3
            </div>
            <div class="product-cell name">
              <span class="cell-label">Tên:</span> Samsung Galaxy Buds 2
            </div>
            <div class="product-cell image">
              <img
                src="${pageContext.request.contextPath}/img/product/product-3.png"
                alt="product"
              />
            </div>
            <div class="product-cell price">
              <span class="cell-label">Giá thành:</span>1.400.000đ
            </div>
            <div class="product-cell create-date">
              <span class="cell-label">Ngày tạo:</span>28/05/2023
            </div>
            <div class="product-cell status-cell">
              <span class="status active">Hoạt động</span>
            </div>
            <div class="product-cell sales">
              <span class="cell-label">Mã danh mục</span> 35
            </div>
            <div class="product-cell stock">
              <span class="cell-label">Số lượng:</span>55
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
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
  </body>
</html>