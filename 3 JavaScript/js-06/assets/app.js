console.log(document.getElementById('Encabezado2')); //

const Encabezado2 = document.getElementById('Encabezado2');

console.log(Encabezado2.textContent);

Encabezado2.textContent = "Hola desde el Encabezado 2";

console.log(Encabezado2.textContent);

console.log(Encabezado2.style);

Encabezado2.style.color = 'red';
Encabezado2.style.backgroundColor = "yellow";

/* 
querySelector()
etiqueta = p;
clase = .Encabezado
id = #encabezado
*/

const Encabezado2 = document.querySelector('.En');


// Modificar los atributos de HTML
const enlace = document.getElementById('enlace');
console.log(enlace.href);

enlace.href = 'https://www.youtube.com/'
enlace.target = "_blank";
enlace.textContent = 'Enlace de Youtube';

//Remplazar contenido

const parrafo4 = document.getElementById('parrafo4')

console.log(parrafo4.nodeName);
console.log(parrafo4.textContent);
console.log(parrafo4.innerHTML);

parrafo4.innerHTML = 'Este es un texto normal';

parrafo4.outerHTML = 'div class = "Elemento"> Este es un div</div>';