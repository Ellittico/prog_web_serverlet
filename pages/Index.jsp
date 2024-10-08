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
	    </aside>
	    <div class="dashboard">
		    <p id="dash-title"> Portale Sanitario Regionale </p>
		    <p class="dash-text"> Portale Regionale per la gestione degli ospedali in <b><u>regione</u></b>, 
		        <b>accedi</b> e <b>visulizza  </b>i risultati in base alle principali aree di interesse </p>
		    <img id="dash-img"  src="../img/icon.png">
		    <p class="dash-text"> <b>Cerca</b> i tuoi risultati in base alle seguenti <b><u>aree di interesse</u></b>:</p>
		    <diV class="dash-button-container">
		        <div class="dash-item" id="ospedale"> 
		            <p class="dash-text text-item" > <a class="link-page" href="../pages/ospedale.php" >Ospedale </a></p>
		            <img class="dash-img" id="dash-ospedale.png" src="../img/dash-ospedale.png">
		        </div>
		        <div class="dash-item" id="ricovero"> 
		            <p class="dash-text text-item"> <a class="link-page" href="../pages/ricovero.php">Ricovero</a></p>
		            <img class="dash-img" id="dash-ricovero.png" src="../img/dash-ricovero.png">
		        </div>
		        <div class="dash-item" id="cittadini"> 
		            <p class="dash-text text-item"> <a class="link-page" href="../pages/cittadini.php">Cittadino</a> </p>
		            <img class="dash-img" id="dash-cittadino.png" src="../img/dash-cittadino.png">
		        </div>
		        <div class="dash-item" id="patologia"> 
		            <p class="dash-text text-item"> <a class="link-page" href="../pages/patologia.php">Patologia</a></p>
		            <img class="dash-img" id="dash-patologia.png" src="../img/dash-patologia.png">
		        </div>
		    </div>
		    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
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
	  </div>
	  <footer>
	    <p>&copy; 2024 Portale Sanitario Regionale. Tutti i diritti riservati.</p>
	 </footer>
	 
    <script>
        function changeImg(){
        const urlBlue = "../imgBlue/";
        const urlOlive = "../img/";
        var url;
        var dashImg = document.getElementsByClassName("dash-img");
        var iconImg = document.getElementById("dash-img");
        var theme = "<?php echo $_SESSION['theme']?>";
        if(theme=="blue"){
            iconImg.setAttribute("src","../imgBlue/icon.png");
        }
        else{
            iconImg.setAttribute("src","../img/icon.png");
        }
        Array.from(dashImg).forEach(img => {
            if (theme == "blue") {
                url = urlBlue + img.id;
            } else {
                url = urlOlive + img.id;
            }
            img.setAttribute("src", url);
        });
    }

    document.addEventListener('DOMContentLoaded', function() {
            changeImg(); 
    });
    </script>

</body>
<script src="../js/scrollPosition.js"></script>
</html>