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
        ?>
        <!-- Formulaire ajout d'article -->
		<section id="cover">
		    <div id="cover-caption">
		        <div id="container" class="container">
		            <div class="row text-black">
		                <div class="col-sm-6 offset-sm-3 text-center">
		                    <h1 class="display-4">Ajouter un article</h1>
		                    <div class="info-form">
		                        <form action="ajout_article_valid.php" class="form-inlin justify-content-center">
		                            <div class="form-group">
		                                <label class="sr-only">Désignation</label>
		                                <input type="text" name="designation" class="form-control" placeholder="Désignation de l'article">
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Description</label>
		                                <input type="text" name="description" class="form-control" placeholder="Description de l'article">
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Prix</label>
		                                <input type="text" name="prix" class="form-control" placeholder="Prix de l'article">
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Quantité</label>
		                                <input type="text" name="quantite" class="form-control" placeholder="Quantité">
		                            </div>
									<div class="form-group">
									    <label class="justify-content-left" for="fournisseur">Fournisseur</label>
									    <select name="four_id" class="form-control" id="fournisseur" placeholder="Fournisseur">
									      	<?php
												// Connexion
												include("../config.inc.php");
												$bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);

									            // 2.Préparer la requête sql pour récupérer les fournisseurs.
									            $req = 'SELECT * FROM Fournisseurs';

									            // 3. Exécuter la requete et récupérer tous les articles dans un tableau.
									            $resultat2 = $bdd->query($req);

												// 4. Affichage des fournisseurs
												while( $un_four = $resultat2->fetch() ) {
												 echo '<option value="'.$un_four['four_id'].'">'.$un_four['four_nom'].'</option>';
												 }
									      	 ?>
									    </select>
									 </div>
		                            <button type="submit" class="btn btn-success ">Ajouter l'article</button>
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
