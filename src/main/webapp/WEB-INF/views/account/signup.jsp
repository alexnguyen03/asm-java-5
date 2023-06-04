<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

      <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible"
                  content="IE=edge">
            <meta name="viewport"
                  content="width=device-width, initial-scale=1.0">
            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
                  rel="stylesheet" />
            <!-- Css Styles -->
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/bootstrap.min.css"
                  type="text/css" />
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/font-awesome.min.css"
                  type="text/css" />
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/elegant-icons.css"
                  type="text/css" />
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/magnific-popup.css"
                  type="text/css" />
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/nice-select.css"
                  type="text/css" />
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
                  type="text/css" />
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/slicknav.min.css"
                  type="text/css" />
            <link rel="stylesheet"
                  href="${pageContext.request.contextPath}/css/style.css"
                  type="text/css" />
            <title>3MEMS | Sign in </title>
            <style>
                  body {
                        position: relative;

                  }

                  .img-fluid {
                        width: 100%;
                        height: 100%;
                        overflow: hidden;
                  }

                  .container {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                  }

                  .row {

                        background-color: rgba(255, 255, 255, 0.266);
                  }
            </style>
      </head>

      <body class="">
            <img src="${pageContext.request.contextPath}/img/signup/bg-signup.jpg"
                 alt=""
                 class="img-fluid">
            <div class="container">
                  <div class="row py-5 mt-5 align-items-center shadow p-5 rounded ">
                        <!-- For Demo Purpose -->
                        <div class="col-md-6 pr-lg-6 mb-5 mb-md-0">
                              <img src="https://bootstrapious.com/i/snippets/sn-registeration/illustration.svg"
                                   alt=""
                                   class="img-fluid mb-3 d-none d-md-block">
                              <h1 class="text-center pt-3">Tạo tài khoản</h1>

                        </div>

                        <!-- Registeration Form -->
                        <div class="col-md-6 col-lg-6 ml-auto my-3">
                              <form action="#">
                                    <div class="row  py-3 bg rounded ">
                                          <div class="input-group col-lg-12 my-4">
                                                <div class="input-group-prepend">
                                                      <span
                                                            class="input-group-text bg-white px-4 border-md border-right-0">
                                                            <i class="fa fa-user text-muted"></i>
                                                      </span>
                                                </div>
                                                <input id="username"
                                                       type="text"
                                                       name="username"
                                                       placeholder="Tên đăng nhập"
                                                       class="form-control bg-white border-left-0 border-md">
                                          </div>
                                          <div class="input-group col-lg-12 mb-4">
                                                <div class="input-group-prepend">
                                                      <span
                                                            class="input-group-text bg-white px-4 border-md border-right-0">
                                                            <i class="fa fa-user text-muted"></i>
                                                      </span>
                                                </div>
                                                <input id="fullname"
                                                       type="text"
                                                       name="fullname"
                                                       placeholder="Họ và tên"
                                                       class="form-control bg-white border-left-0 border-md">
                                          </div>


                                          <!-- Email Address -->
                                          <div class="input-group col-lg-12 mb-4">
                                                <div class="input-group-prepend">
                                                      <span
                                                            class="input-group-text bg-white px-4 border-md border-right-0">
                                                            <i class="fa fa-envelope text-muted"></i>
                                                      </span>
                                                </div>
                                                <input id="email"
                                                       type="email"
                                                       name="email"
                                                       placeholder="Email"
                                                       class="form-control bg-white border-left-0 border-md">
                                          </div>



                                          <!-- Password -->
                                          <div class="input-group col-lg-12 mb-4">
                                                <div class="input-group-prepend">
                                                      <span
                                                            class="input-group-text bg-white px-4 border-md border-right-0">
                                                            <i class="fa fa-lock text-muted"></i>
                                                      </span>
                                                </div>
                                                <input id="password"
                                                       type="password"
                                                       name="password"
                                                       placeholder="Mật khẩu"
                                                       class="form-control bg-white border-left-0 border-md">
                                          </div>

                                          <!-- Password Confirmation -->
                                          <div class="input-group col-lg-12 mb-4">
                                                <div class="input-group-prepend">
                                                      <span
                                                            class="input-group-text bg-white px-4 border-md border-right-0">
                                                            <i class="fa fa-lock text-muted"></i>
                                                      </span>
                                                </div>
                                                <input id="passwordConfirmation"
                                                       type="text"
                                                       name="passwordConfirmation"
                                                       placeholder="Xác nhận mật khẩu     "
                                                       class="form-control bg-white border-left-0 border-md">
                                          </div>

                                          <div class="input-group col-lg-12 mb-4">
                                                <div class="custom-file ">
                                                      <input type="file"
                                                             class="custom-file-input"
                                                             id="validatedCustomFile"
                                                             required>
                                                      <label class="custom-file-label"
                                                             for="validatedCustomFile">Chọn ảnh đại diện</label>
                                                      <div class="invalid-feedback">Vui lòng chọn ảnh đại diện
                                                      </div>
                                                </div>
                                          </div>

                                          <!-- Submit Button -->
                                          <div class="form-group col-lg-12 mx-auto mb-0">
                                                <a href="/account/verify"
                                                   class="btn btn-primary btn-block py-2">
                                                      <span class="font-weight-bold">Nhận mã xác nhận</span>
                                                </a>
                                          </div>

                                          <!-- Divider Text -->
                                          <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                                                <div class="border-bottom w-100 ml-5"></div>
                                                <span
                                                      class="px-2 small text-muted font-weight-bold text-muted">Hoặc</span>
                                                <div class="border-bottom w-100 mr-5"></div>
                                          </div>

                                          <!-- Already Registered -->
                                          <div class="text-center w-100">
                                                <p class="text-muted font-weight-bold">Bạn đã có tài khoản ? <a
                                                         href="/account/login"
                                                         class="text-primary ml-2">Đăng nhập</a></p>
                                          </div>

                                    </div>
                              </form>
                        </div>
                  </div>
            </div>
            <!-- Js Plugins -->
            <script src="js/jquery-3.3.1.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.nice-select.min.js"></script>
            <script src="js/jquery.nicescroll.min.js"></script>
            <script src="js/jquery.magnific-popup.min.js"></script>
            <script src="js/jquery.countdown.min.js"></script>
            <script src="js/jquery.slicknav.js"></script>
            <script src="js/mixitup.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
      </body>

</html>