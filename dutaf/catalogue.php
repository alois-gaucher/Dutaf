<!DOCTYPE html>
<html lang="fr" dir="ltr">
    <head>
        <?php 
            include('fonctions.php');
            show_head();
         ?>
    </head>
    <body>
        <!-- Affichage des articles -->
        <table class="table table-striped table-bordered" id="mon_tableau">
        <thead>
        <tr>
            <th scope="col">Article</th>
            <th scope="col">Prix</th>
            <th scope="col">Quantité</th>
        </tr>

        </thead>
        <?php

            // Navbar
            navbar();
            // Connexion
            include("config.inc.php");
            $bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);
             // 2.Préparer la requête sql pour récupérer les articles.
            $req = 'SELECT * FROM Articles';

            // 3. Exécuter la requete et récupérer tous les articles dans un tableau.
            $resultat = $bdd->query($req);
            
            echo '<tbody>';
                
             // 4. Pour chaque article du tableau récupéré, afficher l'article et le mettre en forme.
            while ($ligne = $resultat->fetch())
                 
             {
                echo '<tr>';
                        echo '<td>'.$ligne['art_descript'].'</td>';
                        echo '<td>'.$ligne['art_prix'].'</td>';
                        echo '<td>'.$ligne['art_qte'].'</td>';
                echo '</tr>';
  
            }
        ?>
        </tbody>
        </table>
        <!--  -->
    </body>
</html>
