<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../img/icon.png">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/filtroRicerca.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/ordering.css">
    <link rel="stylesheet" href="../css/general.css">
    <link rel="stylesheet" href="../css/results.css">
    <link rel="stylesheet" href="../css/homepage.css">
    <link rel="stylesheet" href="../css/adding.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="../js/gestioneCRUD.js"></script>
    <title>Servizio_sanitario</title>
</head>
<body>
	<header>
	    <div id="header-container">
	        <h1 id="first"> Portale_Sanità</h1>
	        <h1 id="second"> Regionale </h1>
	    </div>
	    <a class="header-link" href="https://www.fascicolosanitario.regione.lombardia.it/">
	    	<button id="MakeAnAppointment" > Prendi_Appuntamento </button>
	    </a> 
	</header>
	<div class="divider">
	<aside class="aside-menu">
    	<div class="sidebar">
		    <p id="navbar-text">Esplora Portale</p>
		    <a href="../pages/index.php" class="sidebar-link"> HomePage</a>
		    <a href="../pages/ospedale.php" class="sidebar-link">Ospedali</a>
		    <a href="../pages/ricovero.php" class="sidebar-link">Ricoveri</a>
		    <a href="../pages/cittadini.php" class="sidebar-link">Cittadini</a>
		    <a href="../pages/patologia.php" class="sidebar-link">Patologie</a>
		</div>
		<script src="../js/activeNavbar.js"></script>
		<div class="search-container">
		    <form action="patologia.php" method="post" id="form-filter">
		        <p class="title-search-container"> Filtra  </p>
		        <input type="text" placeholder="Cerca per Nome" name="nome">
		        <hr>
		        <div id="container-radio">
		            <label for="scelta" id="label-radio-general"> Scegli tra:</label>
		            <input type="radio" id="cronica" name="opt" value="opzione1">
		            <label for="cronica" class="label-radio">Cronica</label><br>
		            <input type="radio" id="mortale" name="opt" value="opzione2">
		            <label for="mortale" class="label-radio">Mortale</label><br>
		            <input type="radio" id="qualsiasi" name="opt" value="opzione3">
		            <label for="qualsiasi" class="label-radio">Qualsiasi</label><br>
		        </div>
		        <hr>
		        <label id="gravity-label" for="gravita" > Indica la gravità da 1 a 10</label>
		        <input type="number" name="gravita" id="gravity" min="1" max="10">
		        <input type="submit" value="Cerca">
		    </form>
		</div>
    </aside>
     <div class="master">
     	<div class="ordering">
		    <form method="post" action="">
		        <div class="sort-bar">
		            <label for="sort-select">Ordina_per:</label>
		            <select id="sort-select" name="order">
		            </select>
		        </div>
		        <button type="submit" name="cercaOrdine" id="ordering-submit"> Ordina</button>
		    </form>
		    <form method="post" action="">
		        <input type="hidden" name="theme" id="theme-input">
		        <div class="theme">
		            <p class="theme-text">Scegli tema:</p>
		            <button class="light-blue" onclick="setTheme('blue')"></button>
		            <button class="olive" onclick="setTheme('olive')"></button>
		        </div>
		    </form>
		    <script>
		        function setTheme(theme) {
		            document.getElementById("theme-input").value = theme;
		            document.forms[0].submit();
		        }
		    </script>
		</div>
		<div class="container">
			<div class="displayer-results">
			    <div class="titles-results-patologia"> 
			        <div class="titles-elements-patologia"> Nome </div> 
			        <div class="titles-elements-patologia"> Cod. Patologia </div> 
			        <div class="titles-elements-patologia"> Criticità </div> 
			        <div class="titles-elements-patologia"> Cronica </div> 
			        <div class="titles-elements-patologia"> Mortale </div> 
			    </div>
			</div>
			<!-- manca gestione dei result -->
			<script src="../js/gestioneCRUD.js"> </script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"> </script>
		</div>
	</div>
	</div>
	<footer>
	    <p>&copy; 2024 Portale Sanitario Regionale. Tutti i diritti riservati.</p>
	</footer>
</body>
</html>