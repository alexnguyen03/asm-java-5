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
    <!-- Chart js  -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Chart js  -->
  </head>

  <body>
    <div class="app-container">
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />
      <div class="app-content h-100">
        <!-- Top content -->
        <jsp:include page="top-content.jsp">
          <jsp:param name="title"
                     value="${title}" />
        </jsp:include>
        <div class="app-content-actions">
          <jsp:include page="report-navbar.jsp" />
        </div>
        <div class="mb-3">
          <div class="app-content-actions-wrapper">
            <form action="/admin/report"
                  class="w-50 d-flex justify-content-betwwen"
                  method="post">
              <div class="">
                <select class="custom-select"
                        name="searchKey"
                        id="searchKey">
                  <option disabled
                          selected
                          value="defaultVal">Chọn tiêu chí hiển thị thống kê</option>
                  <option value="date">Thống kê theo ngày</option>
                  <option value="week">Thống kê theo tuần</option>
                  <option value="month">Thống kê theo tháng</option>
                  <option value="year">Thống kê theo năm</option>
                </select>
              </div>
              <div class="">
                <input type="date"
                       class="form-control"
                       name="searchVal"
                       id="filterByDate">
              </div>
              <button class="btn btn-primary">Xem thống kê</button>
            </form>

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
        <div class="mb-3">
          <div class="btn btn-primary"
               id="btnChart"
               onclick="fetchData();">Xem tổng quan dạng biểu đồ</div>
          <div class="btn btn-primary d-none"
               onclick="tableView();"
               id="btnTable">Trở lại</div>
        </div>
        <div class=""
             id="table">
          <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Số lượng bán</th>
                <th scope="col">Danh mục</th>
                <th scope="col">Tổng doanh thu</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="report"
                         items="${reports}"
                         varStatus="loop">
                <tr>
                  <th scope="row">${loop.count}</th>
                  <td>${report.name}</td>
                  <td>${report.quantity}</td>
                  <td>${report.category}</td>
                  <td>${report.price}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <div class="w-75 d-flex justify-content-center">
          <canvas id="myChart"></canvas>
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
            <h5 class="modal-title">Xóa người dùng</h5>
            <button type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="#">
              <div class="row bg rounded">
                <div class="col-12 d-flex justify-content-center">
                  <img src="${pageContext.request.contextPath}/img/user-management/confirm-delete.svg"
                       alt=""
                       width="75%" />
                </div>
                <div class="col-12">
                  <div class="alert alert-warning">
                    Bạn có chắc muốn xóa người dùng
                    <strong class="text-danger">AlexNguyeen</strong> không ?
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
                 class="img-fluid" />
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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
      $("#deleteModal").on("show.bs.modal", (event) => {
        var button = $(event.relatedTarget);
        var modal = $(this);
        // Use above variables to manipulate the DOM
      });
      $(document).ready(function () {
        // Gets the video src from the data-src on each button
        var $imageSrc;
        console.log($(".image>img"));
        $(".image img").click(function () {
          $imageSrc = $(this).data("bigimage");
        });
        console.log($imageSrc);
        // when the modal is opened autoplay it
        $("#prevImg").on("shown.bs.modal", function (e) {
          // set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
          $("#image").attr("src", $imageSrc);
        });
        // reset the modal image
        $("#prevImg").on("hide.bs.modal", function (e) {
          // a poor man's stop video
          $("#image").attr("src", "");
        });
        // document ready
      });
      // render chart 
      let myChart;
      const ctx = document.getElementById('myChart');
      const table = document.getElementById('table')
      const btnTable = document.getElementById('btnTable')
      const btnChart = document.getElementById('btnChart')
      async function fetchData() {
        if (typeof myChart !== 'undefined') {
          myChart.destroy();
        }
        try {
          const response = await fetch(`http://localhost:8080/admin/report/chart`);
          const dataJson = await response.json();
          const names = dataJson.map(item => item.name);
          const quantities = dataJson.map(item => item.quantity);
          console.log(names);
          myChart = new Chart(ctx, {
            type: 'bar',
            data: {
              labels: names,
              datasets: [{
                label: 'Số lượng bán được',
                data: quantities,
                borderWidth: 1,
                backgroundColor: [
                  'rgba(255, 99, 132, 0.2)',
                ],
              }]
            },
            options: {
              indexAxis: 'y',
            }
          });
        } catch (error) {
          console.error(error);
        }
        btnTable.classList.remove('d-none')
        btnChart.classList.add('d-none')
        table.classList.add('d-none')
      }
      function tableView() {
        btnChart.classList.remove('d-none')
        btnTable.classList.add('d-none')
        table.classList.remove('d-none')
        ctx.style.display = 'none'
      }
      // change input type form select 
      var searchKey = document.getElementById('searchKey')
      var filterByDate = document.getElementById('filterByDate')
      window.onload = function (e) {
        filterByDate.readOnly = true
        if (e.target.value === 'defaultVal') {
        }
        if (searchKey.value === 'date') {
          filterByDate.type = 'date'
        }
        if (searchKey.value === 'week') {
          filterByDate.type = 'week'
        }
        if (searchKey.value === 'month') {
          filterByDate.type = 'month'
        }
        if (searchKey.value === 'year') {
          filterByDate.type = 'year'
        }
      }
      searchKey.addEventListener('change', function handleSearchChange(e) {
        filterByDate.readOnly = false
        if (e.target.value === 'date') {
          filterByDate.type = 'date'
        } else if (e.target.value === 'week') {
          filterByDate.type = 'week'
        } else if (e.target.value === 'month') {
          filterByDate.type = 'month'
        } else if (e.target.value === 'year') {
          filterByDate.type = 'date'
          filterByDate.pattern = 'yy'
        }
      })
    </script>
  </body>

</html>