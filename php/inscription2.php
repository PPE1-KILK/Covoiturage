<body>


<?php
include("connexionbdd.php");
$stmt = $connexion->prepare("INSERT INTO utilisateur (email,mdp,Nom,Prenom) 
VALUES (email, mdp, Nom ,Prenom) ");
$stmt->bindParam('email', $email);
$stmt->bindParam('mdp', $mdp);
$stmt->bindParam('Nom', $Nom);
$stmt->bindParam('Prenom', $Prenom);
$email = $_POST['email'];
$Nom = $_POST['nom'];
$Prenom = $_POST['prenom'];
$mdp = $_POST['password'];
$succes=$stmt->execute();
?>
</body>