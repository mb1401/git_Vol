<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
	<script src="<c:url value="/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	<title><spring:message code="home.title"/></title>
</head>
<body>
	<h1><spring:message code="home.pagetitle"/></h1>

	<div class="container">
	  <h3><spring:message code="home.welcome"/></h3>
	  <ul class="list-inline">
	    <li><a href="#"><spring:message code="home.menu.home"/></a></li>
	    <li><a href="#"><spring:message code="home.menu.client"/></a></li>
	    <li><a href="#"><spring:message code="home.menu.reservation"/></a></li>
	    <li><a href="#"><spring:message code="home.menu.vol"/></a></li>
	    <li><a href="#"><spring:message code="home.menu.passager"/></a></li>
	  </ul>
	</div>
</body>
</html>