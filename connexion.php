<?php

	//Gère la connexion

	require("./connectBD.php");
	$contactInfo = $_POST['contactInfo'];
	$password = $_POST['password'];
	$searchUserQuery = "SELECT * FROM UTILISATEUR WHERE contact = \"" . $contactInfo . "\";";
	$res_connexion = mysqli_query($link, $searchUserQuery) 
		or die (utf8_encode("erreur de requête : ") . $searchUserQuery);
	
	if(mysqli_num_rows($res_connexion) > 0){
			$foundUser = mysqli_fetch_assoc($res_connexion);
			if($foundUser['motDePasse'] == $password){
				echo("Utilisateur connecté");
				$_SESSION['connectedUser'] = $foundUser;
			}
			else {
				echo("erreur de mot de passe");
				require("./index.html");
			}
		}
		else {
			echo("erreur de mail ou de numéro");
			require("./index.html");
		}

?>