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
<%-- 		<jsp:include page="sidebar.jsp" /> --%>
		<div class="app-content">
<%-- 			<jsp:include page="top-content.jsp" /> --%>
			<div class="app-content-header">
				<h1 class="app-content-headerText">ĐÁNH GIÁ</h1>
				<button class="mode-switch" title="Switch Theme">
					<svg class="moon" fill="none" stroke="currentColor"
						stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						width="24" height="24" viewBox="0 0 24 24">
              <defs></defs>
              <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z"></path>
            </svg>
				</button>
			</div>
			<div class="app-content-actions">
				<div class="app-content-actions-wrapper mb-3">
					<div class="input-group" style="width: 300px;">
						<div class="input-group-prepend">
							<label class="input-group-text" for="inputGroupSelect01">Tìm
								theo</label>
						</div>
						<select class="custom-select" id="inputGroupSelect01">
							<option selected>Chọn</option>
							<option value="1">Tên sản phẩm</option>
							<option value="2">Số sao</option>
							<option value="2">Tên khách hàng</option>
						</select>
					</div>
					<input class="search-bar ml-2" placeholder="Search..." type="text"
						style="height: 40px;">
					<button type="button" class="btn btn-primary ml-2">Tìm</button>
					<div class="filter-button-wrapper d-none">
						<button class="action-button filter jsFilter">
							<span>Filter</span>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-filter">
                  <polygon
									points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3" />
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
					<button class="action-button list active d-none" title="List View">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							class="feather feather-list">
                <line x1="8" y1="6" x2="21" y2="6" />
                <line x1="8" y1="12" x2="21" y2="12" />
                <line x1="8" y1="18" x2="21" y2="18" />
                <line x1="3" y1="6" x2="3.01" y2="6" />
                <line x1="3" y1="12" x2="3.01" y2="12" />
                <line x1="3" y1="18" x2="3.01" y2="18" />
              </svg>
					</button>
					<button class="action-button grid d-none" title="Grid View">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							class="feather feather-grid">
                <rect x="3" y="3" width="7" height="7" />
                <rect x="14" y="3" width="7" height="7" />
                <rect x="14" y="14" width="7" height="7" />
                <rect x="3" y="14" width="7" height="7" />
              </svg>
					</button>
				</div>

			</div>
			<div class="products-area-wrapper tableView">
				<div class="products-header">
					<div class="product-cell stt">
						STT
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell customer-name">
						Tên khách hàng
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell product-name">
						Tên sản phẩm
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell rating">
						Đánh giá
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell review">
						Bình luận
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell time">
						Thời gian
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
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
					<div class="product-cell delete">Thao tác</div>
				</div>
				<div class="products-row">
					<button class="cell-more-button">
						<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							class="feather feather-more-vertical">
                <circle cx="12" cy="12" r="1" />
                <circle cx="12" cy="5" r="1" />
                <circle cx="12" cy="19" r="1" />
              </svg>
					</button>
					<div class="product-cell image">
						<span>1</span>
					</div>
					<div class="product-cell customer-name">
						<span>Lê Minh Dương</span>
					</div>
					<div class="product-cell product-name">
						<span>Tai nghe Bluetooth Elite 85h</span>
					</div>
					<div class="product-cell rating">
						<span> <i class="fa fa-star" aria-hidden="true"
							style="color: #e1c32d;"></i> <i class="fa fa-star"
							aria-hidden="true" style="color: #e1c32d;"></i> <i
							class="fa fa-star" aria-hidden="true" style="color: #e1c32d;"></i>
						</span>
					</div>
					<div class="product-cell review">
						<span>Sản phẩm chất lượng!!</span>
					</div>
					<div class="product-cell time">
						<span>27/11/2023</span>
					</div>
					<div class="product-cell view">
						<span class="cell-label">Xem:</span>
						<button class="btn btn-danger font-weight-bold"
							data-toggle="modal" data-target="#deleteCategoryModal">
							<i class="fa fa-trash" aria-hidden="true"></i>
						</button>
					</div>
				</div>
				<div class="products-row">
					<button class="cell-more-button">
						<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							class="feather feather-more-vertical">
                <circle cx="12" cy="12" r="1" />
                <circle cx="12" cy="5" r="1" />
                <circle cx="12" cy="19" r="1" />
              </svg>
					</button>
					<div class="product-cell image">
						<span>1</span>
					</div>
					<div class="product-cell customer-name">
						<span>Lê Minh Dương</span>
					</div>
					<div class="product-cell product-name">
						<span>Tai nghe Bluetooth Elite 85h</span>
					</div>
					<div class="product-cell rating">
						<span> <i class="fa fa-star" aria-hidden="true"
							style="color: #e1c32d;"></i> <i class="fa fa-star"
							aria-hidden="true" style="color: #e1c32d;"></i> <i
							class="fa fa-star" aria-hidden="true" style="color: #e1c32d;"></i>
						</span>
					</div>
					<div class="product-cell review">
						<span>Sản phẩm chất lượng!!</span>
					</div>
					<div class="product-cell time">
						<span>27/11/2023</span>
					</div>
					<div class="product-cell view">
						<span class="cell-label">Xem:</span>
						<button class="btn btn-danger font-weight-bold"
							data-toggle="modal" data-target="#deleteCategoryModal">
							<i class="fa fa-trash" aria-hidden="true"></i>
						</button>
					</div>
				</div>
			</div>
		</div>

	<div class="modal fade" id="deleteCategoryModal" tabindex="-1"
		role="dialog" aria-labelledby="deleteCategoryModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5- class="modal-title container-fluid font-weight-bold"
						id="addProductModalLabel"> <i
						class="fa-regular fa-trash-can mr-3"></i> Bạn có chắc muốn xóa
					đánh giá ? <br />
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container d-flex justify-content-center">
						<img
							src="https://inkythuatso.com/uploads/thumbnails/800/2023/01/8-anh-meme-meo-gio-tay-inkythuatso-17-15-30-30.jpg"
							class="img-fluid m-auto" style="height: 400px; width: 100%" />
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