<?php
// require_once('Searchbar.php');
// $recherche = new Searchbar;
// $infoJoueurs = $recherche->selectfootballeur();
// $resultatRecherche = $recherche->search(isset($_GET['rechercher']));

// var_dump($resultatRecherche);
?>

<form action="" method="get">
    <input type="search" name="barreRecherche" placeholder="rechercher votre joueur">
    <button type="submit" name="rechercher">Rechercher</button>
</form>

<?php
if(isset($_GET['rechercher'])){
    foreach($resultatRecherche as $resultatRecherches){
        echo $resultatRecherches['nom'];
    }
}