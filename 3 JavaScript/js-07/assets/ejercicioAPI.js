// URL a Consumir
const urlAleatorios = "https://api.thecatapi.com/v1/images/search"

// Elemento del DOM
const imagenGatito = document.getElementById("img-gatito");
console.log(imagenGatito);

async function obtenerGatitoAleatorio(url) {
    const respuesta = await fetch(url);
    const datos = await respuesta.json();

    console.log(datos);
    console.log(datos[0].id);
    console.log(datos[0].url);

    imagenGatito.src = datos[0].url;
}
