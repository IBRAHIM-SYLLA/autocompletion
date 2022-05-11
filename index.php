<?php


// var_dump($resultatRecherche);
// // var_dump($infoJoueurs);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/scriptIndex.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <title>Document</title>
</head>
<body>
    <main>
        <section id="index">
            <img src="images/logo-om.png" alt="">
            <h1>L'annuaire Olympien</h1>
            <h3>L'annuaire non officiel de L'olympique de Marseille</h3>
            <form action="recherche.php" method="get">
                <div class="search-container">
                    <input type="text" name="barreRecherche" id="barreRecherche" placeholder="Search">
                    <button type="submit">recherche</button>
                    <div class="suggestions">
                        <ul></ul>
                    </div>
                </div>
            </form>
            <a href="https://github.com/IBRAHIM-SYLLA">
                <img src="images/git.png" alt="">
            </a>
        </section>
    </main>
</body>
</html>