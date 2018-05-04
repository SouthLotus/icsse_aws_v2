<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pContent" value="${requestScope.pContent }" />
<%@ include file="header.jsp"%>


<div class="panel panel-primary contact-page">
	<div class="panel-heading">
		<h3 class="panel-title">Contact</h3>
	</div>
	<div class="panel-body">
		<div>
			${pContent.content }
			<div style="height: 400px;">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d1959.2389135249543!2d106.77207909423393!3d10.851215234929542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3175270ad28d48ab%3A0xa6c02de0a7c40d6c!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmgsIDEgVsO1IFbEg24gTmfDom4sIFBoxrDhu51uZyBMaW5oIENoaeG7g3UsIExpbmggQ2hp4buDdSwgVGjhu6cgxJDhu6ljLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!3m2!1d10.8510564!2d106.77201219999999!5e0!3m2!1svi!2s!4v1483930909433"
					width=100% height=100% frameborder="0" style="border: 0px;"></iframe>
			</div>
		</div>
	</div>
</div>

<%@ include file="sidebar.jsp"%>
<%@ include file="footer.jsp"%>

