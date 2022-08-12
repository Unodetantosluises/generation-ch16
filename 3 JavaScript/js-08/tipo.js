// Tipo Cadena
let cadena = 'Esto es una cadena';
let cadena_Obj = new String('Esto es otra cadena obj');
console.log(cadena);
console.log(cadena_Obj);

// Tipo Numerico
let numero = 13;
let numero_Obj = new Number(13, 13);
console.log(numero);
console.log(numero_Obj);

let lista = ['2', '3', '5', '7'];
let lista_Obj = new Array ('1', '4', '5', '6', '8', '9');
console.log(lista);
console.log(cadena_Obj);

// Tipo Predefinido
let tiempo = new Date();
console.log(tiempo);
console.log(Math);

// Tipos de Datos predefinidos: Estaticos y Primitivos.
let obj_literal = {
    nombre: 'Juan', 
    edad: 27
}

// los constructores son funciones de una clase, pueden o no estar declarado dentro de una clase
let obj_constructor = new Object();
obj_constructor.nombre = 'Norman';
obj_constructor.edad = '29'
console.log(obj_literal);
console.log(obj_constructor);

obj_literal[nombre];
let llave = 'nombre';
console.log('esto es una llave' + obj_literal[llave]);