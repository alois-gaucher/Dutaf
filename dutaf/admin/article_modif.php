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
            $numart=$_GET['numart'];
            // 2.Préparer la requête sql pour récupérer les fournisseurs.
            $req = "SELECT * FROM Articles WHERE art_id=$numart";
            $req2 ='SELECT * FROM Fournisseurs';

            // 3. Exécuter la requete et récupérer tous les articles dans un tableau.
            $resultat = $bdd->query($req);
            $resultat2 = $bdd->query($req2);
            $un_four = $resultat2->fetch();
            $art = $resultat->fetch();
        ?>
        <!-- Formulaire modif d'article -->
		<section id="cover">
		    <div id="cover-caption">
		        <div id="container" class="container">
		            <div class="row text-black">
		                <div class="col-sm-6 offset-sm-3 text-center">
		                    <h1 class="display-4">Modifier un article</h1>
		                    <div class="info-form">
		                        <form action="article_modif_valid.php" method="get" class="form-inlin justify-content-center">
		                            <div class="form-group">
                                        <?php echo '<input type="hidden" name="numart" class="form-control" value="'.$numart.'">'; ?>
		                                <label class="sr-only">Désignation</label>
                                        <?php echo '<input type="text" name="art_design" class="form-control" value="'.$art['art_design'].'">'; ?>
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Description</label>
                                        <?php echo '<input type="text" name="art_descript" class="form-control" value="'.$art['art_descript'].'">'; ?>
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Prix</label>
		                                <?php echo '<input type="text" name="art_prix" class="form-control" value="'.$art['art_prix'].'">'; ?>
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Quantité</label>
		                                <?php echo '<input type="text" name="art_qte" class="form-control" value="'.$art['art_qte'].'">'; ?>
		                            </div>
									<div class="form-group">
									    <label class="justify-content-left align-left" name="art_id" for="fournisseur">Fournisseur</label>
									      	<?php
                                                echo '<select name="four_id" class="form-control" id="fournisseur" value="'.$art['four_id'].'">';
												while( $un_four = $resultat2->fetch() ) {
												echo '<option value="'.$un_four['four_id'].'">'.$un_four['four_nom'].'</option>';
												 }
									      	 ?>
									    </select>
									 </div>
		                            <button type="submit" class="btn btn-success">Modifier l'article</button>
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
