<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="news" value="${requestScope.news }" />
<%@ include file="header.jsp"%>

<div class="panel panel-primary notification-page">

	<div class="panel-heading">
		<h3 class="panel-title">Detail News</h3>
	</div>
	<div class="panel-body">
			<p class="media-heading" style="font-size: 17px"><strong>${news.newsTitle }</strong></p>
			<i>Đăng tải ngày ${news.getDateString() } bởi Admin</i>
			<br><br>
			<p style="text-indent: 20px; font-size: 16px">${news.newsContent }</p>
			<p><b><a href="${news.getLink() }" target="_blank">Link các tài liệu liên quan</a></b></p>
	</div>
</div>

<%@ include file="sidebar.jsp"%>
<%@ include file="footer.jsp"%>

