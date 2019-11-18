<!DOCTYPE html>
<html lang="fr" dir="ltr">
    <head>
        <?php 
            include('fonctions.php');
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
        <?php

            // Navbar
            navbar();
            // Connexion
            include("config.inc.php");
            $bdd = new PDO('mysql:host=localhost;dbname=dutaf', $user, $pass);
             // 2.Préparer la requête sql pour récupérer les fournisseurs.
            $req = 'SELECT * FROM Fournisseurs';

            // 3. Exécuter la requete et récupérer tous les fournisseurs dans un tableau.
            $resultat = $bdd->query($req);
            
            echo '<tbody>';
                
             // 4. Pour chaque fournisseur du tableau récupéré, afficher l'fournisseur et le mettre en forme.
            while ($ligne = $resultat->fetch())
                 
             {
                echo '<tr>';
                        echo '<td>'.$ligne['four_nom'].'</td>';
                        echo '<td>'.$ligne['four_ville'].'</td>';
                        echo '<td>'.$ligne['four_tel'].'</td>';
                echo '</tr>';
  
            }
        ?>
        </tbody>
        </table>
        <!--  -->
    </body>
</html>
