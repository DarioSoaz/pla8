<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Contactos</title>
</head>
<body>
	<h1>Lista de Contactos</h1>

	<table style="display:none">
		<tr>
			<td>Id</td>
			<td>Nombre</td>
			<td>Email</td>
			<td>Telefono</td>
		</tr>

		<c:forEach var="contactos" items="${contactos}">
			<tr>
				<td>${contactos.idcontactos }</td>
				<td>${contactos.nombre }</td>
				<td>${contactos.email }</td>
				<td>${contactos.telefono }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>