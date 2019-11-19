<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Agenda de contactos</title>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="jumbotron">
				<div class="container">
					<h1 class="text-center">Agenda de contactos</h1>
					<h2 class="text-center">Ejercicio CRUD</h2>
				</div>
			</div>
			<div class="row">
			<div class="col-md-6">
			<a class="btn btn-info btn-lg btn-block" href="agenda/lista">Listar contactos</a>
			<a class="btn btn-info btn-lg btn-block" href="agenda/añadir">Agregar contactos</a>
			</div>
			<div class="col-md-6">
			<img src="${pageContext.request.contextPath}/resources/img/agenda-de-contactos.jpg" class="float-right" />
			</div>
			</div>
		</div>	
	</body>
</html>