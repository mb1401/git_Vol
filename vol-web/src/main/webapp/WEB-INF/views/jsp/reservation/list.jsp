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
<title>Liste des réservations</title>
</head>
<body>

	<div class="container">
		<h2>Liste des réservations</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Date</th>
					<th>Numero</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${reservations}" var="reservation">
					<c:url var="editUrl" value="/reservation/edit">
						<c:param name="id">${reservation.id}</c:param>
					</c:url>
					<c:url var="deleteUrl" value="/reservation/delete">
						<c:param name="id">${reservation.id}</c:param>
					</c:url>
					<tr>
						<td>${ereservation.id}</td>
						<td>${reservation.date}</td>
						<td>${reservation.numero}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>