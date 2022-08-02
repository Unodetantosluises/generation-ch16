'use strict'

//Conversion de tipos de datos
//casteo parseo
//casting parsing

let num = "5";
let num2 = "10";

console.log(num + num2);

let num3 = "56";
console.log(Number(num3));
console.log(num3);

/* String() */
// Convierte nuemor o booleanos a cadenas
let num4 = String(4);
console.log(num4);
console.log(typeof (num4));

// Boolean
// conviette numeros y cadenas a booleanos
// 0, "", null, - false
// todos los demas numeros ls convierte a true

let num5 = Boolean(-1);
console.log(num5);
console.log(typeof num5);