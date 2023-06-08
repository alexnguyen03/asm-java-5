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

  <body onload="$('#deleteToast').toast('show')">
    <div class="app-container position-relative ">
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />

      <div class="app-content  h-100">
        <!-- toast msg  -->
        <div class="toast position-absolute"
             id="${isUpdated == true ? 'deleteToast' : ''}"
             role="alert"
             aria-live="assertive"
             aria-atomic="true"
             data-delay="3000"
             style="top: 3.5rem;
             left: 50%;
             transform: translate(-50%,-50%);
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
          <div class="toast-body alert-info">Cập nhật trạng thái người dùng thành công !</div>
        </div>
        <!-- toast msg  -->
        <!-- Top content -->
        <jsp:include page="top-content.jsp">
          <jsp:param name="title"
                     value="${title}" />
        </jsp:include>
        <!-- Top content -->
        <div class="app-content-actions">
          <form action="">
            <input class="search-bar"
                   placeholder="Tìm kiếm..."
                   type="text"
                   list="user">
            <datalist id="user">
              <c:forEach var="u"
                         items="${users}">
                <option value="${u.fullname}"></option>
              </c:forEach>
            </datalist>
          </form>
          <div class="w-100 d-flex justify-content-center">
            <div class="product-cell status-cell d-flex flex-column justify-content-center">
              <span class="status active py-2">Hiển thị <strong class="mx-2">15 / 20</strong> người
                dùng</span>
            </div>
            <!--* paging start  -->
            <%-- <nav aria-label="Page navigation example">
              <ul class="pagination">
                <li class="page-item ${page.number == 0 ? 'd-none': ''}"><a class="page-link"
                     href="/product/sort-paging?field=${field}&p=0&eop=${eop}">First</a></li>
                <c:forEach begin="0"
                           end="${accountPages.totalPages - 1 }"
                           varStatus="loop">
                  <li class="page-item ${ loop.index == page.number ? 'active': ''} "><a class="page-link"
                       href="/product/sort-paging?field=${field}&p=${loop.index}&eop=${eop}">${loop.count}
                    </a>
                  </li>
                </c:forEach>
                <li class="page-item  ${page.number == page.totalPages - 1   ? 'd-none': ''}"><a class="page-link"
                     href="/product/sort-paging?field=${field}&p=${page.totalPages - 1}&eop=${eop}">Last</a>
                </li>
              </ul>
            </nav>--%>
            <!-- temp paging -->
            <nav aria-label="Page navigation example">
              <ul class="pagination pagination-sm my-1 ml-5">
                <li class="page-item"><a class="page-link"
                     href="#">Previous</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">1</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">2</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">3</a></li>
                <li class="page-item"><a class="page-link"
                     href="#">Next</a></li>
              </ul>
            </nav>
            <!-- temp paging -->
            <!--* paging end -->
            <!-- <div class="text-primary px-3 border">Hiển thị 15 / 20 người dùng</div> -->
          </div>
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
                <label>Địa chỉ</label>
                <select>
                  <option>Vĩnh Long</option>
                  <option>Cần Thơ</option>
                  <option>TP HCM</option>
                  <option>Hà Nội</option>
                  <option>Đà Nẵng</option>
                </select>
                <label>Trạng thái</label>
                <select>
                  <option>Cả 2</option>
                  <option>Hoạt động</option>
                  <option>Không hoạt động</option>
                </select>
                <div class="filter-menu-buttons">
                  <button class="filter-button reset">Làm mới</button>
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
          <c:forEach var="u"
                     items="${ users }">
            <div class="products-row">
              <div class="product-cell image">
                <img src="${pageContext.request.contextPath}/img/user-management/${u.photo}"
                     alt=""
                     data-bigimage="${pageContext.request.contextPath}/img/user-management/u1.jpg"
                     style="z-index: 1000;"
                     data-toggle="modal"
                     data-target="#prevImg"
                     title="${u.photo == null ? 'Không có hình ảnh': u.photo }">
                <span>${u.username}</span>
              </div>
              <div class="product-cell category"><span class="cell-label">Họ và tên</span>${u.fullname}</div>
              <div class="product-cell status-cell">
                <span class="cell-label">Trạng thái</span>
                <span class="status ${u.activated == true ? 'active' : 'disabled'}">${u.activated == true ? 'Hoạt động'
                  :
                  'Vô hiệu hóa'}${activated}</span>
              </div>
              <div class="product-cell sales"><span class="cell-label">Email</span>${u.email}</div>
              <div class="product-cell stock"><span class="cell-label">Vai trò</span><span
                      class="status ${u.admin == true ? 'bg-primary' : 'bg-secondary'}  text-white ">
                  ${u.admin == true ? 'Quản trị viên' : 'Khách hàng'}</span></div>
              <div class="product-cell price"><span class="cell-label"></span>
                <div class="btn btn-sm btn-${u.activated == true ? 'danger' : 'secondary'}"
                     data-toggle="modal"
                     data-target="#deleteModal${u.username}">
                  ${u.activated == true ? 'Vô hiệu hóa' : 'Khôi phục'}</div>
              </div>
            </div>
            <!-- * Start Modal -->
            <div class="modal fade"
                 id="deleteModal${u.username}"
                 tabindex="-1"
                 role="dialog"
                 aria-labelledby="modelTitleId"
                 aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered"
                   role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title ">${u.activated == true ? 'Vô hiệu hóa' : 'Khôi phục'} người dùng <span
                            class="text-danger">"${u.username}"</span>
                    </h5>
                    <button type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="/admin/user/${u.activated == true ? 'delete' : 'restore'}/${u.username}"
                          method="post">
                      <div class="row bg rounded ">
                        <div class="col-12 d-flex justify-content-center">
                          <img src="${pageContext.request.contextPath}/img/user-management/confirm-delete.svg"
                               alt=""
                               width="75%">
                        </div>
                        <div class="col-12">
                          <div class="alert alert-warning">Bạn có chắc muốn ${u.activated == true ? 'vô hiệu hóa' :
                            'khôi phục'} người dùng
                            <strong class="text-danger font-weight-bold">${u.username}</strong> không ?
                          </div>
                        </div>
                        <div class="form-group col-lg-12 mx-auto mb-4 ">
                          <hr>
                          <button type="submit"
                                  class="btn btn-danger float-right w-50">
                            <span class="font-weight-bold">Có, ${u.activated == true ? 'Vô hiệu hóa' : 'Khôi
                              phục'}</span>
                          </button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!-- * End modal -->
            <span></span>
          </c:forEach>
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
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
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