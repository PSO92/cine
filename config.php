<?php
//configuration de la connexion BDD
$host = "localhost";
$user = "cine";
$pass = "1234";
$base = "cine";


	try{	
		//$pdo = null;
		$pdo = new PDO('mysql:host='.$host.';dbname='.$base.'', ''.$user.'', ''.$pass.'');
	}
	catch(Exception $e)
	{
		// En cas d'erreur, on affiche un message et on arrête tout
        die('Erreur : '.$e->getMessage());
	}

?>
