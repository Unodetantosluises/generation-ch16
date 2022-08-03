function miSuma(a, b) {
    let resultado = a + b;
    console.log(`El resultado es ${a + b}`);
}

miSuma(7,3);

function miSuma(a, b) {
    console.log(`El resultado es ${a + b}`);
}

miSuma(7, 3);

function miProducto(a, b) {
    return a * b;
}

console.log("El producto es " + miProducto(3, 5));

let res;
function miResta(a, b) {
    return a - b; 
}

res = miResta;
function miResta(a, b) {
return a - b;
}

res = miResta(10, 4);
console.log("La resta es " + res);

/* Primera función que arroje nuestro nombre completo
Declarando 3 variables
Nombre, apellido paterno, materno */
function nombreCompleto(a, b, c) {
    let nombre = a
    let apellidoPaterno = b
    let apellidoMaterno = c

    console.log("Mi nombre es " + nombre + " " + apellidoPaterno + " " + apellidoMaterno);

}
nombreCompleto("Fabiola", "Gómez", "Montiel")

/* Segunda función
Crear función en donde hagan la operación de cociente o división
 */

function division(a, b){
return a / b
}
console.log(division(9, 3));