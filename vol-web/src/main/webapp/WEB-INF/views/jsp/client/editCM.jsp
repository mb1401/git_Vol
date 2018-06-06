<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Edition Client Moral</title>

<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title>Edition Client Moral </title>
</head> 
<body>

	<div class="container">
		<fieldset>
   			<legend>Edition Client Moral</legend>
			<form:form modelAttribute="clientMoral" action="saveCM" method="post">
				<form:hidden class="form-control" path="id"/> 
				<form:hidden class="form-control" path="version"/> 
				 <div class="form-group">
				<form:label path="nom">Nom:</form:label> <form:input type="text" class="form-control" path="nom"/>
				<form:errors path="nom" class="help-block"/>
				 </div>
				 <div class="form-group">
				<form:label path="siret">SIRET:</form:label> <form:input type="text" class="form-control" path="siret"/>
				<form:errors path="siret" class="help-block"/>
				</div>
				 <div class="form-group">
				<form:label path="numeroTel">numeroTel:</form:label> <form:input type="number" class="form-control" path="numeroTel"/> 
				<form:errors path="numeroTel" class="help-block"/>
				</div>
				 <div class="form-group">
				<form:label path="numeroFax">numeroFax:</form:label> <form:input type="number" class="form-control" path="numeroFax"/> 
				<form:errors path="numeroFax" class="help-block"/>
				</div>
				 <div class="form-group">
				<form:label path="email">email:</form:label> <form:input type="text" class="form-control" path="email"/>
				<form:errors path="email" class="help-block"/>
				</div>
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span></button>
				<a href="<c:url value="/client/cancel"/>" class="btn btn-warning"><span class="glyphicon glyphicon-remove"></span></a>
			</form:form>
		</fieldset>
	</div>
</body>
</html>
