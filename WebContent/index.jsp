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
	<!-- P��otsikko ja info -->
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h2>Levykirppis</h2></li>
					<li class="list-group-item">Kirppikselle voi lis�t� levyn
						myyt�v�ksi. Levyn tietoihin lis�t��n my�s myyj�n s�hk�postiosoite.</li>
					<li class="list-group-item"><a href="lisaa-levy"
						class="btn btn-default btn-sm"> <span
							class="glyphicon glyphicon-plus"></span> Lis�� levy myyntiin
					</a></li>
					<li class="list-group-item"><a href="listaa-levyt"
						class="btn btn-default btn-sm"> <span
							class="glyphicon glyphicon-list-alt"></span> Listaa olevat levyt
					</a></li>

				</ul>
			</div>
			<!-- end of p��otsikko ja info -->
			<!-- Lista ominaisuuksista -->
			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Levyj�
							voi</h4></li>
					<li class="list-group-item">Lis�t�</li>
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
					<li class="list-group-item">Sivusto antaa v��r�st� sy�tteest�
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
						joka kertoo onko tietokannassa hakukentt��n sy�tetyn ID-numeron
						mukaista rivi�.</li>
					<li class="list-group-item">Muokkauksen kautta ei pysty
						p�ivitt�m��n rivi�, joka on levyn luontivaiheessa j�tetty
						tyhj�ksi.</li>
					<li class="list-group-item">Levyn muokkauksessa ID-numero
						tulisi tulostaa formiin siten, ettei k�ytt�j� voi sit� muuttaa.</li>
				</ul>
			</div>

			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Bugit</h4></li>
					<li class="list-group-item">Ainoa l�yt�m�ni kaatuminen
						tapahtuu, mik�li levyluonnissa "hinta" -kentt� j�tet��n tyhj�ksi,
						sill� <i>/lisaa-levy</i> servletin double.valueOf(hintaString)
						yritt�� parsata tyhj�� stringi�.
					</li>

				</ul>
			</div>

			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Levyjen
							kuntoluokitukset</h4></li>
					<li class="list-group-item"><b>M</b> - Mint - Levy on
						avaamaton, eli alkuper�isiss� suojamuoveissa</li>
					<li class="list-group-item"><b>NM</b> - Nearmint - Levy on
						avattu, mutta kansissa ei ole j�lki�, vinyyli on naarmuton
					<li class="list-group-item"><b>EX(+/-)</b> - Excellent -
						Normaalia kulumaa, levy soi t�ydellisesti</li>
					<li class="list-group-item"><b>VG/(+/-)</b> - Very good -
						Kansissa enemm�n k�yt�n j�lki�, merkint�j�, kulumaa jne. Levy
						hieman naarmuinen, jonka vuoksi napsuntaa voi kuulua.</li>
					<li class="list-group-item"><b>G</b> - Good - Levy n�hnyt
						el�m��, kannet ovat huonossa kunnossa, levyss� naarmuja, rahinaa
						ja napsuntaa. Levy� voi silti kuunnella.</li>
					<li class="list-group-item"><b>P</b> - Poor - Soittokelvoton</li>
				</ul>
			</div>
			<!-- end of bugit ja kehitysehdotukset -->

			<div class="col-sm-8">
				<ul class="list-group list-group-flush">
					<li class="list-group-item list-group-item-info"><h4>Opettajan
							palaute</h4></li>
					<li class="list-group-item">Erinomaista, levyjen listaus,
						lis�ys poisto ja muokkaus onnistuvat! My�s id:n arvolla levyn haku
						onnistuu.</li>

					<li class="list-group-item">Tyylikk��t uudet update() ja
						findById()-metodit LevyDAO-luokissa. (DAO-luokista pois viel�
						main()-metodit).</li>

					<li class="list-group-item">Kun muokkaalevy.jsp laitetaan
						muokattavan levyn nykyiset arvot sy�tt�kenttien
						value-attribuuttiin, niin levyn p�ivitys onnistuu k�ytt�j�lt�
						helpommin. Nyt on: 
						<textarea rows="2" cols="70"><input type="artisti" class="form-control" id="artisti" placeholder=<c:out value="${levy.artisti}" /> name="artisti"></textarea>

						<p>Pit�isi olla:<p>
						<textarea rows="2" cols="70"><input type="artisti" class="form-control" id="artisti" value=<c:out value="${levy.artisti}" /> name="artisti"></textarea>
					</li>


					<li class="list-group-item">Tietokannan salasana on poistettu
						palautetusta projektista.</li>

					<li class="list-group-item">Virheellisen lomakesy�tteen
						tapauksessa ohjelma ei kaatuisi, jos pyynn�n parametrienkin
						lukeminen olisi try-catch-rakenteen sis�ll�.</li>

					<li class="list-group-item">Hyv�, my�s dokumentaatiota
						toteutetuista toiminnallisuuksista, jatkokehitysideoista sek�
						l�ytyneist� bugeista.</li>
					</li>
			</div>
		</div>
</body>
</html>
