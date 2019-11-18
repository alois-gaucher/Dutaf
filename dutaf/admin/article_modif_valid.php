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
            $numart = $_GET['numart'];
            $art_design = $_GET['art_design'];
            $art_descript = $_GET['art_descript'];
            $art_prix = $_GET['art_prix'];
            $art_qte = $_GET['art_qte'];
            $four_id = $_GET['four_id'];
            // 2.Préparer la requête sql pour récupérer les fournisseurs.
            $req = 'UPDATE Articles SET art_design="'.$art_design.'", art_descript="'.$art_descript.'", art_prix="'.$art_prix.'", art_qte="'.$art_qte.'",four_id='.$four_id.' WHERE art_id='.$numart.'';

            // 3. Exécuter la requete
            try{
            $resultat = $bdd->query($req);
            } catch (PDOException $e) {
            echo 'Erreur : '.$e->getMessage().'<br />';
            die();
                                }
        ?>

        <div id="message_art_modif">

            <p>L'article <?php echo htmlspecialchars($_GET['art_design']); ?>
            a bien été modifié.</p>

        </div>

    </body>
</html>