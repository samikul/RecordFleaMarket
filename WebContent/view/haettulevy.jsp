<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Hakutulos</title>
</head>
<body>
	<!-- hakutulos -->
	<div class="container">
		<h2>Hakutulos</h2>

		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>Id</th>
						<th>Artisti</th>
						<th>Levyn nimi</th>
						<th>Genre</th>
						<th>Formaatti</th>
						<th>Kuntoluokitus</th>
						<th>Hinta</th>
						<th>Myyjän email</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><c:out value="${levy.id}" /></td>
						<td><c:out value="${levy.artisti}" /></td>
						<td><c:out value="${levy.levynNimi}" /></td>
						<td><c:out value="${levy.genre}" /></td>
						<td><c:out value="${levy.formaatti}" /></td>
						<td><c:out value="${levy.kuntoluokitus}" /></td>
						<td><c:out value="${levy.hinta}" /></td>
						<td><c:out value="${levy.email}" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- end of hakutulos -->
		<!-- palaa levylistaukseen -->
		<a href="listaa-levyt" class="btn btn-info btn-sm" role="button"
			aria-pressed="true"><span class="glyphicon glyphicon-arrow-left"></span>
			Palaa levylistaukseen</a>
	</div>
	<!-- end of palaa levylistaukseen -->


</body>
</html>