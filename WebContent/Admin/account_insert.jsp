<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Quản Lý Tài Khoản | Admin HTT-Mobile</title>
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
<%
if (session.getAttribute("usernamex") == null) {
	response.sendRedirect("/SOF301_Assignment/account.jsp");
} 
		String username_error = "", password_error = "", email_error = "", fullname_error = "", phone_error = "",
				address_error = "",access_error="",status_error="";
		if (request.getAttribute("username_error") != null) {
			username_error = (String) request.getAttribute("username_error");
		}
		if (request.getAttribute("password_error") != null) {
			password_error = (String) request.getAttribute("password_error");
		}
		if (request.getAttribute("email_error") != null) {
			email_error = (String) request.getAttribute("email_error");
		}
		if (request.getAttribute("fullname_error") != null) {
			fullname_error = (String) request.getAttribute("fullname_error");
		}
		if (request.getAttribute("phone_error") != null) {
			phone_error = (String) request.getAttribute("phone_error");
		}
		if (request.getAttribute("address_error") != null) {
			address_error = (String) request.getAttribute("address_error");
		}
		if (request.getAttribute("access_error") != null) {
			access_error = (String) request.getAttribute("access_error");
		}
		if (request.getAttribute("status_error") != null) {
			status_error = (String) request.getAttribute("status_error");
		}

		String username = "", password = "", email = "", phone = "", fullname = "", address = "",access="", status="";
		if (request.getAttribute("Username") != null) {
			username = (String) request.getAttribute("Username");
		}
		if (request.getAttribute("Password") != null) {
			password = (String) request.getAttribute("Password");
		}
		if (request.getAttribute("Email") != null) {
			email = (String) request.getAttribute("Email");
		}
		if (request.getAttribute("Fullname") != null) {
			fullname = (String) request.getAttribute("Fullname");
		}
		if (request.getAttribute("Phone") != null) {
			phone = (String) request.getAttribute("Phone");
		}
		if (request.getAttribute("Address") != null) {
			address = (String) request.getAttribute("Address");
		}
		/* if (request.getAttribute("Access") != null) {
			access = (String) request.getAttribute("Access");
		}
		if (request.getAttribute("Status") != null) {
			status = (String) request.getAttribute("Status");
		} */

	%>

	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Quản Lý Tài Khoản</h2>
					</div>
				</div>

				<hr />
				<div class="row">
					<div class="col-md-12">

						<div class="panel panel-default">
							<div class="panel-heading">Thêm Tài Khoản</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<form role="form" action="/SOF301_Assignment/AccountServlet_Add_Del" method="post">
										
											<div class="form-group">
												<label>Tên Đăng Nhập</label>
												<span style="color: red"><%=username_error %></span>
												<input class="form-control" type="text" name="Username" value="<%=username %>" />
											</div>
											
											<div class="form-group">
												<label>Mật Khẩu</label> 
												<span style="color: red"><%=password_error %></span>
												<input class="form-control" type="password" name="Password" value="<%=password %>" />
											</div>
											
											<div class="form-group">											
												<label>Địa Chỉ Email</label> 
												<span style="color: red"><%=email_error %></span>
												<input class="form-control" placeholder="@gmail.com" type="text" name="Email" value="<%=email %>" />
											</div>
											
											<div class="form-group">
												<label>Họ Và Tên</label> 
												<span style="color: red"><%=fullname_error %></span>
												<input class="form-control" type="text" name="Fullname" value="<%=fullname %>" />
											</div>
											
											<div class="form-group">
												<label>Địa Chỉ</label> 
												<span style="color: red"><%=address_error %></span>
												<input class="form-control" type="text" name="Address" value="<%=address %>" />
											</div>
											
											<div class="form-group">
												<label>Số Điện Thoại</label> 
												<span style="color: red"><%=phone_error %></span>
												<input class="form-control" type="text" name="Phone" value="<%=phone %>" />
											</div>
											
											<div class="form-group">
												<label>Quyền Truy Cập</label> 
												<span style="color: red"><%=access_error%></span>
												<select class="form-control" name="Access">
													<option value="0">Chọn</option>
													<option value="1">Admin</option>
													<option value="2">Khách Hàng</option>
												</select>
											</div>
											<div class="form-group">
												<label>Trạng Thái</label> 
												<span style="color: red"><%=status_error %></span>
												<select class="form-control" name="Status">
													<option value="0">Chọn</option>
													<option value="1">Đã Kích Hoạt</option>
													<option value="2">Đang Chờ</option>
												</select>
											</div>
											<input type="hidden" name="action" value="Insert"> 
											<button type="submit" class="btn btn-success">Thêm</button>
											<button type="reset" class="btn btn-primary">Reset</button>
										</form>
										<br />
									</div>
								</div>
							</div>
						</div>				
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="assets/js/custom.js"></script>
</body>
</html>