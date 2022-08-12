// URL para consumir
const urlPokemon = "https://pokeapi.co/api/v2/pokemon/197"

// Elementos del DOM
const imgPokemon = document.getElementById("img-poke")
console.log(imgPokemon);

const idPokemon = document.getElementById("id-pokemon")
console.log(idPokemon);

const nombrePokemon = document.getElementById("nombre-pokemon")
console.log(nombrePokemon);

const listaHabilidades = document.getElementById("listaHabilidades")
console.log(listaHabilidades);

const listaTipos = document.getElementById("listaTipos")

// Funciones
async function obtenerPokemon(url){
    const respuesta = await fetch(url)
    const datos = await respuesta.json()

    /* console.log(datos);
    console.log(datos.forms[0].name);
    console.log(datos.abilities);
    console.log(datos.id);
    console.log(datos.types);
    console.log(datos.sprites.other["official-artwork"]front_default); */

    const pokemon = {
        nombre: datos.forms[0].name,
        habilidades: datos.abilities,
        numero: datos.id,
        tipo: datos.types,
        imagen: datos.sprites.other["official-artwork"].front_default
    } 
    // Imagen, nombre y ID
    imgPokemon.src = pokemon.imagen;
    idPokemon.textContent = `ID: ${pokemon.id}`;
    nombrePokemon.textContent = pokemon.nombre;
    

    //Habilidades
    console.log(pokemon.habilidades.length);

    let template = ``

    listaHabilidades.innerHTML = `<li class="list-group-item">A third item</li>`

    for(let i=0; i < pokemon.habilidades.length; i++){

        const nombreHabilidad = pokemon.habilidades[i].abilities.name

        console.log(nombreHabilidad);
        
        template = `<li class="list-group-item">${nombreHabilidad}</li>` 
    }
    
    listaHabilidades.innerHTML += template;

    //Tipos

    pokemon.tipos.forEach((tipo) => {
        console.log(tipo.type.name);
    })

}

obtenerPokemon(urlPokemon)