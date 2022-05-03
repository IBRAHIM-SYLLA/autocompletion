<?php
require_once('Searchbar.php');

$recherche = new Searchbar;
$infoJoueurs = $recherche->selectfootballeur();
$resultatRecherche = $recherche->search('z');

var_dump($resultatRecherche);
// var_dump($infoJoueurs);
?>

<form action="" method="get">
    <input type="search" name="barreRecherche" placeholder="rechercher votre joueur">
    <button type="submit">rechercher</button>
</form>