<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertar Contacto</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
			<div class="jumbotron">
				<div class="container">
					<h1 class="text-center">Añadir contacto</h1>
				</div>
			</div>
		
			<form:form action="guardar" method="POST" modelAttribute="contactos">
				<form:hidden path="idcontactos"/>
				<div class="form-group">
					<label for="nombre" class="control-label">Nombre:</label><form:input class="form-control" path="nombre" id="nombre" />
				</div>
				<div class="form-group">
					<label for="email" class="control-label">Email:</label><form:input class="form-control" path="email" id="email" />
				</div>
				<div class="form-group">
					<label for="telefono" class="control-label">Teléfono:</label><form:input class="form-control" path="telefono" id="telefono" />
				</div>
				<input class="btn btn-success btn-lg btn-block" type="submit" value="Guardar"/>
			</form:form>
				<a style="margin-top:15px" class="btn btn-warning btn-lg" href="agenda">Volver</a>
</div>

</body>
</html>