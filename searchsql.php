<?php

        $bdd = new PDO("mysql:host=localhost;dbname=autocompletion",'root','');
        $bdd->setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
        $bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        $motRechercher = isset($_GET['barreRecherche']);

    // on récupère les infos toute les infos des footballeur
        // $sql = "SELECT * FROM om";
        // $result = $this->bdd->prepare($sql);
        // $result->execute();
        // $fetch = $result->fetchAll();
        // return $fetch;

    // on fait la requête qui va nous permettre de rechercher des joueurs
        $motRechercher;
        $sql = 'SELECT nom FROM om WHERE nom LIKE "%'.$motRechercher.'%" ORDER BY id DESC';
        $result = $bdd->prepare($sql);
        $result->execute();
        $joueur = $result->fetchAll();
        // Like = permet d’effectuer une recherche sur un modèle particulier.
        // Il est par exemple possible de rechercher les enregistrements dont la
        // valeur d’une colonne commence par telle ou telle lettre. Les modèles de recherches
        // sont multiple.
        // var_dump($joueur);

        echo json_encode($joueur);
?>