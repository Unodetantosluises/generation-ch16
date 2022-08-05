// sort()
// ordenar los elementos de un arreglo
//sirve para ordenar los datos de un areglo
// Se rigue por el estandar de ASCII para relizar ordenamiento de elementos

const arr = ["X", "A", "H", "a", "W", "b"];

arr.sort()

console.log(arr);

const arr2 = ["Hola", "adios", "bienvenido", "Calle"]

arr2.sort();

console.log(arr2);

const arr3 = [5, 564, 1, 324, 178];

arr3.sort((a, b)=> a -b ); //ordena menor a mayor

arr3.sort((a, b)=> b - a) //ordena de mayor a menor

console.log(arr3);

// Funcion declarada
// Holsting?
// Un proceso de reacomdo automatico del cogido

function sumar(a, b){
    return a + b;
}

console.log(sumar(5, 7));

let a = 2;
console.log(a);

// funcion expresada
// Hoisting no funciona en este tipo de expresiones

const multiplicar = function(a, b ) {
    return a * b;
}
console.log(multiplicar(3,5));

// Funcioens Flecha
// Se pueden omitir parentesis y return
// Son parecidas a las funciones Lamda de Python y Java
const dividir = (a, b) => a/b;

console.log(dividir(10, 2));

// forEach()
// un ciclo que recorre en automatico todo nuestro arreeglo

const arrNumeros = [1,2,4,6,8,10];

/* 
for(let i=0; i< arrNumeros.length; i++){
    arrNumeros[i] = arrNumeros[i] * 2;
}
 */

arrNumeros.forEach((elemento)=> console.log
    (elemto *= 2)); // elemnto = elemento * 2

// forEach(elemto, idice, arreglo completo)