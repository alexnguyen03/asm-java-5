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
  </head>

  <body>
    <div class="app-container">
      <jsp:include page="sidebar.jsp" />
      <div class="app-content">
        <jsp:include page="top-content.jsp" />
        <div class="container-fluid pt-5">
          <div class="card-deck mb-3">
            <div class="card">
              <div class="card-body  text-center d-flex flex-column justify-content-center align-items-center">
                <h2 class="card-title">ĐƠN CHỜ XỬ LÝ</h2>
                <h4 class="card-text">32 đơn</h4><a href="#"
                   class="card-link btn btn-primary w-50">
                  Xử lý ngay</a>
              </div>
            </div>
            <div class="card">
              <div class="card-body text-center d-flex flex-column justify-content-center">
                <h2 class="card-title">ĐƠN ĐƯỢC ĐẶT</h2>
                <h4 class="card-text">324.000 đơn </h4>
              </div>
            </div>
            <div class="card">
              <div class="card-body  text-center d-flex flex-column justify-content-center">
                <h2 class="card-title">DOANH THU</h2>
                <h4 class="card-text">300.220.000<sup>đ</sup></h4>
              </div>
            </div>
          </div>
          <div class="card-deck mb-3">
            <div class="card">
              <div class="card-body  text-center d-flex flex-column justify-content-center">
                <h2 class="card-title">SẢN PHẨM BÁN ĐƯỢC</h2>
                <h4 class="card-text">454.000 sản phẩm </h4>
              </div>
            </div>
            <div class="card">
              <div class="card-body  text-center d-flex flex-column justify-content-center">
                <h2 class="card-title">SẢN PHẨM CÒN LẠI</h2>
                <h4 class="card-text">233 sản phẩm </h4>
              </div>
            </div>
            <div class="card">
              <div class="card-body  text-center d-flex flex-column align-items-center justify-content-center">
                <h2 class="card-title">SẢN PHẨM ĐƯỢC ĐÁNH GIÁ 5 *</h2>
                <a href="#"
                   class="card-link btn btn-primary w-50">Xem ngay</a>
              </div>
            </div>
          </div>
          <div class="card-deck mb-3">
            <div class="card">
              <div class="card-body  text-center d-flex flex-column justify-content-center">
                <h2 class="card-title">SẢN PHẨM BÁN CHẠY NHẤT</h2>
                <h4 class="card-text alert alert-danger">Tai nghe AirPod 3 Pro</h4>
              </div>
            </div>
            <div class="card">
              <div class="card-body  text-center d-flex flex-column justify-content-center">
                <h2 class="card-title">SẢN PHẨM CÓ DOANH THU CAO NHÂT </h2>
                <h4 class="card-text alert alert-dange">Tai nghe AirPod 3 Pro</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    </div>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
  </body>

</html>