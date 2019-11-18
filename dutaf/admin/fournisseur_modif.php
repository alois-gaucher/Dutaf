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
            navbar();

            // Connexion
            include("../config.inc.php");
            $bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);
            $four_id=$_GET['four_id'];

            // 2.Préparer la requête sql pour récupérer les fournisseurs.
            $req ='SELECT * FROM Fournisseurs WHERE four_id='.$four_id.'';

            // 3. Exécuter la requete et récupérer tous les articles dans un tableau.
            $resultat = $bdd->query($req);
            $four = $resultat->fetch();
        ?>
        <!-- Formulaire modif d'article -->
		<section id="cover">
		    <div id="cover-caption">
		        <div id="container" class="container">
		            <div class="row text-black">
		                <div class="col-sm-6 offset-sm-3 text-center">
		                    <h1 class="display-4">Modifier un fournisseur</h1>
		                    <div class="info-form">
		                        <form action="fournisseur_modif_valid.php" method="get" class="form-inlin justify-content-center">
		                            <div class="form-group">
                                        <?php echo '<input type="hidden" name="four_id" class="form-control" value="'.$four_id.'">'; ?>
		                                <label class="sr-only">Nom</label>
                                        <?php echo '<input type="text" name="four_nom" class="form-control" value="'.$four['four_nom'].'">'; ?>
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Ville</label>
                                        <?php echo '<input type="text" name="four_ville" class="form-control" value="'.$four['four_ville'].'">'; ?>
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Numéro de téléphone</label>
		                                <?php echo '<input type="text" name="four_tel" class="form-control" value="'.$four['four_tel'].'">'; ?>
		                            </div>
		                            <button type="submit" class="btn btn-success">Modifier le fournisseur</button>
		                        </form>
		                    </div>
		                    <br>
		                </div>
		            </div>
		        </div>
		    </div>
		</section>
    </body>
</html>
