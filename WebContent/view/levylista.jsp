<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>Levylistaus</title>
</head>
<body>

	<!-- Pääotsikko -->
	<!-- Esittelyteksi -->
	<!-- Linkki etusivulle -->

	<div class="container">
		<h2>Levykirppis</h2>
		<div class="form-group">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin
				convallis magna ante, ut consectetur quam elementum ut. Nam quis
				blandit nunc. Vivamus vel porttitor neque. Proin condimentum, tortor
				vitae maximus mattis, nunc nisi pulvinar est, eget ullamcorper
				libero ipsum placerat velit. Sed efficitur facilisis auctor.
				Maecenas feugiat molestie lectus, auctor tincidunt metus ullamcorper
				vitae. Nulla nec ligula scelerisque, tempus justo vel, imperdiet
				odio.</p>
			<a href="/levykirppis5_sami_jdbc_crud/"
				class="btn btn-default btn-sm" role="button" aria-pressed="true"><span
				class="glyphicon glyphicon-home"></span> Etusivulle</a>
		</div>
	</div>

	<!-- end of pääotsikko -->
	<!-- end of esittelyteksi -->
	<!-- end of linkki etusivulle -->

	<!-- Alaotsikko (etsi) -->
	<!-- Form -->
	<!-- Hakupainike -->

	<div class="container">
		<h3>Etsi</h3>

		<form action="etsi-levy" method="post">
			<div class="form-group">
				<label for="id">Hakusana:</label> <input type="id"
					class="form-control" id="id" placeholder="Sy&ouml;t&auml; hakusana"
					name="id">
			</div>

			<button type="submit" class="btn btn-success btn-sm" value="Submit">
				<span class="glyphicon glyphicon-search"></span> Etsi
			</button>
		</form>
	</div>
	<!-- end of alaotsikko (etsi) -->
	<!-- end of form -->
	<!-- end of hakupainike -->

	<!-- Alaotsikko (levylistaus) -->
	<!-- Taulukko, muokkaus- ja poistopainike -->

	<div class="container">
		<h3>Myynniss&auml; olevat levyt</h3>

		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin
			convallis magna ante, ut consectetur quam elementum ut. Nam quis
			blandit nunc. Vivamus vel porttitor neque. Proin condimentum, tortor
			vitae maximus mattis, nunc nisi pulvinar est, eget ullamcorper libero
			ipsum placerat velit. Sed efficitur facilisis auctor. Maecenas
			feugiat molestie lectus, auctor tincidunt metus ullamcorper vitae.</p>
		<a href="lisaa-levy" class="btn btn-primary btn-sm" role="button"
			aria-pressed="true"><span class="glyphicon glyphicon-plus"></span>
			Lis&auml;&auml; levy myyntiin</a>

		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Artisti</th>
						<th>Levyn nimi</th>
						<th>Genre</th>
						<th>Formaatti</th>
						<th>Kuntoluokitus</th>
						<th>Hinta</th>
						<th>Myyj&auml;n email</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${levyt}" var="levy">

						<tr>
							<td><c:out value="${levy.id}" /></td>
							<td><c:out value="${levy.artisti}" /></td>
							<td><c:out value="${levy.levynNimi}" /></td>
							<td><c:out value="${levy.genre}" /></td>
							<td><c:out value="${levy.formaatti}" /></td>
							<td><c:out value="${levy.kuntoluokitus}" /></td>
							<td><c:out value="${levy.hinta}" /></td>
							<td><c:out value="${levy.email}" /></td>
							<td><a
								href="muokkaa-levy?levyid=<c:out value='${levy.id}' />"
								class="btn btn-info btn-sm"><span
									class="glyphicon glyphicon-pencil"></span> Muokkaa</a></td>
							<td><a
								href="poista-levy?levyid=<c:out value='${levy.id}' />"
								class="btn btn-danger btn-sm"><span
									class="glyphicon glyphicon-trash"></span> Poista</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- end of alaotsikko (levylistaus) -->
		<!-- end of taulukko, muokkaus- ja poistopainike -->
	</div>


</body>
</html>



