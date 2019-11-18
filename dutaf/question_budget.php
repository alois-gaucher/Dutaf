<!DOCTYPE html>
<html lang="fr" dir="ltr">
	<head>
        <?php 
            include('fonctions.php');
            show_head();
         ?>
    </head>
	<body>
		<div id="accueil" class="bienvenue">
			<?php
				//Navbar
	            navbar();
	         ?>
			<h1>Bienvenue chez Dutaf Sport</h2>
			<h3>Vous avez un petit budget?</h3></br>
			
			<!-- Form questionnaire -->
			<section id="cover">
			    <div id="cover-caption">
			        <div id="container" class="container">
			            <div class="row text-white">
			                <div class="col-sm-6 offset-sm-3 text-center">
			                    <div class="info-form">
			                        <form action="reponse_budget.php" method="get" class="form-inline justify-content-center">
			                            <div class="form-group">
			                                <label class="sr-only">Quel est votre budget?</label>
			                                <input type="number" name="prixmax" value="1" min="0" step="1" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control" placeholder="Votre budget">
			                            </div>
			                            <button type="submit" class="btn btn-outline-secondary">Rechercher</button>
			                        </form>
			                    </div>
			                    <br>
			                </div>
			            </div>
			        </div>
			    </div>
			</section>
		</div>
	</body>
</html>
