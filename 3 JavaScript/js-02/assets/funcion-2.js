function miFuncion (a, b) {
    return(a + b);
}

let resultado = miFuncion(4, 6);
console.log("El resultado es " + resultado);

/* Funcion Expresion */

let suma = function(a, b) {return(a + b)};

let res = suma(222,39);

let caracteres = "El Resultado de la operacion es "

console.log(caracteres + res);

/* Actividad realizar las operaciones de Multiplicacion(op1), Resta(op2) y Division(op3) */

let multi = function (a, b) {return(a * b)};

let op1 = multi(4, 6);

console.log(caracteres + op1);

let resta = function (a,b) {return(a - b)};

let op2 = resta(9, 5);

console.log(caracteres + op2);

let div = function (a, b) {return(a/b)};

let op3 = div(74, 48);

console.log(caracteres + op3.toFixed(2));
/* .tofixed nos permite limitar el numero de decimales que aparecen en pantalla */

/* Self Invoking */
(function (a, b){
    console.log("El resultado de Self Invoking es " + (a + b));
}
)(3,4)


