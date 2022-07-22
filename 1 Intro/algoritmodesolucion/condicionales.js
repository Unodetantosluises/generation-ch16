//Control de Flujo

/* let nombre = "Luis";
let edad = 25; */

let nombre = prompt("Escribe tu nombre");
console.log(nombre);

//casteo - Convertir un tipo de dato
let edad = parseInt(prompt("Escribe tu Edad:"));
console.log(edad);


if(nombre === "Luis" && edad === 25){
    //Scope - Contexto
    console.log("Eres ")
    console.log("Estudiante");
} else if (nombre === "Marina"){
    console.log("Eres la Jefa.")
} else if (nombre === "Victor"){
    console.log("Eres Admin.")
} else{
    console.log("No encontrado :(")
}

console.log("Fin del Programa")