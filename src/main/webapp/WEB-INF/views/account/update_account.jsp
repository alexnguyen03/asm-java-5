<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	type="text/css" />
</head>
<body>
	<div class="menu-wrapper">
		<div class="container-fluid bg-light mb-5">
			<div class="row ms-5">
				<div class="col-lg-12 p-3 fw-bold fs-5 text-dark">
					<a href="/"
						class="text-decoration-none ms-5 text-dark text-center font-weight-bold">TRANG
						CHỦ /</a> <span>THÔNG TIN TÀI KHOẢN</span>
				</div>
			</div>
		</div>
	</div>

	<div class="account-information-wrapper">
		<div class="container mt-5">
			<div class="row">
				<div class="col-lg-10  m-auto">
					<div class="alert alert-success alert-dismissible fade show"
						role="alert">
						<strong>Cập nhật thông tin tài khoản thành công!</strong>
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="container mb-5">
						<div class="row">
							<div class="col-lg-3 border-right">
								<img
									src="${pageContext.request.contextPath }/img/update-account/user.png"
									class="border border-2 bg-light p-1 border-success rounded-circle w-100">
								<p class="text-center mt-2 font-weight-normal">Thay Đổi Hình
									Ảnh</p>
								<div class="input-group">
									<div class="custom-file">
										<label class="custom-file-label" for="image">Chọn
											Ảnh</label> <input type="file" class="custom-file-input"
											id="image">
									</div>
								</div>
							</div>
							<div class="col-lg-9">
								<form action="">
									<div class="container">
										<div class="row">
											<div class="col-lg-6">
												<div class="form-group">
													<label for="username" class="form-label fw-bold">Tên
														Đăng Nhập</label> <input type="text" class="form-control bg-light"
														id="username" disabled>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="form-group">
													<label for="password" class="form-label fw-bold">Mật
														Khẩu</label> <input type="password" class="form-control"
														id="password">
												</div>
											</div>
											<div class="col-lg-6 mt-3">
												<div class="form-group">
													<label for="fullname" class="form-label fw-bold">Họ
														Và Tên</label> <input type="text" class="form-control"
														id="fullname">
												</div>
											</div>
											<div class="col-lg-6 mt-3">
												<div class="form-group">
													<label for="email" class="form-label fw-bold">Email</label>
													<input type="email" class="form-control" id="email">
												</div>
											</div>
										</div>
										<button type="submit"
											class="btn btn-primary w-100 mt-2 font-weight-bold">Cập
											nhật thông tin</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
</body>
</html>