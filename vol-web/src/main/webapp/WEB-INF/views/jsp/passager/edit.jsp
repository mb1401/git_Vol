<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title>Edition du Passager</title>
</head>
<body>
	<div class="container">
		<fieldset>
   			<legend>Edition du Passager</legend>
			<form:form modelAttribute="passager" action="save" method="post">
				<form:hidden class="form-control" path="id"/> 
				<form:hidden class="form-control" path="version"/> 
				 <div class="form-group">
				<form:label path="nom">Nom:</form:label> <form:input type="text" class="form-control" path="nom"/>
				 </div>
				 <div class="form-group">
				<form:label path="prenom">Prénom:</form:label> <form:input type="text" class="form-control" path="prenom"/>
				</div>
				 <div class="form-group">
				<form:label path="${passager.adresse.adresse}">Adresse:</form:label> <form:input type="text" class="form-control" path="${passager.adresse.adresse}"/>
				 </div>
				<div class="form-group">
				<form:label path="${passager.adresse.codePostal}">Code Postal:</form:label> <form:input type="text" class="form-control" path="${passager.adresse.codePostal}"/>
				 </div>
				  <div class="form-group">
				<form:label path="${passager.adresse.ville}">Ville:</form:label> <form:input type="text" class="form-control" path="${passager.adresse.ville}"/>
				 </div>
				  <div class="form-group">
				<form:label path="${passager.adresse.pays}">Pays:</form:label> <form:input type="text" class="form-control" path="${passager.adresse.pays}"/>
				 </div> 
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span></button>
				<a href="<c:url value="/passager/cancel"/>" class="btn btn-warning"><span class="glyphicon glyphicon-remove"></span></a>
			</form:form>
		</fieldset>
	</div>
</body>
</html>

</body>
</html>