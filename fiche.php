<?php
require("./config.php");
$numCom = $_GET['iddvd'];

$query = "SELECT * FROM realisateur,dvd,dvdreal
WHERE realisateur.idreal = dvdreal.idreal AND
dvd.iddvd = dvdreal.iddvd AND dvd.iddvd = $numCom";

$stmt = $pdo->prepare($query);
$stmt->execute();
$res = $stmt->fetchAll();

foreach ($res as $ligne) {
		$nom = $ligne['nom'];
		$prenom = $ligne['prenom'];
		$titre = $ligne['titre'];
		$duree = $ligne['duree'];
		$note = $ligne['Note'];	
		$an = $ligne['an'];
		$commentaire = $ligne['Commentaire'];					
}
	

?>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="index.css" title="CSS global">
	</head>
	<body>
<?php	
	echo "<h1 align=center>$titre</h1>";
	echo "Realisateur: $nom $prenom<br>";
	echo "Annee de sortie: $an<br>";
	echo "Duree: $duree Min<br>";
	echo "Note: $note /10<br>";
	echo "commentaire:  $commentaire<br>";
	echo "<a href='index.php'>Retour au sommaire</a>";
	print ("</BODY></HTML>");

?>
