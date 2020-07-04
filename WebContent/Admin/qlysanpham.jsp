<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Quản Lý Sản Phẩm | Admin HTT-Mobile</title>
<!-- BOOTSTRAP STYLES-->
<link href="/SOF301_Assignment/Admin/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="/SOF301_Assignment/Admin/assets/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->
<link href="/SOF301_Assignment/Admin/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="/SOF301_Assignment/Admin/assets/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>
<body>
	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Quản Lý Sản Phẩm</h2>
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".sidebar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="zsanpham.jsp" style="color: white;">Thêm Sản Phẩm</a>
						</div>
					</div>
				</div>
		
				<hr />

				<div class="row">
					<div class="col-md-12">
				
						<div class="panel panel-default">
							<div class="panel-heading">Quản lý sản phẩm</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Mã Sản Phẩm</th>
												<th>Mã Danh Mục</th>
												<th>Tên Sản Phẩm</th>
												<th>Hình Ảnh</th>
												<th>Số Lượng</th>
												<th>Mô Tả</th>
												<th>Giá Bán</th>
												<th>Giảm Giá</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr class="odd gradeX">
												<td>5001</td>
												<td>IP5</td>
												<td>IPhone 5</td>
												<td>images/sanpham/ip_se_1.jpg</td>
												<td>20</td>
												<td>NULL</td>
												<td>2990000</td>
												<td>0</td>
												<td class="center"><a href="zsanpham.jsp"
													class="btn btn-danger btn-xs">Sửa</a> <a href="#"
													class="btn btn-warning btn-xs">Xóa</a></td>
											</tr>
										
										</tbody>
									</table>
								</div>

							</div>
						</div>
						
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="assets/js/custom.js"></script>
</body>
</html>