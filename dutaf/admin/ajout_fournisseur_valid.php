<!DOCTYPE html>
<html>
<head>
	<?php
		include("../fonctions.php");
		show_head();
	 ?>
</head>
<body>
	<?php
		navbar_admin();

		// Connexion
		include("../config.inc.php");
		$bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);

		// 1. Récupérer les données du formulaire
		$four_nom = $_GET['four_nom'];

		$four_ville = $_GET['four_ville'];

		$four_telephone = $_GET['four_telephone'];

		// 2.Préparer la requête sql pour ajouter le fournisseur.
		$req = 'INSERT INTO Fournisseurs(four_nom, four_ville, four_tel) VALUES ("'. $four_nom .'", "'. $four_ville .'", "'. $four_telephone .'")';

		// 3. Exécuter la requete
        $ajout = $bdd->query($req);
	 ?>

	<div id="message_four_ajout">

		<p>Le fournisseur <?php echo htmlspecialchars($_GET['four_nom']); ?>
		a bien été rajouté.</p>

	</div>
	<div id="lien_four_ajout">
		<a id="lien_four_rec" href="/dutaf/admin/ajout_fournisseur.php">Recommencer</a>
		<a id="lien_four_ret" href="/dutaf/admin/index.php">Retour</a>
	</div>
</body>
</html>
