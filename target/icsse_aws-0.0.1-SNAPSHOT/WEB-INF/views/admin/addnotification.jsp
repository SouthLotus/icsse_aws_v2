<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">

<%@include file="header.jsp"%>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Quản lý tin tức</title>
<link rel="icon" href="static/images/icon.png" />
<link href="static/css/my.css" rel="stylesheet">
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
<link href="static/editor/editor.css" type="text/css" rel="stylesheet" />

<script src="static/editor/editor.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	$(document).ready(function() {
		$("#txtEditor").Editor();
		$(".Editor-editor").html($("#tmp-content").val());
	});

	function bindNoiDungThongBao() {
		var noiDung = document.getElementsByClassName("Editor-editor")[0].innerHTML;
		document.getElementById("NoiDung").value = noiDung;
	}
	</script>
</head>
<body>
	<c:set var="news" value="${requestScope.news }" />
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Quản lý tin tức</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Thêm tin tức mới</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
								<p class="error">${requestScope.error }</p>
									<form action="/addnews" method="post"
										class="form-horizontal" role="form" name="formthongbao">
										<div class="form-group">
											<label class="control-label col-sm-1" for="email">Tiêu
												đề:</label>
											<div class="col-sm-11">
												<input type="text" class="form-control" name="ntitle"
													placeholder="Tiêu đề..." value="${news.newsTitle }">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-1" for="pwd">Nội
												dung:</label>
											<div class="col-sm-11">
												<textarea style="display:none;" id="NoiDung" name="ncontent">
											</textarea>
												<div id="txtEditor"></div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-1 col-sm-11">
												<input type="hidden" name="Func" value="add" />
												<input type="submit" name="nsubmit" value="Đăng tải" class="btn btn-primary"
													onclick="bindNoiDungThongBao()" />
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
<textarea style="display:none;" id="tmp-content">${news.newsContent }</textarea>
</body>

</html>
