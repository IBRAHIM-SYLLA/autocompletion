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
    <script src="js/script.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <title>Document</title>
</head>
<body>
    <form action="recherche.php" method="get">
        <div class="search-container">
            <input type="text" name="barreRecherche" id="barreRecherche" placeholder="Search">
            <div class="suggestions">
                <ul></ul>
            </div>
        </div>
    </form>

</body>
</html>