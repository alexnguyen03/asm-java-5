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
    <title>Home</title>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />

    <style>
      body {
        background: url(img/chang-password/11852427_4858794.jpg) center / cover
          no-repeat fixed;
        width: 100wh;
        height: 100vh;
        overflow: hidden;
      }
      .glassmorphism {
        max-width: 25rem;
        background: linear-gradient(
          135deg,
          rgba(255, 255, 255, 0.1),
          rgba(255, 255, 255, 0)
        );
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
      }

      .login__header__fixed {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
      }
    </style>
  </head>
  <body class="d-flex justify-content-center align-items-center">
    <header class="container login__header__fixed">
      <nav class="navbar navbar-expand-sm container">
        <a class="navbar-brand text-dark font-weight-bold" href="#">3MEMS</a>
        <button
          class="navbar-toggler d-lg-none"
          type="button"
          data-toggle="collapse"
          data-target="#collapsibleNavId"
          aria-controls="collapsibleNavId"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0 text-dark">
            <a href="#" class="btn site-btn ml-3">Tiếp tục lướt web</a>
          </ul>
        </div>
      </nav>
    </header>

    <div class="container glassmorphism">
      <div class="card text-center bg-transparent border-0">
        <div class="card-body">
          <h3 class="card-title my-3 font-weight-bold">Đổi mật khẩu</h3>
          <h6 class="card-text font-italic">
            Thay đổi mật khẩu của bạn một cách dễ dàng.
          </h6>
          <form action="#" class="mt-5">
            <div class="form-group">
              <input
                type="text"
                class="form-control"
                name="username"
                id="username"
                aria-describedby="helpId"
                placeholder="Tên đăng nhập"
              />
              <small id="helpId" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
              <input
                type="password"
                class="form-control"
                name="username"
                id="username"
                aria-describedby="helpId"
                placeholder="Mật khẩu"
              />
              <small id="helpId" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
              <input
                type="password"
                class="form-control"
                name="newpass"
                id="newpass"
                aria-describedby="helpId"
                placeholder="Mật khẩu mới"
              />
              <small id="helpId" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
              <input
                type="password"
                class="form-control"
                name="confirm"
                id="confirm"
                aria-describedby="helpId"
                placeholder="Xác nhận mật khẩu"
              />
              <small id="helpId" class="form-text text-muted"></small>
            </div>
            <p class="text-left">
              Không thể đổi mật khẩu?
              <a href="#" class="font-weight-bold" style="color: #0c2b4b"
                >Lấy lại mật khẩu</a
              >
            </p>
            <button
              class="btn site-btn my-4 w-100 text-white font-weight-bold p-3"
              type="submit"
            >
              Đổi mật khẩu
            </button>
          </form>
        </div>
      </div>
    </div>

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
