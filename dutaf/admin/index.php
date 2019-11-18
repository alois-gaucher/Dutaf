<!DOCTYPE html>
<html lang="fr" dir="ltr">
    <head>
        <?php
            include('../fonctions.php');
            show_head();
         ?>
    </head>
    <body>
        <!-- Modification d'un article -->
        <script type="text/javascript">
            $('#modification').on('shown.bs.modal', function () {
              $('#modification').trigger('focus')
            })
        </script>

        <!-- Suppression d'un article -->
        <script type="text/javascript">
            $('#suppression').on('shown.bs.modal', function () {
              $('#suppression').trigger('focus')
            })
        </script>

        <!-- Datatable -->
        <script type="text/javascript">
            $(document).ready(function() {
                $("#mon_tableau").DataTable();
            } );
        </script>

        <!-- Modification d'un article -->
        <div class="modal fade" id="modification" tabindex="-1" role="dialog" aria-labelledby="Modification" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modification Article</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form>
                    <div class="form-group">
                    <label for="nouvelle_description" class="col-form-label">Description:</label>
                    <input type="text" class="form-control" id="nouvelle_description">
                  </div>
                  <div class="form-group">
                    <label for="nouveau_prix" class="col-form-label">Prix:</label>
                    <input type="text" class="form-control" id="nouveau_prix">
                  </div>
                  <div class="form-group">
                    <label for="nouvelle_quantite" class="col-form-label">Quantité:</label>
                    <textarea class="form-control" id="nouvelle_quantite"></textarea>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer le popup</button>
                <button type="button" class="btn btn-primary">Modifier l'article</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Suppression d'un article -->
        <div class="modal fade" id="suppression" tabindex="-1" role="dialog" aria-labelledby="Suppression" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Suppression Article</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form>
                    <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Voulez-vous vraiment supprimer l'article?</label>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                <button type="button" class="btn btn-primary">Supprimer l'article</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Affichage des articles -->
        <table class="table table-striped table-bordered" id="mon_tableau">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Article</th>
                <th scope="col">Prix</th>
                <th scope="col">Quantité</th>
                <th scope="col">Gestion</th>
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
            $req = 'SELECT * FROM Articles';

            // 3. Exécuter la requete et récupérer tous les articles dans un tableau.
            $resultat = $bdd->query($req);

            // 4. Pour chaque article du tableau récupéré, afficher l'article et le mettre en forme.
            while ($ligne = $resultat->fetch())

             {
                echo '<tr>';
                        echo '<td>'.$ligne['art_id'].'</td>';
                        echo '<td>'.$ligne['art_descript'].'</td>';
                        echo '<td>'.$ligne['art_prix'].'</td>';
                        echo '<td>'.$ligne['art_qte'].'</td>';
                        echo '<td>'.'<a href="article_modif.php?numart='.$ligne['art_id'].'"><i class="far fa-edit text-dark"></i></a>   <a href="article_sup.php?numart='.$ligne['art_id'].'"><i class="far fa-trash-alt text-dark"></i></a>'.'</td>';
                echo '</tr>';

            }
        ?>
        </tbody>
        <tfoot>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Article</th>
                <th scope="col">Prix</th>
                <th scope="col">Quantité</th>
                <th scope="col">Gestion</th>
            </tr>
        </tfoot>
        </table>
        <!--  -->
    </body>
</html>
