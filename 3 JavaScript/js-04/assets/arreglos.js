/* Arreglos
Collecion de elementos
Cada elemento ocupa una posicion
Esa posicion se conoce como indice y comienza a partir de 0
*/

let arr = [1, 2, 3, 4];
console.log(arr);

//propiedades - describen
// metodos - acciones que pueden realizar

console.log(arr[2])
arr[4] = 199;
arr[4] = "Hola";
console.log(arr);

// Metodos de Arreglos

const arreglo = ["Adios"];

// push()
// agrega elementos al final
arreglo.push(2);
arreglo.push(true);

let num = 500;

arreglo.push(num);
console.log(arreglo);

// Unshift()

arreglo.unshift("A");
arreglo.unshift("B");

console.log(arreglo);

console.log(typeof(arreglo[4]));

//Metodo para quitar elementos
// pop()

let dato1 = arreglo.pop();
console.log(dato1)

console.log(arreglo);

let dato2 = arreglo.shift();
console.log(dato2);
console.log(arreglo)

//splice()
//quita una parte de cualquier posicion de nuestro arreglo
// permite reemplazar un elemento
// permite insertar un elemento en una posicon en especifico

arreglo.splice(4, 0, "paragaricutirimicuaro", 56874);
// Splice (
// posicsion de inicio,
// cantidad de elementos a afectar,
// elementos que queremos insertar)

console.log(arreglo);

// Modifican el arreglo original

// Metodos que no modifican el arreglo original
// hacen una copia, modifican eaa copia

// slice()
// Cortar partes de un arreglo
let dato3 = arreglo.slice(0, 2, "Hola");

// debemos inidcar un rango
// 

console.log(dato3);
console.log(arreglo);