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
<title><spring:message code="client.list.title"/></title>
</head>
<body> 

	<div class="container">
		<h2><spring:message code="client.list.title"/></h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th><spring:message code="client.list.id"/></th>
					<th><spring:message code="client.list.nom"/></th>
					<th><spring:message code="client.list.numeroTel"/></th>
					<th><spring:message code="client.list.numeroFax"/></th>
					<th><spring:message code="client.list.email"/></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clients}" var="client">
					<c:url var="editUrl" value="/client/edit">
						<c:param name="id">${client.id}</c:param>
					</c:url>
					<c:url var="deleteUrl" value="/client/delete">
						<c:param name="id">${client.id}</c:param>
					</c:url>
					<tr>
						<td>${client.id}</td>
						<td>${client.nom}</td>
						<td>${client.numeroTel}</td>
						<td>${client.numeroFax}</td>
						<td>${client.email}</td>
						<td><a class="btn btn-primary btn-xs" href="${editUrl}"><span class="glyphicon glyphicon-pencil"></span></a><a class="btn btn-danger btn-xs" href="${deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
				
				
			</tbody>
		</table>

		<a class="btn btn-info btn-md" href="<c:url value="/client/addCP"/>"> 
		<span class="glyphicon glyphicon-plus">  Client Physique</span>
		</a>
		
		<a class="btn btn-info btn-md" href="<c:url value="/client/addCM"/>"> 
		<span class="glyphicon glyphicon-plus">  Client Moral</span>
		</a>
		
		<a class="btn btn-info btn-md" href="<c:url value="/client/addEI"/>"> 
		<span class="glyphicon glyphicon-plus">  Client EI</span>
		</a>
		<a class="btn btn-info btn-md" href="<c:url value="/home/"/>"> 
		<span class="glyphicon glyphicon-home"> Home</span>
		</a>
	</div>
	
</body>
</html>