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
			  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
			  integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
			  crossorigin="anonymous"
			  referrerpolicy="no-referrer" />
		<script src="https://kit.fontawesome.com/c0f581682c.js"
				crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="app-container">
			<div class="sidebar">
				<div class="sidebar-header">
					<div class="app-icon">
						<img src="/img/3mems.png"
							 alt=""
							 class="img-fluid mr-auto" />
					</div>
				</div>
				<ul class="sidebar-list">
					<li class="sidebar-list-item">
						<a href="/">
							<i class="fa fa-home mr-2"
							   aria-hidden="true"></i>
							<span>Trang chủ</span>
						</a>
					</li>
					<li class="sidebar-list-item">
						<a href="/admin/user">
							<i class="fa fa-user mr-2"
							   aria-hidden="true"></i>
							<span>Người dùng</span>
						</a>
					</li>
					<li class="sidebar-list-item ">
						<a href="/admin/product-manager">
							<i class="fa fa-product-hunt mr-2"
							   aria-hidden="true"></i>
							<span>Sản phẩm</span>
						</a>
					</li>
					<li class="sidebar-list-item">
						<a href="/admin/category">
							<i class="fa-solid fa-bars mr-2"></i>
							<span>Danh mục</span>
						</a>
					</li>
					<li class="sidebar-list-item ">
						<a href="/admin/order">
							<i class="fa fa-first-order mr-2"
							   aria-hidden="true"></i>
							<span>Đặt hàng</span>
						</a>
					</li>
					<li class="sidebar-list-item active">
						<a href="/admin/review">
							<i class="fa fa-first-order mr-2"
							   aria-hidden="true"></i>
							<span>Đánh giá</span>
						</a>
					</li>
					<li class="sidebar-list-item">
						<a href="/admin/report">
							<i class="fa fa-bar-chart mr-2"
							   aria-hidden="true"></i>
							<span>Thống kê</span>
						</a>
					</li>
				</ul>
				<div class="account-info">
					<div class="account-info-picture">
						<img src="https://images.unsplash.com/photo-1527736947477-2790e28f3443?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE2fHx3b21hbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
							 alt="Account" />
					</div>
					<div class="account-info-name">AlexNguyeen</div>
					<button class="account-info-more">
						<svg xmlns="http://www.w3.org/2000/svg"
							 width="24"
							 height="24"
							 viewBox="0 0 24 24"
							 fill="none"
							 stroke="currentColor"
							 stroke-width="2"
							 stroke-linecap="round"
							 stroke-linejoin="round"
							 class="feather feather-more-horizontal">
							<circle cx="12"
									cy="12"
									r="1" />
							<circle cx="19"
									cy="12"
									r="1" />
							<circle cx="5"
									cy="12"
									r="1" />
						</svg>
					</button>
				</div>
			</div>
			<div class="app-content">
				<div class="app-content-header">
					<h1 class="app-content-headerText">ĐÁNH GIÁ</h1>
					<button class="mode-switch"
							title="Switch Theme">
						<svg class="moon"
							 fill="none"
							 stroke="currentColor"
							 stroke-linecap="round"
							 stroke-linejoin="round"
							 stroke-width="2"
							 width="24"
							 height="24"
							 viewBox="0 0 24 24">
							<defs></defs>
							<path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z"></path>
						</svg>
					</button>
				</div>
				<div class="app-content-actions">
					<input class="search-bar"
						   placeholder="Search..."
						   type="text">
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
						<button class="action-button list active"
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
						<button class="action-button grid"
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
						<div class="product-cell category">
							Khách hàng
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
						<div class="product-cell sales">
							Đánh Giá
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
						<div class="product-cell stock">
							Bình luận
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
						<div class="product-cell price">
							Thời gian
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
						<div class="product-cell delete">
							Xóa
							<button class="sort-button"></button>
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
							<span>1</span>
						</div>
						<div class="product-cell category">
							<span class="cell-label">Category:</span>Nguyễn Văn A
						</div>
						<div class="product-cell status-cell">
							<span>Tai nghe Bluetooth Elite 85h</span>
						</div>
						<div class="product-cell sales">
							<span class="cell-label">Sales:</span> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i>
						</div>
						<div class="product-cell stock">
							<span class="cell-label">Stock:</span> Sản phẩm chất lượng!!
						</div>
						<div class="product-cell price">
							<span class="cell-label">Price:</span>$560
						</div>
						<div class="product-cell delete">
							<span class="cell-label">Xóa:</span> <i class="fa-solid fa-trash"></i>
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
						<div class="product-cell category">
							<span class="cell-label">Category:</span>Nguyễn Văn A
						</div>
						<div class="product-cell status-cell">
							<span>Tai nghe Bluetooth Elite 85h</span>
						</div>
						<div class="product-cell sales">
							<span class="cell-label">Sales:</span> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i>
						</div>
						<div class="product-cell stock">
							<span class="cell-label">Stock:</span> Sài rất bền nhe moi người!!
						</div>
						<div class="product-cell price">
							<span class="cell-label">Price:</span>$560
						</div>
						<div class="product-cell delete">
							<span class="cell-label">Xóa:</span> <i class="fa-solid fa-trash"></i>
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
							<span>3</span>
						</div>
						<div class="product-cell category">
							<span class="cell-label">Category:</span>Nguyễn Văn A
						</div>
						<div class="product-cell status-cell">
							<span>Tai nghe Bluetooth Elite 85h</span>
						</div>
						<div class="product-cell sales">
							<span class="cell-label">Sales:</span> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i>
						</div>
						<div class="product-cell stock">
							<span class="cell-label">Stock:</span> Sản phâmt rẻ và đẹp!!
						</div>
						<div class="product-cell price">
							<span class="cell-label">Price:</span>$560
						</div>
						<div class="product-cell delete">
							<span class="cell-label">Xóa:</span> <i class="fa-solid fa-trash"></i>
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
							<span>4</span>
						</div>
						<div class="product-cell category">
							<span class="cell-label">Category:</span>Nguyễn Văn A
						</div>
						<div class="product-cell status-cell">
							<span>Tai nghe Bluetooth Elite 85h</span>
						</div>
						<div class="product-cell sales">
							<span class="cell-label">Sales:</span> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i> <i class="fa-solid fa-star"
							   style="color: #e1c32d;"></i>
						</div>
						<div class="product-cell stock">
							<span class="cell-label">Stock:</span>Nên mua để sài nhe mọi
							người!!
						</div>
						<div class="product-cell price">
							<span class="cell-label">Price:</span>$560
						</div>
						<div class="product-cell delete">
							<span class="cell-label">Xóa:</span> <i class="fa-solid fa-trash"></i>
						</div>
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