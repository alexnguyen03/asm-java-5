<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>3MEMS - Update Profile</title>
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath }/css/bootstrap.min.css"
			  type="text/css" />
		<style>
			body {
				background: url(${pageContext.request.contextPath}/img/login/6764552_3433839.jpg) center/cover no-repeat fixed;
				width: 100wh;
				height: 100vh;
				overflow: hidden;
			}

			.glassmorphism {
				background: linear-gradient(135deg, rgba(255, 255, 255, 0.1),
						rgba(255, 255, 255, 0));
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

	<body>
		<div class="account-information-wrapper">
			<div class="container mt-5 glassmorphism">
				<div class="row  ">
					<div class="col-lg-10  m-auto position-relative">
						<h2 class="font-weight-bold text-center mt-3">CẬP NHẬT TÀI KHOẢN</h2>
						<form action="/account/update"
							  method="post"
							  enctype="multipart/form-data">
							<div class="container mb-5 mt-5">
								<div class="row">
									<div class="col-lg-3 border-right">
										<img id="previewImage"
											 src="${pageContext.request.contextPath }/img/user-management/${ account.photo }"
											 style="height: 200px;"
											 class="border border-2 bg-light p-1 border-success rounded-circle w-100">
										<p class="text-center mt-2 font-weight-normal">
											Thay Đổi Hình Ảnh</p>
										<div class="input-group">
											<div class="custom-file">
												<input type="file"
													   class="custom-file-input"
													   id="image"
													   name="photo_file"
													   onchange="previewImage(event)"> <label class="custom-file-label"
													   for="image">Chọn Ảnh</label>
											</div>
										</div>
									</div>
									<div class="col-lg-9">
										<div class="container">
											<div class="row">
												<div class="col-lg-6">
													<div class="form-group">
														<label for="username"
															   class="form-label fw-bold">Tên
															Đăng Nhập</label> <input type="text"
															   class="form-control bg-light"
															   id="username"
															   readonly
															   value="${ account.username }"
															   name="username">
													</div>
												</div>
												<div class="col-lg-6">
													<div class="form-group">
														<label for="password"
															   class="form-label fw-bold">Mật
															Khẩu</label> <input type="password"
															   class="form-control"
															   id="password"
															   name="password"
															   value="${ account.password }">
													</div>
												</div>
												<div class="col-lg-6 mt-3">
													<div class="form-group">
														<label for="fullname"
															   class="form-label fw-bold">Họ
															Và Tên</label> <input type="text"
															   class="form-control"
															   id="fullname"
															   name="fullname"
															   value="${ account.fullname }">
													</div>
												</div>
												<div class="col-lg-6 mt-3">
													<div class="form-group">
														<label for="email"
															   class="form-label fw-bold">Email</label>
														<input type="email"
															   class="form-control"
															   id="email"
															   value="${ account.email }"
															   name="email">
													</div>
												</div>
												<input hidden
													   type="text"
													   name="photo"
													   value="${ account.photo }">
											</div>
											<button type="submit"
													class="btn btn-primary w-100 mt-2 font-weight-bold">Cập
												nhật thông tin</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

			<script type="text/javascript">
				function previewImage(event) {
					// Lấy đối tượng input
					var input = event.target;
					// Kiểm tra xem tệp tin đã được chọn
					if (input.files && input.files[0]) {
						// Tạo đối tượng đọc tệp tin
						var reader = new FileReader();
						// Xử lý khi đọc xong tệp tin
						reader.onload = function (e) {
							// Hiển thị ảnh lên trên thẻ img
							document.getElementById("previewImage").setAttribute(
								"src", e.target.result);
						}
						// Đọc tệp tin
						reader.readAsDataURL(input.files[0]);
					}
				}
			</script>
			<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
			<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	</body>

</html>