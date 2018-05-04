<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pContent" value="${requestScope.pContent }" />
<%@ include file="header.jsp"%>
<html lang="vi">


<div class="main-slider">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="static/images/slideshow1.jpg" alt="Ho Chi Minh City 1" style="width:100%;height:auto;" />
			</div>

			<div class="item">
				<img src="static/images/slideshow2.jpg" alt="Ho Chi Minh City 2" style="width:100%;height:auto;" />
			</div>

			<div class="item">
				<img src="static/images/slideshow3.jpg" alt="Ho Chi Minh City 3" style="width:100%;height:auto;" />
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
</div>



<div class="panel panel-primary index-page">
	<div class="panel-heading">
		<h3 class="panel-title">Welcome to ICSSE 2017</h3>
	</div>
	<div class="panel-body">
		${pContent.content }
	</div>
</div>

<%@ include file="sidebar.jsp"%>
<%@ include file="footer.jsp"%>

