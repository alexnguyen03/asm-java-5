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
      href="${pageContext.request.contextPath}/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style-admin.css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/font-awesome.min.css"
      type="text/css"
    />
    <style>
      .glassmorphism {
        max-width: 23rem;
        background: linear-gradient(
          135deg,
          rgba(255, 255, 255, 0.1),
          rgba(255, 255, 255, 0)
        );
        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
      }

      .glassmorphismFullWidth {
        max-width: 100%;
        background: linear-gradient(
          135deg,
          rgba(255, 255, 255, 0.1),
          rgba(255, 255, 255, 0)
        );
        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
      }
    </style>
  </head>

  <body>
    <div class="app-container">
      <!-- Sidebar -->
      <jsp:include page="sidebar.jsp" />

      <div class="app-content">
        <!-- Top content -->
        <jsp:include page="top-content.jsp" />
        <div class="container-fluid pt-5">
          <div class="card-deck mb-3">
            <div class="card glassmorphism">
              <div class="card-body text-dark text-center">
                <h4 class="font-weight-bold">ĐƠN CHỜ XỬ LÝ</h4>
                <h5 class="font-weight-normal">32 đơn</h5>
                <a href="#" class="card-link btn btn-dark w-50"> Xử lý ngay</a>
              </div>
            </div>
            <div class="card glassmorphism">
              <div class="card-body text-dark text-center">
                <h4 class="font-weight-bold">ĐƠN ĐƯỢC ĐẶT</h4>
                <h5 class="font-weight-normal">324.000 đơn</h5>
              </div>
            </div>

            <div class="card glassmorphism">
              <div class="card-body text-dark text-center">
                <h4 class="font-weight-bold">DOANH THU</h4>
                <h5 class="font-weight-normal">300.220.000<sup>đ</sup></h5>
              </div>
            </div>
          </div>
          <div class="card-deck mb-3">
            <div class="card glassmorphism">
              <div class="card-body text-dark text-center">
                <h4 class="font-weight-bold">SẢN PHẨM BÁN ĐƯỢC</h4>
                <h5 class="font-weight-normal">454.000 sản phẩm</h5>
              </div>
            </div>
            <div class="card glassmorphism">
              <div class="card-body text-dark text-center">
                <h4 class="font-weight-bold">SẢN PHẨM CÒN LẠI</h4>
                <h5 class="font-weight-normal">233 sản phẩm</h5>
              </div>
            </div>
            <div class="card glassmorphism">
              <div
                class="card-body text-center d-flex flex-column align-items-center justify-content-center"
              >
                <h4 class="font-weight-bold">SẢN PHẨM ĐƯỢC ĐÁNH GIÁ 5 *</h4>
                <a href="#" class="dard-link btn btn-dark w-50">Xem ngay</a>
              </div>
            </div>
          </div>
          <div class="card-deck mb-3">
            <div class="card glassmorphism">
              <div class="card-body text-dark text-center">
                <h4 class="font-weight-bold">SẢN PHẨM BÁN CHẠY NHẤT</h4>
                <h5 class="font-weight-normal alert alert-success">
                  Tai nghe AirPod 3 Pro
                </h5>
              </div>
            </div>
            <div class="card glassmorphismFullWidth">
              <div class="card-body text-dark text-center">
                <h4 class="font-weight-bold">
                  SẢN PHẨM CÓ DOANH THU CAO NHÂT
                </h4>
                <h5 class="font-weight-bold alert alert-dange">
                  Tai nghe AirPod 3 Pro
                </h5>
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
