<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pContent" value="${requestScope.pContent }" />
<%@ include file="header.jsp"%>

<div class="panel panel-primary venue_hotel-page">
	<div class="panel-heading">
		<h3 class="panel-title">Venue & Hotel</h3>
	</div>
	<div class="panel-body">${pContent.content }</div>
</div>

<%@ include file="sidebar.jsp"%>
<%@ include file="footer.jsp"%>

