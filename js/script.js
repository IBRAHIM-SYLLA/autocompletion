document.addEventListener("DOMContentLoaded", function (){

    let recherche = document.getElementById('barreRecherche');
    let form = document.querySelector("form");

    recherche.addEventListener("keyup", function (e) {
        console.log("magassouba");
        let donnee = new FormData(form);

        fetch('./searchsql.php', {
            method: 'POST',
            body: donnee,
        })
        .then((response) => response.json())
        .then( (response) => {
            console.log(response);
            let ul = document.createElement('ul');
            let li = document.createElement('li');
        })
    })
})