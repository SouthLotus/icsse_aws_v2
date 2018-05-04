<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Trang quản lý Website</title>
<link rel="icon" href="static/images/icon.png" />
<link href="static/css/my.css" rel="stylesheet">
<!-- Bootstrap Core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="static/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="static/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="static/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="static/css/pnam.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div id="wrapper">
		<%@include file="header.jsp"%>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Đổi mật khẩu</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<p class="error">${requestScope.error }</p>
			<form role="form" action="/changepass" method="post"
				enctype="multipart/form-data">

					<div class="form-group">
						<label>Nhập mật khẩu cũ</label> <input type="password"
							class="form-control" name="oldPass" value="" />
					</div>
					<div class="form-group">
						<label>Nhập mật khẩu mới</label> <input type="password"
							class="form-control" name="newPass" value="" />
					</div>
					<div class="form-group">
						<label>Nhập lại mật khẩu mới</label> <input type="password"
							class="form-control" name="reNewPass" value="" />
					</div>
					<div class="form-group">
						<div class="col-md-11"></div>
						<input type="submit" value="Thây đổi" name="usubmit" class="btn btn-primary col-md-1" />
					</div>
					<input type="hidden" name="Func" value="pedit" />
			</form>

		</div>
	</div>
		<!-- jQuery -->
		<script src="static/vendor/jquery/jquery.min.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- Metis Menu Plugin JavaScript -->
		<script src="static/vendor/metisMenu/metisMenu.min.js"></script>
		<!-- Custom Theme JavaScript -->
		<script src="static/dist/js/sb-admin-2.js"></script>
		<!-- MDB core JavaScript -->
		<!-- Custom JS -->
		<script src="static/js/send.js"></script>
		<!-- Bootstrap tooltips -->

	
</body>

</html>