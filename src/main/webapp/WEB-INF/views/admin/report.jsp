<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                <!-- <div class="mb-3">
                    <div class="app-content-actions-wrapper">
                        <form action="/admin/report/report-top-ten"
                              class=" d-flex justify-content-betwwen"
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
                            <button class="btn btn-primary ml-2">Xem thống kê</button>
                        </form>
                        <a href="/admin/report/report-top-ten"
                           class="ml-3 btn btn-sm btn-outline-primary "
                           title="Làm mới">Làm mới <i class="fa fa-refresh"
                               aria-hidden="true"></i></a>
                    </div>
                </div> -->
                <div class="mb-3">
                    <c:if test="${msg != null}">
                        <div class="alert alert-warning">${msg}</div>
                    </c:if>
                </div>
                <div class=""
                     id="table">
                    <!-- <c:if test="${searchKey != null}">
                        <div class="alert alert-info w-50">Bạn đang xem thống kê trong ${searchKey != 'date' ?(
                            searchKey != 'month'
                            ?
                            (searchKey != 'week' ? (searchKey == 'year' ? 'Năm' : '') : 'Tuần'): 'Tháng'): 'Ngày' }
                            ${searchVal}
                        </div>
                    </c:if> -->
                    <!-- <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên sản phẩm ${searchKey}</th>
                                <th scope="col">Số lượng bán</th>
                                <th scope="col">Danh mục</th>
                                <th scope="col">Tổng doanh thu</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${reports.size() == 0 }">
                                <tr>
                                    <td colspan="5">
                                        <div class="alert alert-info text-center">Không có thông tin cần thống kê</div>
                                    </td>
                                </tr>
                            </c:if>
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
                    </table> -->
                    <div class="row mt-5">
                        <div class="col-6">
                            <div class="card shadow border-0"
                                 style="height: 300px;">
                                <div class="card-body flex-column d-flex mx-auto justify-content-center">
                                    <h2 class="card-title">
                                        Tổng doanh thu ngày
                                        <%
								java.text.DateFormat df = new java.text.SimpleDateFormat("dd-MM-yyyy");
								%>
                                        <%=df.format(new java.util.Date())%>
                                    </h2>
                                    <h1 class="card-text">
                                        <fmt:formatNumber type="number"
                                                          maxFractionDigits="3"
                                                          value="${ reportByDate != null ? 
                                       reportByDate : 0 }" />
                                        <sup>đ</sup>
                                    </h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card shadow border-0"
                                 style="height: 300px;">
                                <div class="card-body flex-column d-flex mx-auto justify-content-center">
                                    <h2 class="card-title">
                                        Tổng doanh thu tháng
                                        <%
								java.text.DateFormat dfd = new java.text.SimpleDateFormat("MM-yyyy");
								%>
                                        <%=dfd.format(new java.util.Date())%>
                                    </h2>
                                    <h1 class="card-text">
                                        <fmt:formatNumber type="number"
                                                          maxFractionDigits="3"
                                                          value="${ reportByMonth != null ? reportByMonth : 0 }" />
                                        <sup>đ</sup>
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="col-12">
                            <div class="card shadow border-0"
                                 style="height: 300px;">
                                <div class="card-body flex-column d-flex mx-auto justify-content-center">
                                    <h2 class="card-title">Tổng doanh thu từ trước đến nay</h2>
                                    <h1 class="card-text">
                                        <fmt:formatNumber type="number"
                                                          maxFractionDigits="3"
                                                          value="${ reportByYear != null ? reportByYear : 0 }" />
                                        <sup>đ</sup>
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="w-75 d-flex justify-content-center">
                    <canvas id="myChart"></canvas>
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
            // change input type form select 
            var searchKey = document.getElementById('searchKey')
            var filterByDate = document.getElementById('filterByDate')
            window.onload = function (e) {
                if (searchKey.value === 'defaultVal') {
                    filterByDate.readOnly = true
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