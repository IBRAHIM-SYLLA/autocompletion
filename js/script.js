document.addEventListener("DOMContentLoaded", function (){

    let recherche = document.getElementById('barreRecherche');
    let form = document.querySelector("form");
    let list = document.getElementById('list')
    let ul = document.createElement('ul');
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
            response.forEach((element) => {
                
                let li = document.createElement('li');
                // console.log(element.nom);
                li.innerHTML = element.nom;
                ul.appendChild(li);
            })
            list.appendChild(ul);
        })
    })
})