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
            $four_id = $_GET['four_id'];
            $four_nom = $_GET['four_nom'];
            $four_ville = $_GET['four_ville'];
            $four_tel = $_GET['four_tel'];
            // 2.Préparer la requête sql pour récupérer les fournisseurs.
            $req = 'UPDATE Fournisseurs SET four_nom="'.$four_nom.'", four_ville="'.$four_ville.'", four_tel="'.$four_tel.'" WHERE four_id='.$four_id.'';

            // 3. Exécuter la requete
            try{
            $resultat = $bdd->query($req);
            } catch (PDOException $e) {
            echo 'Erreur : '.$e->getMessage().'<br />';
            die();
                                }
        ?>

        <div id="message_four_modif">

            <p>Le fournisseur <?php echo htmlspecialchars($_GET['four_nom']); ?>
            a bien été modifié.</p>

        </div>

    </body>
</html>
