<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title><spring:message code="login.admin.title" /></title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>
				<spring:message code="login.admin.form" />
			</legend>
			<form:form modelAttribute="login" action="submit" method="post">
				<div class="form-group">
					<form:label path="login">
						<spring:message code="login.connexion.login" />
					</form:label>
					<form:input type="text" class="form-control" path="login" />
					<form:errors path="login" class="help-block" />
				</div>
				<div class="form-group">
					<form:label path="motDePasse">
						<spring:message code="login.connexion.password" />
					</form:label>
					<form:input type="password" class="form-control" path="motDePasse" />
					<form:errors path="motDePasse" class="help-block" />
				</div>
				<button type="submit" class="btn btn-primary">
					<span class="glyphicon glyphicon-ok"></span>
				</button>
				<a class="btn btn-info btn-md" href="<c:url value="/home/"/>">
					<span class="glyphicon glyphicon-home"></span>
				</a>
			</form:form>
		</fieldset>
	</div>
</body>
</html>