<?php
$motRechercher = $_GET['id'];
// var_dump($resultatRecherche);
$bdd = new PDO("mysql:host=localhost;dbname=autocompletion;charset=utf8",'root','');
$bdd->setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
$bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);


$sql = "SELECT * FROM om WHERE id = $motRechercher";
$result = $bdd->prepare($sql);
$result->execute();
$resultatRecherche = $result->fetchAll();
?>
        <?php
            require_once 'header.php'; ?>
    <section id='element'>
         <?php   if(isset($motRechercher)){
                foreach($resultatRecherche as $resultatRecherches): ?>
                        <img src="<?= $resultatRecherches['images']; ?>" alt="">
                        <div>
                            <?= $resultatRecherches['nom']; ?><br>
                            <?= $resultatRecherches['description']; ?>
                        </div>
                <?php endforeach;
        } ?>
    </section>
    </main>
</body>
</html>