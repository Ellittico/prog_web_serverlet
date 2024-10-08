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
		    <form action="ricovero.php" method="post" id="form-filter">
		        <p class="title-search-container"> Filtra  </p>
		        <label class="label-data" for="data"> data di ricovero: </label>
		        <input type="date" name="data_inizio">
		        <input type="date" name="data_fine">
		        <hr>
		        <label class="label-data" for="durata"> giorno di ricovero: </label>
		        <span class="filter-span">
		            <span>da</span>
		            <input type="number" name="gg_inizio">
		            <span>a</span>
		            <input type="number" name="gg_fine">
		        </span>
		        <hr>
		        <label class="label-number" for="costo"> costo di ricovero: </label>
		        <span class="filter-span">
		            <span>da</span>
		            <input type="number" name="costo_inizio">
		            <span>a</span>
		            <input type="number" name="costo_fine">
		        </span>
		        <input type="submit" placeholder="Cerca per Data di nascita" value="Cerca">
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
		<div class="adding-crud" id="adder">
		    <button class="adding-btn" id="btn-adder"> &#43</button>
		    <p class="adding-text">Aggiungi Ricovero</p>
		    <script src="../js/gestioneCRUD.js"></script>
		</div>
		<div class="container">
			<div class="displayer-results">
			    <div class="titles-results-ricovero"> 
			        <div class="titles-elements-ricovero" id="delete"> <button class="delete-title"> &#10005; </button> </div>
			        <div class="titles-elements-ricovero"> COD </div> 
			        <div class="titles-elements-ricovero"> Cod. Ospedale </div> 
			        <div class="titles-elements-ricovero"> Costo </div> 
			        <div class="titles-elements-ricovero"> Data </div> 
			        <div class="titles-elements-ricovero"> Durata </div> 
			        <div class="titles-elements-ricovero"> Motivo </div> 
			        <div class="titles-elements-ricovero"> CF </div> 
			        <div class="titles-elements-ricovero"> <img src="../img/icon-modifica.png" class="icon-modifica" id="iconMod"></div> 
			    </div>
			</div>
			<!-- manca gestione dei result -->
		</div>
		</div>
		<footer>
		    <p>&copy; 2024 Portale Sanitario Regionale. Tutti i diritti riservati.</p>
		</footer>
		 <script>
        function changeImg(){
            var iconMod = document.getElementById("iconMod");
            var theme = "<?php echo $_SESSION['theme']?>";
            if (theme == "blue") {
                iconMod.setAttribute("src","../imgBlue/icon-modifica.png");
            } else {
                iconMod.setAttribute("src","../img/icon-modifica.png");
            }
        }
        document.addEventListener('DOMContentLoaded', function() {
            changeImg(); 
        });
    </script>
</body>
<script src="../js/scrollPosition.js"></script>
</html>