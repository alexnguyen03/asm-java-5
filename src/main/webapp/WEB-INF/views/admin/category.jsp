<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible"
			  content="IE=edge" />
		<meta name="viewport"
			  content="width=device-width, initial-scale=1.0" />
		<title>Category</title>
		<link rel="stylesheet"
			  href="${pageContext.request.contextPath}
    /css/style-admin.css" />
		<!-- Bootstrap 4.4.1 -->
		<link rel="stylesheet"
			  href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
			  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
			  crossorigin="anonymous" />
		<script src="https://kit.fontawesome.com/c0f581682c.js"
				crossorigin="anonymous"></script>
		<style>
			.video-edit-preview {
				width: 250px;
				height: 250px;
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
		</style>
	</head>

	<body>
		<div class="app-container">
			<!-- Sidebar -->
			<jsp:include page="sidebar.jsp" />

			<!-- Content -->
			<div class="app-content">
				<!-- Top content -->
				<jsp:include page="top-content.jsp" />
				<!-- -------------------------------------------------------- -->
				<!-- Modal -->
				<!-- Add Product -->
				<div class="modal fade"
					 id="AddCategoryModel"
					 tabindex="-1"
					 role="dialog"
					 aria-labelledby="AddCategoryModelLabel"
					 aria-hidden="true">
					<div class="modal-dialog"
						 role="document">
						<div class="modal-content">
							<div class="modal-body container-fluid">
								<div class="mb-5 d-flex jusitfy-content-between">
									<h5 class="modal-title container-fluid font-italic"
										id="AddCategoryModelLabel">
										<i class="fa-regular fa-pen-to-square"></i> Thêm sản phẩm mới
									</h5>
									<button type="button"
											class="close"
											data-dismiss="modal"
											aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>

								<form:form action="/admin/category-manager/create"
										   modelAttribute="item"
										   cssClass="row">
									<div class="col-12">
										<div class="form-group">
											<%-- 										<form:input path="id" placeholder="Id" hidden="hidden" /> --%>
											<label for="id"
												   class="font-weight-bold">Mã Danh mục</label>
											<form:input path="id"
														type="text"
														cssClass="form-control"
														id="name"
														aria-describedby="nameHelp"
														placeholder="" />
											<small id="nameHelp"
												   class="form-text text-muted"></small>
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label for="name"
												   class="font-weight-bold">Tên sản
												phẩm</label>
											<form:input path="name"
														type="text"
														cssClass="form-control"
														id="name"
														aria-describedby="nameHelp"
														placeholder="" />
											<small id="nameHelp"
												   class="form-text text-muted"></small>
										</div>
									</div>

									<!-- Button form -->
									<div class="col-12 mt-5 d-flex justify-content-end">
										<button class="btn btn-outline-dark font-weight-bold mr-3"
												style="width: 150px;"
												data-dismiss="modal"
												aria-label="Close">Trở
											về</button>
										<button class="btn btn-dark font-weight-bold"
												style="width: 150px;">Tạo danh mục</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>

				<!-- -------------------------------------------------------- -->
				<!-- App actions -->
				<div class="app-content-actions">
					<!-- Search input -->
					<form action="/admin/category-manager/search-category"
						  method="POST">
						<input class="search-bar"
							   name="keywords"
							   value="${keywords}"
							   placeholder="Tìm kiếm..."
							   type="text" />
					</form>
					<div class="app-content-actions-wrapper">
						<div class="filter-button-wrapper d-flex justify-content-betwwen">
							<button type="button"
									class="btn btn-dark"
									data-toggle="modal"
									data-target="#AddCategoryModel">Thêm Danh mục</button>
						</div>
					</div>
				</div>

				<!-- Table list -->
				<div class="products-area-wrapper tableView overflow-auto">
					<!-- 	Product table header -->
					<div class="products-header">
						<div class="product-cell image">
							Mã danh mục
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
							Tên Danh mục
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
							Thao tác
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
					</div>

					<!-- 	Loop	 -->
					<c:forEach var="item"
							   items="${page.content}">
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

							<div class="product-cell id">
								<span>${item.id}</span>
							</div>
							<div class="product-cell name">
								<span>${item.name}</span>
							</div>
							<div class="product-cell action">
								<div class="row">
									<div class="col-6">
										<button data-toggle="modal"
												data-target="#UpdateCategoryModal${item.id}"
												class="btn btn-outline-primary font-weight-bold"
												data-id="${item.id}"
												style="width: 150px">Cập nhật</button>
									</div>
								</div>
							</div>

							<!-- Update Product -->
							<div class="modal fade"
								 id="UpdateCategoryModal${item.id}"
								 tabindex="-1"
								 role="dialog"
								 aria-labelledby="UpdateCategoryModalLabel"
								 aria-hidden="true">
								<div class="modal-dialog"
									 role="document">
									<div class="modal-content">
										<div class="modal-body container-fluid">
											<div class="mb-5 d-flex jusitfy-content-between">
												<h5 class="modal-title container-fluid font-italic"
													id="UpdateCategoryModalLabel">
													<i class="fa-regular fa-pen-to-square"></i> Cập nhật danh
													mục
												</h5>
												<button type="button"
														class="close"
														data-dismiss="modal"
														aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>

											<form action="/admin/category-manager/edit"
												  method="Post"
												  class="row">
												<!-- Left form -->
												<div class="col-12">
													<div class="form-group">
														<label for="id"
															   class="font-weight-bold">Mã danh
															mục</label> <input type="text"
															   name="id"
															   value="${item.id}"
															   class="form-control"
															   id="id"
															   aria-describedby="nameHelp"
															   placeholder=""
															   readonly /> <small id="nameHelp"
															   class="form-text text-muted"></small>
													</div>
												</div>
												<div class="col-12">
													<div class="form-group">
														<label for="name"
															   class="font-weight-bold">Tên danh
															mục</label> <input name="name"
															   value="${item.name}"
															   type="text"
															   class="form-control"
															   id="name"
															   aria-describedby="nameHelp"
															   placeholder="" /> <small id="nameHelp"
															   class="form-text text-muted"></small>
													</div>
												</div>


												<!-- Button form -->
												<div class="col-12 mt-5 d-flex justify-content-end">
													<button class="btn btn-outline-dark font-weight-bold mr-3"
															style="width: 250px;"
															data-dismiss="modal"
															aria-label="Close">Trở về</button>
													<button class="btn btn-dark font-weight-bold"
															style="width: 250px;"
															type="submit">Cập nhật danh
														mục</button>
												</div>
											</form>
										</div>

									</div>
								</div>
							</div>

						</div>
					</c:forEach>

					<div class="row">
						<div class="col-lg-12">
							<div class="product__pagination">
								<c:forEach var="i"
										   begin="0"
										   end="${page.totalPages - 1}">
									<a class="${page.number==i?'active':''}"
									   href="/admin/category-manager?p=${i}">${i+1}</a>
								</c:forEach>
								<span>...</span> <a
								   href="/admin/category-manager?p=${page.totalPages - 1}">${page.totalPages}</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Bootstrap 4.4.1 -->
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
				integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
				crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
				integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
				crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
				integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
				crossorigin="anonymous"></script>
		<script src="${pageContext.request.contextPath}/js/script.js"></script>
	</body>

</html>