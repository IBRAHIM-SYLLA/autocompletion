<?php
$motRechercher = isset($_GET['barreRecherche'])? strip_tags($_GET['barreRecherche']) :'';

$bdd = new PDO("mysql:host=localhost;dbname=autocompletion",'root','');
$bdd->setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
$bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);


$sql = "SELECT * FROM om WHERE nom LIKE '%$motRechercher%' ORDER BY id DESC";
$result = $bdd->prepare($sql);
$result->execute();
$resultatRecherche = $result->fetchAll();


require_once 'header.php'; ?>
        <section id="joueurs">
            <?php
            if(isset($motRechercher)){
                foreach($resultatRecherche as $resultatRecherches): ?>
                    <!-- <div> -->
                        <a href="element.php?id=<?=$resultatRecherches['id']?>">
                            <img src="<?= $resultatRecherches['images']; ?>" alt="">
                            <?= $resultatRecherches['nom']; ?><br>
                        </a>
                    <!-- </div> -->
                <?php endforeach;
            } ?>
        </section>
    </main>
</body>
</html>

