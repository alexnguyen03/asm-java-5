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
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />

      <div class="app-content  h-100">
        <!-- Top content -->
        <jsp:include page="top-content.jsp" />

        <div class="app-content-actions">
          <a href="/admin/report"
             class="btn btn-outline-primary">Top 10 sản phẩm bán chạy</a>
          <a href="/admin/report/report-by-category"
             class="btn btn-outline-warning">Doanh thu theo loại</a>
          <a href="/admin/report/report-by-product"
             class="btn btn-secondary">Doanh thu theo sản phẩm</a>
          <a href="/admin/report/report-by-user"
             class="btn btn-outline-info">Người dùng</a>
        </div>

        <div class="mb-3">
          <div class="app-content-actions-wrapper mb-3">
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

                <form action=""
                      class=" mb-3">
                  <div class=" input-group input-group-sm mb-3">
                    <div class="input-group-prepend"> <button type="button"
                              class="btn btn-outline-secondary">Ngày</button> <button type="button"
                              class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                              data-toggle="dropdown"
                              aria-haspopup="true"
                              aria-expanded="false"> <span class="sr-only">Toggle Dropdown</span> </button>
                      <div class="dropdown-menu"> <a class="dropdown-item"
                           href="#">Thống kê theo tuần</a>
                        <a class="dropdown-item"
                           href="#">Thống kê theo tháng</a>
                        <a class="dropdown-item"
                           href="#">Thống kê theo năm</a>
                      </div>
                    </div>
                    <input type="week"
                           class="form-control"
                           aria-label="Text input with segmented dropdown button">
                  </div>
                  <div class="input-group input-group-sm mr-3">
                    <label>Số lượng bán</label>
                    <select class=""
                            id="inputGroupSelect01">
                      <option selected>Chọn số lượng</option>
                      <option value="1">Dưới 100 sản phẩm</option>
                      <option value="1">Từ 100 - 200 sản phẩm</option>
                      <option value="1">Từ 200 - 300 sản phẩm</option>
                    </select>
                  </div>
                  <div class="input-group input-group-sm mr-3">
                    <label>Loại sản phẩm</label>
                    <select class=""
                            id="inputGroupSelect01">
                      <option selected>Chọn loại</option>
                      <option value="1">Tai nghe không dây</option>
                      <option value="1">Tai nghe có dây</option>
                    </select>
                  </div>

                  <div class="filter-menu-buttons">
                    <button class="filter-button reset">Làm mới</button>
                    <button class="filter-button apply">Thay đổi</button>
                  </div>
                </form>
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
          </div>
          <table class="table ">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Loại sản phẩm</th>
                <th scope="col">Số lượng bán</th>
                <th scope="col">Tổng doanh thu</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${reports}"
                         var="report"
                         varStatus="loop">
                <tr>
                  <th scope="row">${loop.count}</th>
                  <td>${report.product}</td>
                  <td>${report.category}</td>
                  <td>${report.quantity}</td>
                  <td>${report.totalPrice}</td>
                </tr>
              </c:forEach>

            </tbody>
          </table>
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
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
              integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
              crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
              integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
              crossorigin="anonymous"></script>
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