<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>
</head>
<body>
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>General Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">General Form</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<!-- left column -->
				<div class="col-md-6">
					<c:if test="${not empty messageResponse}">
						<div class="alert alert-${alert}">${messageResponse}</div>
					</c:if>
					<!-- general form elements -->
					<div class="card card-primary">
						<div class="card-header">
							<h3 class="card-title">Quick Example</h3>
						</div>
						<!-- /.card-header -->
						<!-- form start -->
						<form action="<c:url value='/admin-new'/>" id="formSubmit"
							method="get">
							<div class="card-body">
								<div class="card-body">
									<div class="form-group">
										<label for="sel1">Thể loại:</label> <select
											class="form-control" id="categoryCode" name="categoryCode">
											<option value="">Chọn loại sản phẩm</option>
											
										</select>
									</div>
									<div class="form-group">
										<label>Name</label> <input type="text" class="form-control"
											id="tieude" placeholder="Tên sản phẩm" name="title"
											value="">
									</div>
									<div class="form-group">
										<label>Hình đại diện</label> <input type="text"
											class="form-control" id="thumbnail" placeholder="Tiêu đề"
											name="thumbnail" value="">
									</div>
									<div class="form-group">
										<label>Mô tả ngắn</label> <input type="text"
											class="form-control" id="shortDescription"
											placeholder="Mô tả ngắn" name="shortDescription"
											value="">
									</div>
									<div class="form-group">
										<label>Nội dung</label> <input type="text"
											class="form-control" id="content" placeholder="Nội dung"
											name="content" value="">
									</div>
									<div class="form-group">
										<label>Giá</label> <input type="text"
											class="form-control" id="content" placeholder="Giá sản phẩm"
											name="content" value="">
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<c:if test="${not empty model.id}">
												<input type="button"
													class="btn btn-white btn-warning btn-bold"
													value="Cập nhật bài viết" id="btnAddOrUpdateNew" />
											</c:if>
											<c:if test="${empty model.id}">
												<input type="button"
													class="btn btn-white btn-warning btn-bold"
													value="Thêm bài viết" id="btnAddOrUpdateNew" />
											</c:if>
										</div>
									</div>


								</div>
								<input type="hidden" value="" id="id" name="id" />
						</form>
					</div>
					<!-- /.card -->




				</div>

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});

			var id = $('#id').val();
			if (id == "") {
				addNew(data);
			} else {
				updateNew(data);
			}
		});
		function addNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}?type=edit&id="
									+ result.id + "&message=insert_success";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&message=error_system";
						}
					});
		}
		function updateNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'PUT',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}?type=edit&id="
									+ result.id + "&message=update_success";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&message=error_system";
						}
					});
		}
	</script>
</body>
</html>