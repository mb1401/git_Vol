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
			<form:form modelAttribute="vol" action="save" method="post">
				<form:hidden class="form-control" path="id"/> 
				<form:hidden class="form-control" path="version"/> 
				 <div class="form-group">
				<form:label path="dateDepart"><spring:message code="vol.edit.dateDepart"/></form:label> <form:input type="date" class="form-control" path="dateDepart"/>
				<form:errors path="dateDepart"/></td>
				 </div>
				 <div class="form-group">
				<form:label path="dateArrivee"><spring:message code="vol.edit.dateArrivee"/></form:label> <form:input type="date" class="form-control" path="dateArrivee"/>
				<form:errors path="dateArrivee"/></td>
				</div>
				 <div class="form-group">
				<form:label path="heureDepart"><spring:message code="vol.edit.heureDepart"/></form:label> <form:input type="time" class="form-control" path="heureDepart"/> 
				<form:errors path="heureDepart"/></td>
				</div>
				<div class="form-group">
				<form:label path="heureArrivee"><spring:message code="vol.edit.heureArrivee"/></form:label> <form:input type="time" class="form-control" path="heureArrivee"/> 
				<form:errors path="heureArrivee"/></td>
				</div>
				<div class="form-group">
				<form:errors path="arrivee"/></td>
				</div>
				
				<div class="form-group">
				 <form:label for="sel1" path="depart"><spring:message code="vol.edit.depart"/></form:label>
				      <select class="form-control" id="sel1">
				      	<c:forEach items="${aeroports}" var="aeroport">
				       	 <option>${aeroport.nom}</option>
				        </c:forEach>
				      </select>
		 
				<form:errors path="depart"/></td>
				</div>
				<div class="form-group">
				 <form:label for="arrivee" path="arrivee"><spring:message code="vol.edit.depart"/></form:label>
				      <select class="form-control" id="arrivee">
				        <c:forEach items="${aeroports}" var="aeroport">
				       	 <option>${aeroport.nom}</option>
				        </c:forEach>
				      </select>
		 
				<form:errors path="arrivee"/></td>
				</div>
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span></button>
				<a href="<c:url value="/vol/cancel"/>" class="btn btn-warning"><span class="glyphicon glyphicon-remove"></span></a>
			</form:form>
		</fieldset>
	</div>
</body>
</html>