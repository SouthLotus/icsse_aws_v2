<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href=#>TRANG QUẢN LÝ WEBSITE HỘI NGHỊ ICSSE 2017</a>
	</div>
	<!-- /.navbar-header -->

	<ul class="nav navbar-top-links navbar-right">
	
		<a href="/" target="_blank"><li class="dropdown fa fa-home fa-fw"></li></a>

		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="/change-password"><i class="fa fa-key fa-fw"></i>
						Đổi mật khẩu</a></li>
				<li class="divider"></li>
				<li><a href="/logout"><i class="fa fa-sign-out fa-fw"></i>
						Đăng xuất</a></li>
			</ul> <!-- /.dropdown-user --></li>
		<!-- /.dropdown -->
	</ul>
	<!-- /.navbar-top-links -->

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li><a href="admin"><i class="fa fa-home fa-fw"></i>
						Trang chính</a></li>

				<li><a href="#"><i class="fa fa-sticky-note fa-fw"></i>
						Quản lý Webpages<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="edit-homepage">Home</a></li>
						<li><a href="edit-picturespage">Venue & Hotel</a></li>
						<li><a href="edit-contactpage">Contact</a></li>
					</ul></li>

				<li><a href="#"><i class="fa fa-comments fa-fw"></i> Quản
						lý tin tức<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="all-notifications">Danh sách tin tức</a></li>
						<li><a href="add-notification">Thêm tin tức</a></li>
					</ul></li>

			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>