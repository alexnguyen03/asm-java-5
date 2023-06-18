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
<title>Product Manager</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style-admin.css" />

<!-- Bootstrap 4.4.1 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />

<script src="https://kit.fontawesome.com/c0f581682c.js"
	crossorigin="anonymous"></script>

<!-- Bootstrap 4.4.1 -->
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>

<style>
.video-edit-preview {
	width: 100%;
	min-height: 300px;
	border: 1px dashed #000;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	color: #000;
	cursor: pointer;
	position: relative;
}

.video-edit-preview i {
	font-size: 2rem;
}

.video-edit-preview span {
	margin-top: 30px;
	font-size: 1rem;
}

.video-edit-preview img {
	position: absolute;
	width: 95%;
	height: 95%;
	top: 95%;
	left: 95%;
	transform: translate(-95%, -95%);
	background: #fff;
	object-fit: cover;
}

.error {
	width: 600px;
	font-size: 2rem;
	color: #000;
}

.toast {
	position: absolute;
	top: 0;
	right: 3.5rem;
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

	<c:if test="${not empty messageProductManager}">
		<!-- toast msg  -->
		<div class="toast show" role="alert" aria-live="assertive"
			aria-atomic="true" data-delay="3000">
			<div class="toast-header">
				<strong class="mr-auto text-center">Quản lý sản phẩm</strong>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body alert-info">${messageProductManager}</div>
		</div>
		<!-- toast msg  -->

		<script>
			setTimeout(() => {
				const toast = document.querySelector('.toast');
				toast.classList.remove('show');
			}, 3000);
		</script>

		<%
		session.removeAttribute("messageProductManager");
		%>
	</c:if>

	<div class="app-container">
		<!-- Sidebar -->
		<jsp:include page="sidebar.jsp" />

		<!-- Right content -->
		<div class="app-content">
			<!-- Top content -->
			<jsp:include page="top-content.jsp" />
			<!-- -------------------------------------------------------- -->

			<!-- Modal -->
			<!-- Add Product -->
			<div class="modal fade" id="AddProductModal" tabindex="-1"
				role="dialog" aria-labelledby="AddProductModalLabel"
				aria-hidden="true">
				<div class="modal-dialog modal-xl" role="document">
					<div class="modal-content">
						<div class="modal-body container-fluid">
							<div class="mb-5 d-flex jusitfy-content-between">
								<h5 class="modal-title container-fluid font-italic"
									id="AddProductModalLabel">
									<i class="fa-regular fa-pen-to-square"></i> Thêm sản phẩm mới
								</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>

							<form:form action="/admin/product-manager/create" id="addForm"
								modelAttribute="item" class="row" enctype="multipart/form-data">
								<!-- Left form -->
								<div class="col-4">
									<!-- Img-priview -->
									<div class="col-12">
										<div class="mb-3">
											<label for="Video-edit-myPicture" class="font-weight-bold">Hình
												ảnh sản phẩm</label> <label for="Video-edit-myPicture"
												class="video-edit-preview"> <i
												class="fa-solid fa-cloud-arrow-up"></i>
											</label> <input type="file" name="photo_file" hidden="hidden"
												id="Video-edit-myPicture" /> <span class="error"></span>
										</div>
									</div>
								</div>

								<!-- Right form -->
								<div class="col-8">
									<div class="row">
										<div class="col-12">
											<div class="form-group">
												<label for="name" class="font-weight-bold">Tên sản
													phẩm</label>
												<form:input path="name" type="text" name="name"
													class="form-control" id="name" aria-describedby="nameHelp"
													placeholder="" />
												<small id="nameHelp" class="form-text text-muted">${message}</small>
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<label for="price" class="font-weight-bold">Giá sản
													phẩm</label>
												<form:input path="price" type="number" class="form-control"
													id="exampleInputEmail1" aria-describedby="priceHelp"
													placeholder="" />
												<small id="priceHelp" class="form-text text-muted"></small>
											</div>
										</div>
										<div class="col-6">
											<div class="form-group">
												<label for="category_id" class="font-weight-bold">Mã
													danh mục</label>
												<form:select path="category.id" class="form-control">
													<form:option value="">Mã danh mục</form:option>
													<form:options items="${list_category}" />
												</form:select>
											</div>
										</div>
										<div class="col-6">
											<div class="form-group">
												<label for="quantity" class="font-weight-bold">Số
													lượng</label> <input type="number" name="quantity"
													class="form-control" id="quantity"
													aria-describedby="quantityHelp" placeholder="" /> <small
													id="quantityHelp" class="form-text text-muted"></small>
											</div>
										</div>
									</div>
								</div>

								<!-- Button form -->
								<div class="col-12 mt-5 d-flex justify-content-end">
									<button class="btn btn-outline-dark font-weight-bold mr-3"
										style="width: 150px;" data-dismiss="modal" aria-label="Close">Trở
										về</button>
									<button class="btn btn-dark font-weight-bold"
										style="width: 150px;">Tạo sản phẩm</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>

			<!-- -------------------------------------------------------- -->
			<!-- App action -->
			<div class="app-content-actions">
				<!-- Action left bar -->
				<div class="d-flex">
					<!-- Search input -->
					<form action="/admin/product-manager/search-product" method="POST">
						<input class="search-bar" name="keywords" value="${keywords}"
							placeholder="Tìm kiếm theo tên" type="text"
							style="min-width: 200px" />
					</form>

					<form action="/admin/product-manager/filter-product-by-available"
						method="POST" class="d-flex ml-3">
						<select class="custom-select form-control" name="available"
							onchange="this.form.submit()">
							<option selected value="null">Lọc theo trạng thái</option>
							<option value="true">Còn hàng</option>
							<option value="false">Hết hàng</option>
						</select>
					</form>

					<form action="/admin/product-manager/filter-product-by-category"
						method="POST" class="d-flex ml-3">
						<select id="category" name="category.id" class="form-control"
							onchange="this.form.submit()">
							<option value="">Lọc theo danh mục</option>
							<c:forEach items="${lst_category}" var="category">
								<option value="${category.id}"
									${product.category.id == category.id ? "selected" : ""}>${category.name}</option>
							</c:forEach>
						</select>
					</form>

				</div>


				<!-- App action bar -->
				<div class="app-content-actions-wrapper">
					<div class="filter-button-wrapper d-flex justify-content-betwwen">
						<a href="/admin/product-manager" class="btn btn-outline-dark mr-3">Rest
							Page</a>
						<button type="button" class="btn btn-dark" data-toggle="modal"
							data-target="#AddProductModal">Thêm sản phẩm</button>
					</div>
				</div>
			</div>

			<!-- TAble product -->
			<div class="products-area-wrapper tableView overflow-auto">
				<!-- Product header -->
				<div class="products-header">
					<div class="product-cell image">
						ID
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell category">
						Tên sản phẩm
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell status-cell">
						Hình ảnh
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell sales">
						Giá thành
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell stock">
						Ngày tạo
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell price">
						Trạng thái
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell category_id">
						Mã danh mục
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell category_id">
						Số lượng
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
					<div class="product-cell category_id">
						Thao tác
						<button class="sort-button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								viewBox="0 0 512 512">
                  <path fill="currentColor"
									d="M496.1 138.3L375.7 17.9c-7.9-7.9-20.6-7.9-28.5 0L226.9 138.3c-7.9 7.9-7.9 20.6 0 28.5 7.9 7.9 20.6 7.9 28.5 0l85.7-85.7v352.8c0 11.3 9.1 20.4 20.4 20.4 11.3 0 20.4-9.1 20.4-20.4V81.1l85.7 85.7c7.9 7.9 20.6 7.9 28.5 0 7.9-7.8 7.9-20.6 0-28.5zM287.1 347.2c-7.9-7.9-20.6-7.9-28.5 0l-85.7 85.7V80.1c0-11.3-9.1-20.4-20.4-20.4-11.3 0-20.4 9.1-20.4 20.4v352.8l-85.7-85.7c-7.9-7.9-20.6-7.9-28.5 0-7.9 7.9-7.9 20.6 0 28.5l120.4 120.4c7.9 7.9 20.6 7.9 28.5 0l120.4-120.4c7.8-7.9 7.8-20.7-.1-28.5z" />
                </svg>
						</button>
					</div>
				</div>

				<!-- Product rendering -->
				<c:forEach var="product" items="${page.content}">
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
						<div class="product-cell id">
							<span class="cell-label">Mã: </span> ${product.id}
						</div>
						<div class="product-cell name">
							<span class="cell-label">Tên:</span>${product.name}
						</div>
						<div class="product-cell image">
							<img
								src="${pageContext.request.contextPath}/img/product/${product.image}"
								class="img-fluid" alt="${product.name}" />
						</div>
						<div class="product-cell price">
							<span class="cell-label">Giá thành: </span> ${product.price}
						</div>
						<div class="product-cell create-date">
							<span class="cell-label">Ngày tạo:</span> ${product.createDate}
						</div>
						<div class="product-cell status-cell">
							<span class="status ${product.available?'active':'disabled'}">${product.available?'Còn hàng':'Hết hàng'}</span>
						</div>
						<div class="product-cell sales">
							<span class="cell-label">Mã danh mục:</span>
							${product.category.id}
						</div>
						<div class="product-cell stock">
							<span class="cell-label">Số lượng:</span>${product.quantity}
						</div>
						<div class="product-cell action">
							<div class="row">
								<div class="col-6">
									<button data-toggle="modal"
										data-target="#UpdateProductModal${product.id}"
										class="btn btn-outline-primary font-weight-bold"
										style="min-width: 120px">Cập nhật</button>
								</div>
							</div>
						</div>

						<!-- Update Product -->
						<div class="modal fade" id="UpdateProductModal${product.id}"
							tabindex="-1" role="dialog"
							aria-labelledby="UpdateProductModalLabel${product.id}"
							aria-hidden="true">
							<div class="modal-dialog modal-xl" role="document">
								<div class="modal-content">
									<div class="modal-body container-fluid">
										<div class="mb-5 d-flex jusitfy-content-between">
											<h5 class="modal-title container-fluid font-italic"
												id="UpdateProductModalLabel${product.id}">
												<i class="fa-regular fa-pen-to-square"></i> Cập nhật sản
												phẩm
											</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>

										<!-- Form -->
										<form action="/admin/product-manager/update" class="row"
											method="POST" enctype="multipart/form-data">
											<!-- Left form -->
											<div class="col-4">
												<!-- Img-priview -->
												<div class="col-12">
													<div class="mb-3">
														<label for="" class="font-weight-bold">Hình ảnh
															sản phẩm</label><label for="Video-edit-myPicture"
															class="video-edit-preview"> <img
															src="${pageContext.request.contextPath}/img/product/${product.image}"
															alt="${product.name}" />
														</label> <input name="image" value="${product.image}"
															hidden="hidden" /> <input type="file" name="photo_file"
															hidden="hidden" id="Video-edit-myPicture" /> <span
															class="error"></span>
													</div>
												</div>
											</div>

											<!-- Right form -->
											<div class="col-8">
												<div class="row">
													<div class="col-12">
														<div class="form-group">
															<input name="id" type="hidden" placeholder="Id"
																value="${product.id}" /> <label for="id"
																class="font-weight-bold">Mã sản phẩm</label> <input
																name="id" type="text" class="form-control" id="name"
																value="${product.id}" aria-describedby="nameHelp"
																placeholder="" disabled="disabled" /> <small
																id="nameHelp" class="form-text text-muted"></small>
														</div>
													</div>
													<div class="col-12">
														<div class="form-group">
															<label for="name" class="font-weight-bold">Tên
																sản phẩm</label> <input name="name" type="text"
																class="form-control" id="name" value="${product.name}"
																aria-describedby="nameHelp" placeholder="" /> <small
																id="nameHelp" class="form-text text-muted"></small>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="price" class="font-weight-bold">Giá
																sản phẩm</label> <input name="price" type="text"
																class="form-control" id="exampleInputEmail1"
																value="${product.price}" aria-describedby="priceHelp"
																placeholder="" /> <small id="priceHelp"
																class="form-text text-muted"></small>
														</div>
													</div>
													<div class="col-6">
														<label for="avaiable" class="font-weight-bold">Trạng
															thái</label> <br />
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="radio"
																name="available" id="inlineRadio1"
																${product.available==true?'checked':''} value="true">
															<label class="form-check-label" for="inlineRadio1">Còn
																hàng</label>
														</div>
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="radio"
																name="available" id="inlineRadio2"
																${!product.available==true?'checked':''} value="false">
															<label class="form-check-label" for="inlineRadio2">Hết
																hàng</label>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="category" class="font-weight-bold">Mã
																danh mục</label> <select id="category" name="category.id"
																class="form-control" required>
																<option value="">-- Chọn danh mục --</option>
																<c:forEach items="${lst_category}" var="category">
																	<option value="${category.id}"
																		${product.category.id == category.id ? "selected" : ""}>${category.name}</option>
																</c:forEach>
															</select>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="quantity" class="font-weight-bold">Số
																lượng</label> <input name="quantity" value="${product.quantity}"
																type="text" name="quantity" class="form-control"
																id="quantity" aria-describedby="quantityHelp"
																placeholder="" /> <small id="quantityHelp"
																class="form-text text-muted"></small>
														</div>
													</div>
												</div>
											</div>

											<!-- Button form -->
											<div class="col-12 mt-5 d-flex justify-content-end">
												<button class="btn btn-outline-dark font-weight-bold mr-3"
													style="width: 200px;" data-dismiss="modal"
													aria-label="Close">Trở về</button>
												<button class="btn btn-dark font-weight-bold"
													style="width: 200px;">Cập nhật sản phẩm</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>


				<!-- Pagination -->
				<div class="row">
					<div class="col-lg-12">
						<div class="product__pagination">
							<c:choose>
								<c:when test="${isPagination == 'index'}">
									<c:if test="${page.totalPages - 1 > 1 }">
										<c:set var="count" value="${0}"></c:set>
										<c:forEach var="i" begin="0"
											end="${page.totalPages - 1 > 3 ? page.totalPages - 3 : page.totalPages - 1}">
											<a class="${page.number==i?'active':''}"
												href="/admin/product-manager?p=${i}">${i+1}</a>
										</c:forEach>
										<c:if test="${page.totalPages -1 > 2}">
											<span>...</span>
											<a href="/admin/product-manager?p=${page.totalPages - 1}"
												class="${page.number == page.totalPages - 1?'active':''}">${page.totalPages}</a>
										</c:if>
									</c:if>
								</c:when>
								<c:when test="${isPagination == 'search' }">
									<c:forEach var="i" begin="0"
										end="${page.totalPages - 1 > 3 ? page.totalPages - 3 : page.totalPages - 1}">
										<a class="${page.number==i?'active':''}"
											href="/admin/product-manager/search-product?p=${i}">${i+1}</a>
									</c:forEach>
									<c:if test="${page.totalPages -1 > 2}">
										<span>...</span>
										<a href="/admin/product-manager/search-product?p=${page.totalPages - 1}"
											class="${page.number == page.totalPages - 1?'active':''}">${page.totalPages}</a>
									</c:if>
								</c:when>
								<c:otherwise>
									<c:if test="${page.totalPages - 1 > 1 }">
										<c:forEach var="i" begin="0" end="${page.totalPages - 2}">
											<a class="${page.number==i?'active':''}"
												href="/admin/product-manager/filter-product-by-available?p=${i}">${i+1}</a>
										</c:forEach>
										<span>...</span>
										<a
											href="/admin/product-manager/filter-product-by-available?p=${page.totalPages - 1}">${page.totalPages}</a>
									</c:if>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Bootstrap 4.4.1 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/script.js"></script>

	<script>
		const addForm = document.getElementById('addForm');
		addForm.addEventListener('submit', function (event) {
		     // Store the modal state in local storage
				localStorage.setItem('modalOpen', 'true');
			
				// Check if the modal state is stored in local storage
				if (localStorage.getItem('modalOpen') === 'true') {
				    // Open the modal
				    $('#AddProductModal').modal('show');
				}
				
				// When the modal is closed, remove the modal state from local storage
				$('#AddProductModal').on('hidden.bs.modal', function () {
				    localStorage.removeItem('modalOpen');
				});
		    });
	</script>
</body>
</html>
