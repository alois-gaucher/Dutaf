<!DOCTYPE html>
<html lang="fr" dir="ltr">
    <head>
        <?php
            include('../fonctions.php');
            show_head();
         ?>
    </head>
    <body>

     	<?php
            // Navbar
            navbar_admin();

            $numart=$_GET['numart'];

			// Connexion
			include("../config.inc.php");
			$bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);

            // 2.Préparer la requête sql pour récupérer les fournisseurs.
            $req = "DELETE FROM Articles WHERE art_id=$numart";

            // 3. Exécuter la requete et récupérer tous les articles dans un tableau.
            $resultat = $bdd->query($req);

            echo "<h4>Vous venez de supprimer l'article ".$numart."</h4>";

      	 ?>
    </body>
</html>
