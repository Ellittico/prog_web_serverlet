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
		    <form action="ospedale.php" method="post">
		        <p class="title-search-container"> Filtra  </p>
		        <input type="text" placeholder="Cerca per Nome" name="nome">
		        <input type="text" placeholder="Cerca per Codice" name="codice">
		        <input type="text" placeholder="Cerca per Città" name="citta">
		        <hr>
		        <input type="submit" name="cercaFiltro" placeholder="Cerca per Data di nascita" value="Cerca">
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
			    <div class="titles-results-ospedale"> 
			        <div class="titles-elements-ospedale"> Cod. Ospedale </div> 
			        <div class="titles-elements-ospedale"> Nome </div> 
			        <div class="titles-elements-ospedale"> Città </div> 
			        <div class="titles-elements-ospedale"> Indirizzo </div> 
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