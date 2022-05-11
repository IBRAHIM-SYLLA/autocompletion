<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/recherche.css">
    <link rel="stylesheet" href="css/element.css">
    <link rel="stylesheet" href="css/header.css">
    <script src="js/scriptHeader.js"></script>
    <title>Document</title>
</head>
<body>
    <header>
        <a href="index.php"><h1>L'ANNUAIRE OLYMPIEN</h1></a>
        <form action="recherche.php" method="get">
            <div class="search-container">
                <input type="text" name="barreRecherche" id="barreRecherche" placeholder="Search">
                <button type="submit">recherche</button>
                <div class="suggestions">
                    <ul></ul>
                </div>
                <div class="suggestions2">
                    <ul></ul>
                </div>
            </div>
        </form>
    </header>
<main>