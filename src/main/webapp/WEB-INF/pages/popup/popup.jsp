<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>팝업창</title>
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<!-- popup -->
<link href="${pageContext.request.contextPath}/css/popup.css"
	rel="stylesheet">
<!-- logo -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/img/favicon.ico" sizes="32x32"
	rel="image/x-icon">
</head>
<body>
	<div id="size">
		<img class="col-md-12 col-xs-12"
			src="${pageContext.request.contextPath}/img/img1.jpg" width=392
			height=500 />
		<div class="col-md-10 col-xs-10">
			<input id="todayCheck" class="checkbox-default" type="checkbox" />
			<spring:message code="popup.close" text="default text" />
		</div>
		<div class="col-md-2 col-xs-2">
			<input id="closeBtn" class="btn btn-default btn-xs"
				style="float: right;" type="button" value="X" />
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/popup.js"></script>
</body>
</html>