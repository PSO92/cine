<?php
require("./config.php");
$server_ip = $_SERVER['SERVER_ADDR'];
$stmt = $pdo->prepare("SELECT * FROM dvd");
$stmt->bindParam(1,$id);
$stmt->execute();

?>

<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="index.css" title="CSS global">
	</head>
	<body>
<?php	
	print ("<h1 align=center>Liste des films</h1>");
	print ("<h2 align=center>$server_ip</h2>");
$res = $stmt->fetchAll();
foreach ( $res as $ligne ) {

		$titre = $ligne['titre'];
		$iddvd = $ligne['iddvd'];
											
		echo " $titre <a href=\"fiche.php?iddvd=$iddvd\"> Detail</a><br>";
						
}
		
print ("</font></BODY></HTML>");

?>
