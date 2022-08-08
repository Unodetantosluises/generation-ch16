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
imagen2.alt = "Iamgen de Naturaleza";

// 5.-Insertar Elemento
padreImg.appendChild(imagen2);