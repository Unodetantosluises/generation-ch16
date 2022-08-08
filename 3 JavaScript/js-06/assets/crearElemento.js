// Crea un elemento
const imagen = document.createElement("img");

console.log(imagen);

// Modificar los atributos html del elemento
imagen.src = 'https://placimg.com/200/200/animals';
imagen.alt = 'Imagenes aleatorias de Animales'

// Lo insertamos en un elemnto padre
document.body.appendChild(imagen);
document.body.insertAdjacentElement("afterbegin", imagen);

//Forma correcta de Insertar un elemento
//1.-Se crea el elemento que contendra la imagen
// 2.-Seleccionar el elemento padreImg
const padreImg = document.getElementById('padreImg');

// 3.-Crea Elemento
const imagen2 = document.createElement("img");
// 4.-Modificamos los atributos del Elemento
imagen2.src = "htttps://placeimg.com/200/200/nature";
imagen2.alt = "Imagen de Naturaleza";

// 5.-Insertar Elemento
padreImg.appendChild(imagen2);

// utilizar forEach para pintar datos
const frutas = ["Toronja", "Manzana", "Mandarina", "Limon", "Granada", "Mango", "Melon", "Platano", "Guayaba"];

const listaFrutas = document.getElementById('frutas');

// Forma 1
/* 
frutas.forEach((element) => {
    const li = document.createElement('li');
    li.textContent = element
    listaFrutas.appendChild(li);
}) 
*/

// Forma 2
frutas.forEach((el) => {
    listaFrutas.innerHTML = `<li>${el}</li>`;
})