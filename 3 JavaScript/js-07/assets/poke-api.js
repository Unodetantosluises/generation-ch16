// URL para consumir
let urlPokemon = "https://pokeapi.co/api/v2/pokemon/"

// Elementos del DOM
const imgPokemon = document.getElementById("img-poke")

const idPokemon = document.getElementById("id-pokemon")

const nombrePokemon = document.getElementById("nombre-pokemon")

const listaHabilidades = document.getElementById("listaHabilidades")

const listaTipos = document.getElementById("listaTipos")

const formulario = document.getElementById("buscaPokemon")
console.log(formulario);

// Eventos
formulario.addEventListener("submit", (e) =>{
    e.preventDefault()

    const inputPokemon = document.getElementById("busquedaPokemon")
    console.log(inputPokemon.value);

    urlPokemon += inputPokemon.value;
    
    const nuevaBusqueda = urlPokemon + inputPokemon.value;

    obtenerPokemon(nuevaBusqueda);
})


// Funciones
async function obtenerPokemon(url){

    try {

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
    
    listaHabilidades.innerHTML = template;

    //Tipos
    console.log(pokemon.tipo);

    let templateTipos = ""

    pokemon.tipo.forEach((tipo) => {
        const nombreTipo = tipo.type.name;
        console.log(nombreTipo);

        template += `<li class="list-group-item">${nombreTipo}</li>`
    
    })

    listaTipos.innerHTML = templateTipos;
    
    } catch (e) {
        alert("Pokemon No")
    }
}

obtenerPokemon(urlPokemon)