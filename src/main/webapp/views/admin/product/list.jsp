<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-new" />
<c:url var="NewURL" value="/admin-new" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="content-header">

		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>DataTables</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">DataTables</li>
					</ol>
					<div class="dt-buttons btn-overlap btn-group">
						<a flag="info"
							class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
							data-toggle="tooltip" title='Thêm bài viết'
							href='<c:url value="/admin-product?type=edit"/>'> <span> <i
								class="fas fa-plus-circle"></i>
						</span>
						</a>
						<button id="btnDelete" type="button"
							class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
							data-toggle="tooltip" title='Xóa bài viết'>
							<span> <i class="fas fa-trash-alt"></i>
							</span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-12">
				<c:if test="${not empty messageResponse}">
					<div class="alert alert-${alert}">${messageResponse}</div>
				</c:if>
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">DataTable with minimal features &
							hover style</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th><input type="checkbox" id="checkAll"></th>
									<th>Tên sản phẩm</th>
									<th>Ảnh</th>
									<th>Mô tả ngắn</th>
									<th>Giá</th>
									<th>Tùy chọn</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${model.listResult}">
									<tr>
										<td><input type="checkbox" id="checkbox_${item.id}"
											value="${item.id}"></td>
										<td>${item.name}</td>
										<td><img src="${item.thumbnail}" alt="Anh" width="100" height="100"></td>
										<td>${item.shortDescription}</td>
										<td>${item.price}đ</td>
										<td><c:url var="editURL" value="/admin-new">
												<c:param name="type" value="edit" />
												<c:param name="id" value="${item.id}" />
											</c:url> <a class="btn btn-sm btn-primary btn-edit"
											data-toggle="tooltip" title="Cập nhật bài viết"
											href='${editURL}'><i class="fas fa-edit"></i></a></td>
									</tr>
								</c:forEach>



							</tbody>
							<tfoot>
								<tr>
									<th></th>
									<th>Tên sản phẩm</th>
									<th>Ảnh</th>
									<th>Mô tả ngắn</th>
									<th>Giá</th>
									<th>Tùy chọn</th>

								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->


			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$("#btnDelete").click(function() {
			var data = {};
			var ids = $('tbody input[type=checkbox]:checked').map(function() {
				return $(this).val();
			}).get();
			data['ids'] = ids;
			deleteNew(data);
		});

		function deleteNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'DELETE',
						contentType : 'application/json',
						data : JSON.stringify(data),
						success : function(result) {
							window.location.href = "${NewURL}?type=list&message=delete_success";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&message=error_system";
						}
					});
		}
	</script>
</body>
</html>