<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Contactos</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
			<div class="jumbotron">
				<div class="container">
					<h1 class="text-center">Lista de Contactos</h1>
				</div>
			</div>
	<table class="table table-striped">
	<thead class="text-primary">
		<tr>
			<td>Id</td>
			<td>Nombre</td>
			<td>Email</td>
			<td>Telefono</td>
		</tr>
	</thead>

		<c:forEach var="contactos" items="${contactos}">
		<c:url var="linkEditar" value="/agenda/actualizar">
					<c:param name="idcontactos" value="${contactos.idcontactos }" />
		</c:url>
		<c:url var="linkBorrar" value="/agenda/borrar">
					<c:param name="idcontactos" value="${contactos.idcontactos }" />
		</c:url>
		
			<tr>
				<td>${contactos.idcontactos }</td>
				<td>${contactos.nombre }</td>
				<td>${contactos.email }</td>
				<td>${contactos.telefono }</td>
				<td><a class="btn btn-warning btn-sm" href="${linkEditar }">Editar</a></td>
				<td><a class="btn btn-danger btn-sm" href="${linkBorrar }" onclick="if(!confirm('¿Estas seguro? No hay vuelta atras'))return false">Borrar</a></td>
			</tr>
		</c:forEach>
	</table>
	
		<a style="margin-top:15px" class="btn btn-warning btn-lg" href="agenda">Volver</a>
	
		
</div>	
</body>
</html>