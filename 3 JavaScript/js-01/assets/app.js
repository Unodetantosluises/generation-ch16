/* Tipos de Datos */

/* Tipos de Variables */
let a; //local
const b = 0; //Constante y Local

var c; //Global

const PI = 3.141516;

// Variables Globales vs Vatiables Locales
d = "Hola Mundo";

// console.log(d);

// String
let cadena = "Hola Mundo";
let candena2 = "Hola Mundo";

// Number
let numero = 5;
let numero2 = 5.234;
let numero3 =234.1;

if(true) {
    let d = 15;
}

//Boolean
let booleano = true;
let booleano2 = false;
//Se recomienda que las variabales no se usen variables reservadas.

// Undefiend - Sin Definir
let variables;
//consol.log(variable)

//null
let vacio = null;

/* Plantillas Literales
    template strings
    literal strings
    interpolacion
 */

console.log(`Esta es una cadena ${5 + 4}`);
//Con las comillas invertidas podemos hacer una interpolacion(?) AltGr + }
console.log("Esta es una cadena normal ${5 + 4}")

let nombre = 'Luis';

/* let presentacion = ``*/
/* console.log("Mi nombre es" + nombre);
console.log(`Yo me llamo ${nombre}`);

console.log("<h1>Hola</h1>");
console.log(`<h1>Hola</h1>`);
*/

console.log("Mi nombre es " + nombre);
console.log(`Yo me llamo ${nombre}`);

/* Arreglos - matrices - arrays */
let arr = [1, "A", null, undefined, [false, true]];

// Notacion de Corchetes
console.log(arr[4][0]);

let arr2 = new Array("B", 2);
//console.log(arr2);

// Objetos
const persona = { nombre: 'Luis',
edad : 25,
hobbies:[
    "Cocinar",
    "Piano",
    "Ver Series"
],
auto:{
    marca: "BMW",
    modelo: "VS",
    año: 2015
}, 
saludar: function(){
    return "Hola";
}
}

//Notacion de Punto
console.log(`Mi nombre es ${persona.nombre}`);

console.log(`Mi hobbie favorito es ${persona.hobbies[1]}`)

console.log (`La marca de mi auto es${perosna.auto.marca}`)

console.log(persona.saludar());