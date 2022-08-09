// URL a Consumir
const urlAleatorios = "https://dog.ceo/api/breeds/image/random"

// Elemento del DOM
const imagenPerrito = document.getElementById("img-perrito");

const btn = document.getElementById("btn-perrito")
console.log(btn);

// Eventos
btn.addEventListener("click", ()=>{
    console.log("Boton Presionado");

    // Agregar Funcionalidad
    
})

// Funciones
async function obtenerPerritos(url) {
    const respuesta = await fetch(url)
    const datos = await  respuesta.json()

    console.log(datos);
    console.log(datos.message);
    console.log(datos.status);

    imagenPerrito.src = datos.message;
}

obtenerPerritos(urlAleatorios);