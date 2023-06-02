<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible"
			  content="IE=edge">
		<meta name="viewport"
			  content="width=device-width, initial-scale=1.0">
		<title>Dashboard</title>
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/style-admin.css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/bootstrap.min.css"
			  type="text/css">
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath }/css/font-awesome.min.css"
			  type="text/css">
		<script src="https://kit.fontawesome.com/c0f581682c.js"
				crossorigin="anonymous"></script>
	</head>

	<body>
		<!-- 	demo -->
		<div class="app-container">
			<!-- Sidebar -->
			<jsp:include page="sidebar.jsp" />

			<div class="app-content">
				<!-- Top content -->
        		<jsp:include page="top-content.jsp" />
				<div class="app-content-actions">
					<div class="app-content-actions-wrapper">
						<div class="filter-button-wrapper">
							<button class="action-button filter jsFilter">
								<span>Filter</span>
								<svg xmlns="http://www.w3.org/2000/svg"
									 width="16"
									 height="16"
									 viewBox="0 0 24 24"
									 fill="none"
									 stroke="currentColor"
									 stroke-width="2"
									 stroke-linecap="round"
									 stroke-linejoin="round"
									 class="feather feather-filter">
									<polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3" />
								</svg>
							</button>
							<div class="filter-menu">
								<label>Category</label> <select>
									<option>All Categories</option>
									<option>Furniture</option>
									<option>Decoration</option>
									<option>Kitchen</option>
									<option>Bathroom</option>
								</select> <label>Status</label> <select>
									<option>All Status</option>
									<option>Active</option>
									<option>Disabled</option>
								</select>
								<div class="filter-menu-buttons">
									<button class="filter-button reset">Reset</button>
									<button class="filter-button apply">Apply</button>
								</div>
							</div>
						</div>
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
				<div class="products-area-wrapper tableView">
					<div class="products-header">
						<div class="product-cell image">
							STT
							<button class="sort-button">
								<svg xmlns="http://www.w3.org/2000/svg"
									 width="16"
									 height="16"
									 viewBox="0 0 512 512">
									<path fill="currentColor"
										  d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
								</svg>
							</button>
						</div>
						<div class="product-cell status-cell">
							Sản phẩm
							<button class="sort-button">
								<svg xmlns="http://www.w3.org/2000/svg"
									 width="16"
									 height="16"
									 viewBox="0 0 512 512">
									<path fill="currentColor"
										  d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
								</svg>
							</button>
						</div>
						<div class="product-cell delete">Thao tác</div>
					</div>
					<div class="products-row">
						<button class="cell-more-button">
							<svg xmlns="http://www.w3.org/2000/svg"
								 width="18"
								 height="18"
								 viewBox="0 0 24 24"
								 fill="none"
								 stroke="currentColor"
								 stroke-width="2"
								 stroke-linecap="round"
								 stroke-linejoin="round"
								 class="feather feather-more-vertical">
								<circle cx="12"
										cy="12"
										r="1" />
								<circle cx="12"
										cy="5"
										r="1" />
								<circle cx="12"
										cy="19"
										r="1" />
							</svg>
						</button>
						<div class="product-cell image">
							<span>1</span>
						</div>
						<div class="product-cell status-cell">
							<span>Tai nghe Bluetooth Elite 85h</span>
						</div>
						<div class="product-cell view">
							<span class="cell-label">Xem:</span>
							<button type="button"
									class="btn btn-primary border-0"
									data-toggle="modal"
									data-target="#myModal"
									style="width: 80px;">Xem</button>
						</div>
					</div>
					<div class="products-row">
						<button class="cell-more-button">
							<svg xmlns="http://www.w3.org/2000/svg"
								 width="18"
								 height="18"
								 viewBox="0 0 24 24"
								 fill="none"
								 stroke="currentColor"
								 stroke-width="2"
								 stroke-linecap="round"
								 stroke-linejoin="round"
								 class="feather feather-more-vertical">
								<circle cx="12"
										cy="12"
										r="1" />
								<circle cx="12"
										cy="5"
										r="1" />
								<circle cx="12"
										cy="19"
										r="1" />
							</svg>
						</button>
						<div class="product-cell image">
							<span>2</span>
						</div>
						<div class="product-cell status-cell">
							<span>Tai nghe Bluetooth Sony WF-1000XM3</span>
						</div>
						<div class="product-cell view">
							<span class="cell-label">Xem:</span>
							<button type="button"
									class="btn btn-primary border-0"
									data-toggle="modal"
									data-target="#myModal"
									style="width: 80px;">Xem</button>
						</div>
					</div>
				</div>

		</div>

		<!-- The Modal -->
		<div class="modal fade"
			 id="myModal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Chi Tiết Đánh Giá</h4>
						<button type="button"
								class="close"
								data-dismiss="modal">&times;</button>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<table class="table font-weight-bold">
							<thead class="bg-dark text-white text-center">
								<tr>
									<th scope="col"
										class="p-0">STT</th>
									<th scope="col"
										class="p-0">Tên Khách Hàng</th>
									<th scope="col"
										class="p-0">Đánh Giá</th>
									<th scope="col"
										class="p-0">Bình Luận</th>
									<th scope="col"
										class="p-0">Thời Gian</th>
									<th scope="col"
										class="p-0">Thao Tác</th>
								</tr>
							</thead>
							<tbody style="font-size: 15px;"
								   class="text-center">
								<tr class="align-middle">
									<th class="pt-4">1</th>
									<td class="pt-4">
										<p>Lê Minh Dương</p>
									</td>
									<td class="pt-4"><i class="fa fa-star"
										   aria-hidden="true"
										   style="color: #e1c32d;"></i> <i class="fa fa-star"
										   aria-hidden="true"
										   style="color: #e1c32d;"></i> <i class="fa fa-star"
										   aria-hidden="true"
										   style="color: #e1c32d;"></i>
									</td>
									<td class="pt-4">Sản phẩm chât lượng!!!</td>
									<td class="pt-4">27/02/2023</td>
									<td class="pt-4">
										<h4>
											<button class="btn btn-danger font-weight-bold"
													data-toggle="modal"
													data-target="#deleteCategoryModal">
												<i class="fa fa-trash"
												   aria-hidden="true"></i></button>
										</h4>
									</td>
								</tr>
								<tr class="align-middle">
									<th class="pt-4">2</th>
									<td class="pt-4">
										<p>Nguyễn Thị Tiên</p>
									</td>
									<td class="pt-4"><i class="fa fa-star"
										   aria-hidden="true"
										   style="color: #e1c32d;"></i> <i class="fa fa-star"
										   aria-hidden="true"
										   style="color: #e1c32d;"></i> <i class="fa fa-star"
										   aria-hidden="true"
										   style="color: #e1c32d;"></i>
									</td>
									<td class="pt-4">Rẻ và bền mọi người nên mua!!!</td>
									<td class="pt-4">10/09/2023</td>
									<td class="pt-4">
										<h4>
											<button class="btn btn-danger font-weight-bold"
													data-toggle="modal"
													data-target="#deleteCategoryModal">
												<i class="fa fa-trash"
												   aria-hidden="true"></i></button>
										</h4>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button"
								class="btn btn-secondary"
								data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade"
			 id="deleteCategoryModal"
			 tabindex="-1"
			 role="dialog"
			 aria-labelledby="deleteCategoryModalLabel"
			 aria-hidden="true">
			<div class="modal-dialog"
				 role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title container-fluid font-weight-bold"
							 id="addProductModalLabel"> <i class="fa-regular fa-trash-can mr-3"></i> Bạn có chắc muốn
							xóa
							đánh giá ? <br />
							<!-- 					1 - <span class="text-danger">Tai nghe không dây</span> </h5-> -->
							<!-- 					<button type="button" class="close" data-dismiss="modal" -->
							<!-- 						aria-label="Close"> -->
							<!-- 						<span aria-hidden="true">&times;</span> -->
						</h5>
					</div>
					<div class="modal-body">
						<div class="container d-flex justify-content-center">
							<img src="https://inkythuatso.com/uploads/thumbnails/800/2023/01/8-anh-meme-meo-gio-tay-inkythuatso-17-15-30-30.jpg"
								 class="img-fluid m-auto"
								 style="height: 400px; width: 100%" />
						</div>
					</div>
					<div class="modal-footer d-flex justify-content-end">
						<button class="btn btn-danger ml-3">Xóa</button>
					</div>
				</div>
			</div>
		</div>

		<script src="${pageContext.request.contextPath}/js/script.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.nice-select.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.nicescroll.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.slicknav.js"></script>
		<script src="${pageContext.request.contextPath }/js/mixitup.min.js"></script>

	</body>
</html>