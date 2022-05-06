document.addEventListener("DOMContentLoaded", function (){

    let recherche = document.querySelector('input');
    let form = document.querySelector("form");
    let list = document.getElementById('list')
    let ul = document.createElement('ul');

    recherche.addEventListener("keyup", function (e) {
        if (recherche.value.length > 0) {
            let donnee = new FormData(form);
            // console.log(recherche.value);
            fetch('./searchsql.php', {
                method: 'POST',
                body: donnee,
            })
            .then( (response) => response.json())
            .then( (response) => {
                console.log(response);
                response.forEach((element) => {

                    let li = document.createElement('li');
                    // console.log(element.nom);
                    li.innerHTML = element.nom;
                    ul.appendChild(li);
                    li.addEventListener('click', function(e) {
                        recherche.value = element.name;
                        (document.location.href = `./recherche.php?search=${element.name}`)
                    })
                })
                list.appendChild(ul);

            })
        }
    })
})