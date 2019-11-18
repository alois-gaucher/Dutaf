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
        <!-- Formulaire ajout de fournisseur -->
		<section id="cover">
		    <div id="cover-caption">
		        <div id="container" class="container">
		            <div class="row text-black">
		                <div class="col-sm-6 offset-sm-3 text-center">
		                    <h1 class="display-4">Ajouter un fournisseur</h1>
		                    <div class="info-form">
		                        <form action="ajout_fournisseur_valid.php" class="form-inlin justify-content-center">
		                            <div class="form-group">
		                                <label class="sr-only">Nom</label>
		                                <input type="text" name="four_nom" class="form-control" placeholder="Nom du fournisseur">
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Ville</label>
		                                <input type="text" name="four_ville" class="form-control" placeholder="Ville du fournisseur">
		                            </div>
		                            <div class="form-group">
		                                <label class="sr-only">Numéro de téléphone</label>
		                                <input type="text" name="four_telephone" class="form-control" placeholder="Numéro du fournisseur">
		                            </div>
		                            <button type="submit" class="btn btn-success">Ajouter le fournisseur</button>
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
