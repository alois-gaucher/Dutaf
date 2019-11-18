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

            $four_id=$_GET['four_id'];

			// Connexion
			include("../config.inc.php");
			$bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);

            // 2.Préparer la requête sql pour récupérer les fournisseurs.
            $req = "DELETE FROM Fournisseurs WHERE four_id=$four_id";

            // 3. Exécuter la requete.
            $resultat = $bdd->query($req);

            echo "<h4>Vous venez de supprimer le fournisseur ".$four_id."</h4>";

      	 ?>
    </body>
</html>
