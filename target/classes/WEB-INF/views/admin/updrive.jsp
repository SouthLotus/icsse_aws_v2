<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contact" value="${requestScope.contact }" />	
<!DOCTYPE html>
<html lang="vi">

<%@include file="header.jsp"%>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Quản lý liên hệ</title>
<link rel="icon" href="static/images/icon.png" />
<!-- Bootstrap Core CSS -->
<link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="static/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="static/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="static/vendor/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="static/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
	
<script src="static/js/jquery.min.js"></script>
<link rel="stylesheet prefetch" href="static/css/datepicker.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<style>
#datepicker>span:hover {
	cursor: pointer;
}
</style>

<script type="text/javascript">
		$(document).ready(function() {
			$("#datepicker").datepicker({
				autoclose : true,
				todayHighlight : true
			}).datepicker('update', new Date());
		});
</script>

<body>

	<div id="wrapper">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Upload tập tin lên Amazon Bucket</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Upload tập tin lên Amazon Bucket</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<form action="/updrive" method="post"
										enctype="multipart/form-data" class="form-horizontal"
										role="form">	
										<div class="form-group">
											<label class="control-label col-sm-2" for="Avatar">Tập tin:</label>
											<div class="col-sm-10">
												<input type="file" name="nfile" accept="*/*">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<input type="hidden" name="id" value="${param.id }" />
												<input type="submit" name="nsubmit" value="Lưu tập tin" class="btn btn-primary" />
											</div>
										</div>

									</form>
								</div>

							</div>
							<!-- /.row (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="static/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="static/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="static/vendor/raphael/raphael.min.js"></script>
	<script src="static/vendor/morrisjs/morris.min.js"></script>
	<script src="static/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="static/dist/js/sb-admin-2.js"></script>
	<script src="static/js/bootstrap-datepicker.js"></script>

</body>

</html>
