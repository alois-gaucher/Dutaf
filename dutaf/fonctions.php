<?php

    // Ecriture navbar
    function navbar()
    {
    echo '<!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="#">Dutaf</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="/dutaf">Accueil <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Articles
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="/dutaf/catalogue.php">Parcourir nos articles</a>
                  <a class="dropdown-item" href="/dutaf/question_budget.php">Petit budget?</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Fournisseurs
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="/dutaf/fournisseurs.php">Parcourir nos fournisseurs</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dutaf/admin">Admin</a>
              </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>
        </nav>
    <!-- Navbar	-->';
    }

    // Ecriture navbar_admin
    function navbar_admin()
    {
    echo '<!-- Navbar admin -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="#">Dutaf</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="/dutaf">Accueil <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Articles
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="/dutaf/catalogue.php">Parcourir nos articles</a>
                  <a class="dropdown-item" href="/dutaf/question_budget.php">Petit budget?</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Fournisseurs
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="/dutaf/fournisseurs.php">Parcourir nos fournisseurs</a>
              </li>
              <span class="navbar-text">
                     ⚊   
              </span>
              <li class="nav-item">
                <a class="nav-link" href="/dutaf/admin">Articles (admin)</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dutaf/admin/fournisseurs.php">Fournisseurs (admin)</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dutaf/admin/ajout_article.php">Ajouter un article</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dutaf/admin/ajout_fournisseur.php">Ajouter un fournisseur</a>
              </li>
            </ul>
          </div>
        </nav>
    <!-- Navbar -->';
    }

    // Ecriture head
    function show_head()
    {
      echo'<meta charset="utf-8">
        <title>Dutaf</title>
        <!-- Stylesheets -->
        <link rel="stylesheet" href="/dutaf/css/style.css">
        <link rel="stylesheet" href="/dutaf/css/bootstrap.css">
        <link rel="stylesheet" href="/dutaf/css/bootsrap-grid.css">
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4-4.1.1/dt-1.10.20/r-2.2.3/datatables.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" integrity="sha256-+N4/V/SbAFiW1MPBCXnfnP9QSN3+Keu+NlB+0ev/YKQ=" crossorigin="anonymous" />
        <script type="text/javascript" src="https://cdn.datatables.net/v/bs4-4.1.1/dt-1.10.20/r-2.2.3/datatables.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <!-- Meta -->
        <meta name="viewport" content="width=device-width, user-scalable=no">

        <script type="text/javascript">
            $(document).ready(function() {
                $("#mon_tableau").DataTable();
            } );            
        </script>';
    }

    // Modifier art_descript
    function modif_name($art_id, $art_nouveau_nom) {
    $sql = "UPDATE Articles SET art_descript=$art_nouveau_nom WHERE $art_id";
    }

    // Modifier art_prix
    function modif_prix($art_id, $art_nouveau_prix) {
    $sql = "UPDATE Articles SET art_prix=$art_nouveau_prix WHERE $art_id";
    }

    // Modifier art_qte
    function modif_qte($art_id, $art_nouvelle_qte) {
    $sql = "UPDATE Articles SET art_qte=$art_nouvelle_qte WHERE $art_id";
    }
 ?>