<?php
// require_once('Searchbar.php');
// $recherche = new Searchbar;
// $infoJoueurs = $recherche->selectfootballeur();
// $resultatRecherche = $recherche->search(isset($_GET['rechercher']));
$motRechercher = isset($_GET['search'])? strip_tags($_GET['search']) :'';
// var_dump($resultatRecherche);
$bdd = new PDO("mysql:host=localhost;dbname=autocompletion",'root','');
$bdd->setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
$bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);


$sql = "SELECT nom, images FROM om WHERE nom LIKE '%$motRechercher%' ORDER BY id DESC";
$result = $bdd->prepare($sql);
$result->execute();
$resultatRecherche = $result->fetchAll();


require_once 'header.php';

    if(isset($motRechercher)){
        foreach($resultatRecherche as $resultatRecherches): ?>
        <div>
            <img src="<?= $resultatRecherches['images']; ?>" alt="">
            <?= $resultatRecherches['nom']; ?><br>
        </div>
        <?php endforeach;
    } ?>
    </main>
</body>
</html>

