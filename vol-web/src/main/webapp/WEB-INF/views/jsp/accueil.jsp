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
<title><spring:message code="home.title" /></title>
</head>

<body background ="<c:url value="/img/Avion.jpg"/>" style="width : 100%">

	<div class="container">
		<h1>
			<spring:message code="home.pagetitle" />
		</h1>
		<h3>
			<spring:message code="home.welcome" />
		</h3>
		<ul class="list-inline col-li">
			<c:url var="clientUrl" value="/client/" />
			<c:url var="reservationUrl" value="/reservation/" />
			<c:url var="volUrl" value="/vol/" />
			<c:url var="passagerUrl" value="/passager/" />
			<c:url var="loginUrl" value="/login/" />
			<li><a href="#tab1"><spring:message code="home.menu.home" /></a></li>
			<li><a href="${clientUrl}"><spring:message
						code="home.menu.client" /></a></li>
			<li><a href="${reservationUrl}" /><spring:message
						code="home.menu.reservation" /></a></li>
			<li><a href="${volUrl}"><spring:message code="home.menu.vol" /></a></li>
			<li><a href="${passagerUrl}"><spring:message
						</ul>
						code="home.menu.passager"/></a></li>
		</div>



			<%-- 	<div class="tab-content">
	<c:url var="clientUrl" value="/client/"/>
	<c:url var="reservationUrl" value="/reservation/"/>
	<c:url var="volUrl" value="/vol/"/>
	<c:url var="passagerUrl" value="/passager/"/>
		<div class="tab-pane active" id="tab2">
			<iframe src="${clientUrl}"></iframe>
		</div>
		<div class="tab-pane active" id="tab2">
			<iframe src="${reservationUrl}"></iframe>
		</div>
		<div class="tab-pane active" id="tab2">
			<iframe src="${volUrl}"></iframe>
		</div>
		<div class="tab-pane active" id="tab2">
			<iframe src="${passagerUrl}"></iframe>
		</div>
	
	</div> --%>
</body>
</html>