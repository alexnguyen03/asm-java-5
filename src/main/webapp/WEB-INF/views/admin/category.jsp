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
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/c0f581682c.js"
      crossorigin="anonymous"
    ></script>
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
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />

      <!-- Content -->
      <div class="app-content">
        <!-- Top content -->
        <jsp:include page="top-content.jsp" />
        <!-- -------------------------------------------------------- -->
        <!-- Modal -->
        <!-- Add category -->
        <div
          class="modal fade"
          id="addCategoryModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="addCategoryModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5
                  class="modal-title container-fluid font-weight-bold"
                  id="addProductModalLabel"
                >
                  <i class="fa fa-bars mr-3" aria-hidden="true"></i> Thêm Danh
                  mục
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
                <form action="#" class="container-fluid row">
                  <div class="col-12">
                    <div class="form-group">
                      <label for="id" class="font-weight-bold"
                        >Mã Danh mục</label
                      >
                      <input
                        type="text"
                        class="form-control"
                        id="id"
                        aria-describedby="idHelp"
                        placeholder="ID"
                      />
                      <small id="idHelp" class="form-text text-muted"></small>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <label for="id" class="font-weight-bold"
                        >Tên danh mục</label
                      >
                      <input
                        type="text"
                        class="form-control"
                        id="categoryName"
                        aria-describedby="idHelp"
                        placeholder="Tên danh mục"
                      />
                      <small id="idHelp" class="form-text text-muted"></small>
                    </div>
                  </div>
                  <!-- Button form -->
                  <div class="col-12 d-flex justify-content-end">
                    <button class="btn btn-dark font-weight-bold">
                      Tạo Danh mục
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- Update category -->
        <div
          class="modal fade"
          id="updateCategoryModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="updateCategoryModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5-
                  class="modal-title container-fluid font-weight-bold"
                  id="addProductModalLabel"
                >
                  <i class="fa-regular fa-pen-to-square mr-3"></i> Sửa Danh mục
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
                  <div class="col-12">
                    <div class="form-group">
                      <label for="id" class="font-weight-bold"
                        >Mã Danh mục</label
                      >
                      <input
                        type="text"
                        class="form-control"
                        id="id"
                        aria-describedby="idHelp"
                        placeholder="ID"
                        disabled
                      />
                      <small id="idHelp" class="form-text text-muted"></small>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <label for="id" class="font-weight-bold"
                        >Tên danh mục</label
                      >
                      <input
                        type="text"
                        class="form-control"
                        id="categoryName"
                        aria-describedby="idHelp"
                        placeholder="Tên danh mục"
                      />
                      <small id="idHelp" class="form-text text-muted"></small>
                    </div>
                  </div>
                  <!-- Button form -->
                  <div class="col-12 d-flex justify-content-end">
                    <button class="btn btn-dark font-weight-bold">
                      Sửa Danh mục
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- delete category -->
        <div
          class="modal fade"
          id="deleteCategoryModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="deleteCategoryModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5-
                  class="modal-title container-fluid font-weight-bold"
                  id="addProductModalLabel"
                >
                  <i class="fa-regular fa-trash-can mr-3"></i> Bạn có chắc muốn
                  xóa danh mục ? <br />
                  1 - <span class="text-danger">Tai nghe không dây</span>
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
                <div class="container">
                  <img
                    src="https://inkythuatso.com/uploads/thumbnails/800/2023/01/8-anh-meme-meo-gio-tay-inkythuatso-17-15-30-30.jpg"
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
        <!-- App actions -->
        <div class="app-content-actions">
          <input class="search-bar" placeholder="Tìm kiếm..." type="text" />
          <div class="app-content-actions-wrapper">
            <div class="filter-button-wrapper d-flex justify-content-betwwen">
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
              </svg></button
            ><button
              type="button"
              class="btn btn-dark"
              data-toggle="modal"
              data-target="#addCategoryModal"
            >
              Thêm Danh mục
            </button>
          </div>
        </div>
        <!-- Table list -->
        <div class="products-area-wrapper tableView overflow-auto">
          <div class="products-header">
            <div class="product-cell image">
              Mã danh mục
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
              Tên Danh mục<button class="sort-button">
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
              <span>1</span>
            </div>
            <div class="product-cell name">
              <span>Tai nghe không dây</span>
            </div>
            <div class="product-cell price">
              <div class="row">
                <div class="col-6">
                  <button
                    class="btn btn-primary font-weight-bold"
                    data-toggle="modal"
                    data-target="#updateCategoryModal"
                  >
                    Sửa
                  </button>
                </div>
                <div class="col-6">
                  <button
                    class="btn btn-danger font-weight-bold"
                    data-toggle="modal"
                    data-target="#deleteCategoryModal"
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
              <span>2</span>
            </div>
            <div class="product-cell name">
              <span>Tai nghe có dây</span>
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
              <span>3</span>
            </div>
            <div class="product-cell name">
              <span>Đồng hồ</span>
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
    <script
      src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
      integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
      integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
      crossorigin="anonymous"
    ></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
  </body>
</html>