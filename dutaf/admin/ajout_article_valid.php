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
		$designation = $_GET['designation'];

		$prix = $_GET['prix'];

		$description = $_GET['description'];

		$quantite = $_GET['quantite'];

		$four_id = $_GET['four_id'];

		// 2.Préparer la requête sql pour récupérer les articles.
		$req = 'INSERT INTO Articles(art_design, art_prix, art_descript, art_qte, four_id) VALUES ("'. $designation .'", "'. $prix .'", "'.$description.'", "'. $quantite.'", "'.$four_id.'")';

		// 3. Exécuter la requete
        $ajout = $bdd->query($req);
	 ?>

	<div id="message_art_ajout">

		<p>L'article <?php echo htmlspecialchars($_GET['designation']); ?>
		a bien été ajouté.</p>

	</div>
	<div id="lien_art_ajout">
		<a id="lien_art_rec" href="/dutaf/admin/ajout_article.php">Recommencer</a>
		<a id="lien_art_ret" href="/dutaf/admin/index.php">Retour</a>
	</div>
</body>
</html>
