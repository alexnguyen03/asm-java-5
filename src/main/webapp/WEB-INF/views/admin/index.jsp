<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dashboard</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style-admin.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	type="text/css" />

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style>
.card {
	height: 151px;
	background: #F7f7f7;
	outline: none;
	border: none;
	border-radius: 8px;
	background: #F7f7f7;
}

.card-full-height {
	background: #F7f7f7;
	outline: none;
	border: none;
	border-radius: 8px;
	background: #F7f7f7;
	width: 100%;
}
</style>
</head>
<body>
	<div class="app-container">
		<!-- Sidebar -->
		<jsp:include page="sidebar.jsp" />

		<div class="app-content">
			<!-- Top content -->
			<div class="container-fluid" style="overflow: auto;">
				<h4 class="overview-title font-weight-bold">OVERVIEW</h4>
				<div class="overview-content mt-4">
					<!-- Top Statistics -->
					<div class="header-top-statistic">
						<div class="row">
							<!-- Item -->
							<div class="col-lg-3 col-sm-6">
								<div class="card">
									<div class="card-body">
										<h6 class="card-title">Cập nhật</h6>
										<h5 class="card-text font-weight-bold">
											Tỉ lệ số lượng sản phẩm bán được tăng <span
												style="color: #dc3545">5%</span> <span>trong 1 tuần.</span>
										</h5>
									</div>
								</div>
							</div>
							<!-- Item -->
							<div class="col-lg-3 col-sm-6">
								<div class="card">
									<div class="card-body">
										<h6 class="card-title">Doanh thu tuần</h6>
										<h4 class="card-text font-weight-bold">5.0 M</h4>
										<span class="fond-weight-bold" style="color: #dc3545"><i
											class='bx bx-trending-up'></i> 5% </span>với tháng trước
									</div>
								</div>
							</div>
							<!-- Item -->
							<div class="col-lg-3 col-sm-6">
								<div class="card">
									<div class="card-body">
										<h6 class="card-title">Tuần này bán được</h6>
										<h4 class="card-text font-weight-bold">1.0 M</h4>
										<span class="fond-weight-bold" style="color: #dc3545"><i
											class='bx bx-trending-up'></i> 71% </span> đích đến.
									</div>
								</div>
							</div>
							<!-- Item -->
							<div class="col-lg-3 col-sm-6">
								<div class="card">
									<div class="card-body">
										<h6 class="card-title">Số người ghé xem trang</h6>
										<h4 class="card-text font-weight-bold">423</h4>
										<span class="fond-weight-bold" style="color: #dc3545"><i
											class='bx bx-trending-up'></i> 22% </span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="main-content mt-3">
						<div class="row">
							<!-- Item -->
							<div class="col-lg-4">
								<div class="card-full-height">
									<div class="card-body">
										<h4 class="card-title font-weight-bold">Sản phẩm</h4>
										<div class="row">
											<div class="col-6 d-flex flex-column">
												<div>
													<span style="color: #dc3545"><i
														class='bx bx-package mr-2'></i></span>Sản phẩm ra mắt
												</div>
												<h3 class="font-weight-bold">25</h3>
												<div>
													<span class="fond-weight-bold" style="color: #dc3545"><i
														class='bx bx-trending-up'></i> avg. 5% </span> sản phẩm được thêm
												</div>
											</div>
											<div class="col-6 d-flex flex-column">
												<div>
													<span style="color: #dc3545"><i
														class='bx bx-package mr-2'></i></span>Sản phẩm bán được
												</div>
												<h3 class="font-weight-bold">10</h3>
												<div>
													<span class="fond-weight-bold" style="color: #dc3545"><i
														class='bx bx-trending-up'></i> avg. 15% </span> tháng trước
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="card mt-3 h-75">
									<div class="card-body">
										<h4 class="card-title font-weight-bold">Giao dịch</h4>
										<div class="row">
											<!-- Item -->
											<div class="col-12">
												<div
													class="d-flex justify-content-between align-items-center flex-wrap">
													<div
														class="p-2 d-flex justify-content-center align-items-center"
														style="background: #dc3545;; width: 35px; height: 35px; border-radius: 50%;">
														<i class='bx bx-headphone' style="color: #fff;"></i>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6>Apple EarPod v2.0</h6>
														<p class="text-muted">Jul 17th 2023 - 1:53PM</p>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6 style="color: #dc3545">Hoàn thành</h6>
														<p class="text-muted">OWFEGP100024</p>
													</div>
												</div>
											</div>
											<!-- Item -->
											<div class="col-12">
												<div
													class="d-flex justify-content-between align-items-center flex-wrap">
													<div
														class="p-2 d-flex justify-content-center align-items-center"
														style="background: #dc3545;; width: 35px; height: 35px; border-radius: 50%;">
														<i class='bx bx-headphone' style="color: #fff;"></i>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6>Tai nghe EF0126 ...</h6>
														<p class="text-muted">Jul 17th 2023 - 12:53PM</p>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6 style="color: #dc3545">Đang giao</h6>
														<p class="text-muted">OWFEGP100020</p>
													</div>
												</div>
											</div>
											<!-- Item -->
											<div class="col-12">
												<div
													class="d-flex justify-content-between align-items-center flex-wrap">
													<div
														class="p-2 d-flex justify-content-center align-items-center"
														style="background: #dc3545;; width: 35px; height: 35px; border-radius: 50%;">
														<i class='bx bx-headphone' style="color: #fff;"></i>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6>Apple EarPod v5.0</h6>
														<p class="text-muted">Jul 16th 2023 - 11:33PM</p>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6 style="color: #dc3545">Chờ xác nhận</h6>
														<p class="text-muted">OWFEGP100024</p>
													</div>
												</div>
											</div>
											<!-- Item -->
											<div class="col-12">
												<div
													class="d-flex justify-content-between align-items-center flex-wrap">
													<div
														class="p-2 d-flex justify-content-center align-items-center"
														style="background: #dc3545;; width: 35px; height: 35px; border-radius: 50%;">
														<i class='bx bx-battery' style="color: #fff;"></i>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6>Sạc dự phong micro....</h6>
														<p class="text-muted">Jul 16th 2023 - 10:12PM</p>
													</div>
													<div class="font-weight-bold d-flex flex-column">
														<h6 style="color: #dc3545">Đang xử lí</h6>
														<p class="text-muted">OWFEGP100024</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Item -->
							<div class="col-8">
								<div class="card h-100">
									<div class="card-body">
										<h2 class="card-title font-weight-bold">Phân tích số liệu</h2>
										<img
											src="${pageContext.request.contextPath}/img/admin-analystic.jpg"
											width="100%" height="100%" class="img-fluid" alt="" />
									</div>
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
