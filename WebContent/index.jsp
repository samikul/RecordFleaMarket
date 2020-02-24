<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Hallintasivu</title>
</head>
<body>
	<br>
	<br>
	<br>
	<!-- Pääotsikko ja info -->
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h2>Levykirppis</h2></li>
					<li class="list-group-item">Kirppikselle voi lisätä levyn
						myytäväksi. Levyn tietoihin lisätään myös myyjän sähköpostiosoite.</li>
					<li class="list-group-item"><a href="lisaa-levy"
						class="btn btn-default btn-sm"> <span
							class="glyphicon glyphicon-plus"></span> Lisää levy myyntiin
					</a></li>
					<li class="list-group-item"><a href="listaa-levyt"
						class="btn btn-default btn-sm"> <span
							class="glyphicon glyphicon-list-alt"></span> Listaa olevat levyt
					</a></li>

				</ul>
			</div>
			<!-- end of pääotsikko ja info -->
			<!-- Lista ominaisuuksista -->
			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Levyjä
							voi</h4></li>
					<li class="list-group-item">Lisätä</li>
					<li class="list-group-item">Muokata</li>
					<li class="list-group-item">Poistaa</li>
					<li class="list-group-item">Hakea</li>
				</ul>
				<!-- end of lista ominaisuuksista -->
				<!-- Linkit toiminnallisuuksiin -->
			</div>
			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Toiminnallisuudesta</h4></li>
					<li class="list-group-item">Sivusto antaa väärästä syötteestä
						virheilmoituksen osoiteriville.</li>
					<li class="list-group-item">Haku toimii vain ID-numeron
						perusteella.</li>
			</div>
			<!-- end of linkit toiminnallisuuksiin -->
			<!-- Bugit ja kehitysehdotukset -->
			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Jatkokehitysideat</h4></li>
					<li class="list-group-item">Hausta puuttuu toiminnallisuus,
						joka kertoo onko tietokannassa hakukenttään syötetyn ID-numeron
						mukaista riviä.</li>
					<li class="list-group-item">Muokkauksen kautta ei pysty
						päivittämään riviä, joka on levyn luontivaiheessa jätetty
						tyhjäksi.</li>
					<li class="list-group-item">Levyn muokkauksessa ID-numero
						tulisi tulostaa formiin siten, ettei käyttäjä voi sitä muuttaa.</li>
				</ul>
			</div>

			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Bugit</h4></li>
					<li class="list-group-item">Ainoa löytämäni kaatuminen
						tapahtuu, mikäli levyluonnissa "hinta" -kenttä jätetään tyhjäksi,
						sillä <i>/lisaa-levy</i> servletin double.valueOf(hintaString)
						yrittää parsata tyhjää stringiä.
					</li>

				</ul>
			</div>

			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Levyjen
							kuntoluokitukset</h4></li>
					<li class="list-group-item"><b>M</b> - Mint - Levy on
						avaamaton, eli alkuperäisissä suojamuoveissa</li>
					<li class="list-group-item"><b>NM</b> - Nearmint - Levy on
						avattu, mutta kansissa ei ole jälkiä, vinyyli on naarmuton
					<li class="list-group-item"><b>EX(+/-)</b> - Excellent -
						Normaalia kulumaa, levy soi täydellisesti</li>
					<li class="list-group-item"><b>VG/(+/-)</b> - Very good -
						Kansissa enemmän käytön jälkiä, merkintöjä, kulumaa jne. Levy
						hieman naarmuinen, jonka vuoksi napsuntaa voi kuulua.</li>
					<li class="list-group-item"><b>G</b> - Good - Levy nähnyt
						elämää, kannet ovat huonossa kunnossa, levyssä naarmuja, rahinaa
						ja napsuntaa. Levyä voi silti kuunnella.</li>
					<li class="list-group-item"><b>P</b> - Poor - Soittokelvoton</li>
				</ul>
			</div>
			<!-- end of bugit ja kehitysehdotukset -->

			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Opettajan
							palaute</h4></li>
					<li class="list-group-item">Erinomaista, levyjen listaus,
						lisäys poisto ja muokkaus onnistuvat! Myös id:n arvolla levyn haku
						onnistuu.</li>

					<li class="list-group-item">Tyylikkäät uudet update() ja
						findById()-metodit LevyDAO-luokissa. (DAO-luokista pois vielä
						main()-metodit).</li>

					<li class="list-group-item">Kun muokkaalevy.jsp laitetaan
						muokattavan levyn nykyiset arvot syöttökenttien
						value-attribuuttiin, niin levyn päivitys onnistuu käyttäjältä
						helpommin. Nyt on: 
						<textarea rows="2" cols="70"><input type="artisti" class="form-control" id="artisti" placeholder=<c:out value="${levy.artisti}" /> name="artisti"></textarea>

						<p>Pitäisi olla:<p>
						<textarea rows="2" cols="70"><input type="artisti" class="form-control" id="artisti" value=<c:out value="${levy.artisti}" /> name="artisti"></textarea>
					</li>


					<li class="list-group-item">Tietokannan salasana on poistettu
						palautetusta projektista.</li>

					<li class="list-group-item">Virheellisen lomakesyötteen
						tapauksessa ohjelma ei kaatuisi, jos pyynnön parametrienkin
						lukeminen olisi try-catch-rakenteen sisällä.</li>

					<li class="list-group-item">Hyvä, myös dokumentaatiota
						toteutetuista toiminnallisuuksista, jatkokehitysideoista sekä
						löytyneistä bugeista.</li>
					</li>
			</div>
		</div>
</body>
</html>
