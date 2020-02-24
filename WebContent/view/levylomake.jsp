<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="fi">
<head>
<title>Lis‰‰ levy</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>Lis‰‰ levy myyntiin</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
			Pellentesque id felis ullamcorper, consectetur enim at, pellentesque
			tortor. Aenean vehicula lectus semper, dictum sem vitae, interdum
			nulla. Suspendisse semper lacus eget ultrices eleifend. Suspendisse
			odio nisl, sagittis id sagittis sit amet, vehicula vel nisl. Donec
			viverra lorem erat. Vivamus tincidunt elit ut magna sagittis, at
			auctor tellus dictum. Proin neque lectus, ornare vel enim egestas,
			tincidunt vulputate tortor. Nulla fringilla tellus at ipsum
			scelerisque tempus.</p>
		<!-- levyn lis‰ysform -->
		<form action="lisaa-levy" method="post">
			<div class="form-group">
				<label for="email">Artisti:</label> <input type="artisti"
					class="form-control" id="artisti" placeholder="Syˆt‰ artisti/b‰ndi"
					name="artisti">
			</div>
			<div class="form-group">
				<label for="levynNimi">Levyn nimi:</label> <input type="levynNimi"
					class="form-control" id="levynNimi" placeholder="Syˆt‰ levyn nimi"
					name="levynNimi">
			</div>
			<div class="form-group">
				<label for="email">Genre:</label> <input type="genre"
					class="form-control" id="genre" placeholder="Syˆt‰ genre"
					name="genre">
			</div>
			<div class="form-group">
				<label for="formaatti">Formaatti:</label> <input type="formaatti"
					class="form-control" id="formaatti" placeholder="Syˆt‰ formaatti"
					name="formaatti">
			</div>
			<div class="form-group">
				<label for="kuntoluokitus">Kuntoluokitus:</label> <input
					type="kuntoluokitus" class="form-control" id="kuntoluokitus"
					placeholder="Syˆt‰ kuntoluokitus" name="kuntoluokitus">
			</div>
			<div class="form-group">
				<label for="hinta">Hinta:</label> <input type="hinta"
					class="form-control" id="hinta" placeholder="Syˆt‰ hinta"
					name="hinta">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" placeholder="Syˆt‰ email"
					name="email">
			</div>
			<!-- end of levyn lis‰ysform -->
			<!-- tallenna ja peruuta -->
			<button type="submit" class="btn btn-success btn-sm" value="Submit">
				<span class="glyphicon glyphicon-plus"></span> Tallenna
			</button>
			<a href="listaa-levyt" class="btn btn-warning btn-sm" role="button"
				aria-pressed="true"><span class="glyphicon glyphicon-remove"></span>
				Peruuta</a>
			<!-- end of tallenna ja peruuta -->

		</form>
	</div>





</body>
</html>
