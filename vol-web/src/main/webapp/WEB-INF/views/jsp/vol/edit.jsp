<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title><spring:message code="vol.edit.title"/></title>
</head>
<body>

	<div class="container">
		<fieldset>
   			<legend><spring:message code="vol.edit.title"/></legend>
			<form:form modelAttribute="eleve" action="save" method="post">
				<form:hidden class="form-control" path="id"/> 
				<form:hidden class="form-control" path="version"/> 
				 <div class="form-group">
				<form:label path="nom"><spring:message code="edit.nom"/></form:label> <form:input type="text" class="form-control" path="nom"/>
				<form:errors path="nom"/></td>
				 </div>
				 <div class="form-group">
				<form:label path="prenom"><spring:message code="edit.prenom"/></form:label> <form:input type="text" class="form-control" path="prenom"/>
				<form:errors path="prenom"/></td>
				</div>
				 <div class="form-group">
				<form:label path="age"><spring:message code="edit.age"/></form:label> <form:input type="number" class="form-control" path="age"/> 
				<form:errors path="age"/></td>
				</div>
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span></button>
				<a href="<c:url value="/eleve/cancel"/>" class="btn btn-warning"><span class="glyphicon glyphicon-remove"></span></a>
			</form:form>
		</fieldset>
	</div>
</body>
</html>