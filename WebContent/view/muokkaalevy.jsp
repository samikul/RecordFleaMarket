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
<title>Muokkaa levyä</title>
</head>
<body>

	<div class="container">
		<h2>Muokkaa valittua levyä</h2>
		<!-- muokattavan levyn tiedot -->
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
		<!-- end of muokattavan levyn tiedot -->
		<!-- levyn muokkausform -->
		<form action="muokkaa-levy" method="post">
			<div class="form-group">
				<label for="id">Id:</label> <input type="id" class="form-control"
					id="id" placeholder=<c:out value="${levy.id}" /> name="id">
			</div>
			<div class="form-group">
				<label for="email">Artisti:</label> <input type="artisti"
					class="form-control" id="artisti"
					placeholder=<c:out value="${levy.artisti}" /> name="artisti">
			</div>
			<div class="form-group">
				<label for="levynNimi">Levyn nimi:</label> <input type="levynNimi"
					class="form-control" id="levynNimi"
					placeholder=<c:out value="${levy.levynNimi}" /> name="levynNimi">
			</div>
			<div class="form-group">
				<label for="email">Genre:</label> <input type="genre"
					class="form-control" id="genre"
					placeholder=<c:out value="${levy.genre}" /> name="genre">
			</div>
			<div class="form-group">
				<label for="formaatti">Formaatti:</label> <input type="formaatti"
					class="form-control" id="formaatti"
					placeholder=<c:out value="${levy.formaatti}" /> name="formaatti">
			</div>
			<div class="form-group">
				<label for="kuntoluokitus">Kuntoluokitus:</label> <input
					type="kuntoluokitus" class="form-control" id="kuntoluokitus"
					placeholder=<c:out value="${levy.kuntoluokitus}" />
					name="kuntoluokitus">
			</div>
			<div class="form-group">
				<label for="hinta">Hinta:</label> <input type="hinta"
					class="form-control" id="hinta"
					placeholder=<c:out value="${levy.hinta}" /> name="hinta">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email"
					placeholder=<c:out value="${levy.email}" /> name="email">
			</div>
			<!-- end of levyn muokkausform -->
			<!-- tallenna ja peruuta -->
			<button type="submit" class="btn btn-success btn-sm" value="Submit">
				<span class="glyphicon glyphicon-plus"></span> Tallenna
			</button>
			<a href="listaa-levyt" class="btn btn-warning btn-sm" role="button"
				aria-pressed="true"><span class="glyphicon glyphicon-remove"></span>
				Peruuta</a>
			<!-- end of tallenna ja peruuta -->

			<%--		alkuperäiset buttonit
			<input type="submit" class="btn btn-success" value="Tallenna" /> <a
				href="listaa-levyt" class="btn btn-warning" role="button"
				aria-pressed="true">Peruuta</a>
--%>
		</form>
	</div>


</body>
</html>