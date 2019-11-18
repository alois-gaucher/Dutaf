<!DOCTYPE html>
<html lang="fr" dir="ltr">
    <head>
        <?php 
            include('../fonctions.php');
            show_head();
         ?>
    </head>
    <body>

        <!-- Affichage des fournisseurs -->
        <table class="table table-striped table-bordered" id="mon_tableau">
        <thead>
            <tr>
            <th scope="col">Nom</th>
            <th scope="col">Ville</th>
            <th scope="col">Téléphone</th>
            </tr>
        </thead>
        <tbody id="mon_tableau">
        <?php

            // Navbar
            navbar_admin();
            // Connexion
            include("../config.inc.php");
            $bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);

            // 2.Préparer la requête sql pour récupérer les articles.
            $req = 'SELECT * FROM Fournisseurs';

            // 3. Exécuter la requete et récupérer tous les articles dans un tableau.
            $resultat = $bdd->query($req);

            // 4. Pour chaque article du tableau récupéré, afficher l'article et le mettre en forme.
            while ($ligne = $resultat->fetch())

             {
                echo '<tr>';
                        echo '<td>'.$ligne['four_nom'].'</td>';
                        echo '<td>'.$ligne['four_ville'].'</td>';
                        echo '<td>'.$ligne['four_tel'].'</td>';
                        echo '<td>'.'<a href="fournisseur_modif.php?four_id='.$ligne['four_id'].'"><i class="far fa-edit text-dark"></i></a>   <a href="fournisseur_sup.php?four_id='.$ligne['four_id'].'"><i class="far fa-trash-alt text-dark"></i></a>'.'</td>';
                echo '</tr>';
            }
        ?>
        </tbody>
        <tfoot>
            <tr>
            <th scope="col">Nom</th>
            <th scope="col">Ville</th>
            <th scope="col">Téléphone</th>
            </tr>
        </tfoot>
        </table>
        <!--  -->
    </body>
</html>
