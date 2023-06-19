<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script src="https://kit.fontawesome.com/c0f581682c.js"
	crossorigin="anonymous"></script>

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
}

.toast {
	position: absolute;
	top: 0;
	right: 1.5rem;
	transform: translateX(100%);
	z-index: 100;
	top: 3.5rem;
	transition: all 0.5s;
}

.toast.show {
	transform: translateX(0);
}
</style>
</head>

<body>

	<c:if test="${successChangePW == true}">
		<!-- toast msg  -->
		<div class="toast show" role="alert" aria-live="assertive"
			aria-atomic="true" data-delay="3000">
			<div class="toast-header bg-dark">
				<strong class="mr-auto font-weight-bold text-white text-center">
					<i class='bx bxs-right-arrow mr-2'></i> 3MEMS Shop
				</strong>
				<button type="button" class="ml-2 mb-1 close text-white"
					data-dismiss="toast" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body font-weight-bold">
				<p class="m-0 p-0">${messageShop}</p>
			</div>
		</div>
		<!-- toast msg  -->

		<script>
        setTimeout(() => {
          const toast = document.querySelector(".toast");
          toast.classList.remove("show");
        }, 5000);
      </script>
	</c:if>


	<div class="app-container">
		<!-- Sidebar -->
		<jsp:include page="sidebar.jsp" />

		<div class="app-content">
			<!-- Top content -->
			<div class="container-fluid" style="overflow: auto;">
				<h2 class="overview-title font-weight-bold">Chào mừng trở lại,
					${sessionScope.account.fullname}</h2>
				<div class="overview-content mt-4">

					<!-- Top Statistics -->
					<div class="header-top-statistic">
						<div class="row">
							<!-- Item -->
							<div class="col-lg-4 col-sm-6">
								<div class="card">
									<div class="card-body">
										<h5 class="card-title">
											<i class='bx bxs-right-arrow mr-2'></i>Tổng doanh thu
										</h5>
										<h4 class="card-text font-weight-bold">
											<fmt:formatNumber value="${totalRevenue}" type="currency"
												currencySymbol="" />
											<span style="color: #dc3545">đ</span>
										</h4>

									</div>
								</div>
							</div>
							<!-- Item -->
							<div class="col-lg-4 col-sm-6">
								<div class="card">
									<div class="card-body">
										<h5 class="card-title">
											<i class='bx bxs-right-arrow mr-2'></i>Doanh thu tháng
										</h5>
										<h4 class="card-text font-weight-bold">
											<fmt:formatNumber value="${totalRevenueMonthPast}"
												type="currency" currencySymbol="" />
											<span style="color: #dc3545">đ</span>
										</h4>
									</div>
								</div>
							</div>
							<!-- Item -->
							<div class="col-lg-4 col-sm-6">
								<div class="card">
									<div class="card-body">
										<h5 class="card-title">
											<i class='bx bxs-right-arrow mr-2'></i>Đơn chờ xử lí
										</h5>
										<h4 class="card-text font-weight-bold">${orderXLCount}</h4>
										<span class="fond-weight-bold" style="color: #dc3545"><a
											class="btn btn-outline-dark" href="/admin/order?status=C">Xem
												ngay</a> </span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--content title -->
					<div class="main-content mt-4">
						<div class="row">
							<!-- Item -->
							<div class="col-5">
								<div class="card-full-height">
									<div class="card-body">
										<h5 class="card-title font-weight-bold">
											<i class='bx bxs-right-arrow mr-2'></i> Sản phẩm trong ngày
										</h5>
										<div class="row">
											<div class="col-6 d-flex flex-column">
												<h6>
													<span style="color: #dc3545"><i
														class='bx bx-package mr-2'></i></span>Sản phẩm được lên kệ
												</h6>
												<h3 class="font-weight-bold">${productNewsetToday}</h3>

											</div>
											<div class="col-6 d-flex flex-column">
												<h6>
													<span style="color: #dc3545"><i
														class='bx bx-package mr-2'></i></span>Sản phẩm bán được
												</h6>
												<h3 class="font-weight-bold">${totalProductsSoldToday}</h3>
											</div>
										</div>
									</div>

									<div class="card mt-3 h-75">
										<div class="card-body">
											<h5 class="card-title font-weight-bold">
												<i class='bx bxs-right-arrow mr-2'></i>Giao dịch
											</h5>
											<div class="row">
												<c:forEach var="l" items="${top10SoldToday}">
													Item
													<div class="col-12">
														<div
															class="d-flex justify-content-between align-items-center flex-wrap">
															<div
																class="p-2 d-flex justify-content-center align-items-center"
																style="background: #dc3545;; width: 35px; height: 35px; border-radius: 50%;">
																<i class='bx bx-headphone' style="color: #fff;"></i>
															</div>
															<div class="font-weight-bold d-flex flex-column">
																<h6 class="text-truncate" style="max-width: 250px">${l.product.name}</h6>
																<p class="text-muted">${l.product.createDate}</p>
															</div>
															<div class="font-weight-bold d-flex flex-column">
																<h6 style="color: #dc3545">${l.order.status}</h6>
																<p class="text-muted">${l.order.id}</p>
															</div>
														</div>
													</div>
												</c:forEach>

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
										</div>
									</div>
								</div>
							</div>

							<!-- Item -->
							<div class="col-7">
								<div class="card h-100">
									<div class="card-body">
										<h5 class="card-title font-weight-bold">
											<i class='bx bxs-right-arrow mr-2'></i> Biểu đồ
										</h5>
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
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>

</html>