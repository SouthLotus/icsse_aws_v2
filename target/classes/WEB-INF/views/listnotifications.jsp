<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>

<div class="panel panel-primary">

	<div class="panel-heading">
		<h3 class="panel-title">All News</h3>
	</div>
	<div class="panel-body">
		<table width="100%"
			class="table table-striped table-bordered table-hover"
			id="dataTables-example">
			<thead>
				<tr>
					<th>Tiêu đề</th>
					<th>Thời gian đăng tải</th>
					<th>Tài liệu</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="news" items="${requestScope.newsList}">
					<tr>
						<td>${news.newsTitle }</td>
						<td>${news.getDateString() }</td>
						<td><a href="${news.getLink() }" target="_blank">Link tài
								liệu</a></td>
						<td class="text-center"><a
							href="/notification?id=${news.newsId }"><span
								class="glyphicon glyphicon-eye-open"></span></a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>

<%@ include file="sidebar.jsp"%>
<%@ include file="footer.jsp"%>