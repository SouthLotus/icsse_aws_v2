<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="page" value="${requestScope.page}" />
<c:set var="pContent" value="${requestScope.pContent}" />
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Quản lý trang 
<c:choose> 
		<c:when test="${page == '/edit-homepage'}">
            Home
         </c:when>

		<c:when test="${page == '/edit-picturespage'}">
            Venue & Hotel
         </c:when>
         
         <c:when test="${page == '/edit-contactpage'}">
            Contact
         </c:when>
 </c:choose></title>
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

	<div id="wrapper">

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Quản lý trang 
					<c:choose> 
		<c:when test="${page == '/edit-homepage'}">
            Home
         </c:when>

		<c:when test="${page == '/edit-picturespage'}">
            Venue & Hotel
         </c:when>
         
         <c:when test="${page == '/edit-contactpage'}">
            Contact
         </c:when>
 </c:choose>
 </h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Chỉnh sửa trang 
						<c:choose> 
		<c:when test="${page == '/edit-homepage'}">
            Home
         </c:when>

		<c:when test="${page == '/edit-picturespage'}">
            Venue & Hotel
         </c:when>
         
         <c:when test="${page == '/edit-contactpage'}">
            Contact
         </c:when>
 </c:choose>
 </div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<form action="${page }" method="post"
										class="form-horizontal" role="form" name="formthongbao">

										<div class="form-group">
												<textarea style="display:none;" id="NoiDung" name="content"></textarea>
												<div id="txtEditor"></div>
										</div>
										
										<div class="form-group">
											<div>
												<input type="hidden" name="IDThongBao"
													value="ID" /> <input type="hidden"
													name="Func" value="edit" />
												<input type="submit" class="btn btn-primary"
													onclick="bindNoiDungThongBao()" name="submit" value="Cập nhật" />
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
<textarea style="display:none;" id="tmp-content">${pContent.content }</textarea>
</body>

</html>