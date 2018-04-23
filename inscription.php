<?php

	//Gère l'inscription

	require("./connectBD.php");
	if($_POST['contactInfo'] != $_POST['contactInfoConfirm']){
		echo("Contact infos and its confirmation does no match");
	}
	else {
		
		$prenom = $_POST['userPrenom'];
		$nom = $_POST['userNom'];
		$contactInfo = $_POST['contactInfo'];
		$birthdate = $_POST['birthdate'];
		$sex = $_POST['sexe'];
		$password = $_POST['password'];
		if($prenom == ""){
			echo("Prenom oublié");
			require("./index.html");
		}
		else if($nom == ""){
			echo("Nom oublié");
			require("./index.html");
		}
		else if($contactInfo == ""){
			echo("Contact oublié");
			require("./index.html");
		}
		else if($sex== ""){
			echo("Sexe non renseigné");
			require("./index.html");
		}
		else if($password == "" || strlen($password) < 7){
			echo("Mot de passe oublié ou trop court");
			require("./index.html");
		}
		else{
			$queryAddUser = "INSERT INTO Utilisateur(prenom, nom, contact, motDePasse, dateDeNaissance, Sexe)
						VALUES(\"" . $prenom . "\", \"" . $nom . "\", \"" . $contactInfo . "\", \"" . $password . "\", \"" . $birthdate . "\", \"" . $sex . "\");";
			$res_ajout = mysqli_query($link, $queryAddUser) 
				or die (utf8_encode("erreur de requête : ") . $queryAddUser);
			}
		}
		
	
?>