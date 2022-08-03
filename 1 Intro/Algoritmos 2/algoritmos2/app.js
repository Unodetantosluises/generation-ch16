const newArr = [1, 45, "Hola", "Adios", true, null, [30, 31, 32],
["Azul", "Amarillo", "Verde"]];

/* console.log(newArr);
console.log(newArr[6][1]);
console-log(newArr [8][1]); */

//Objetos
//Estrcutura especial llamada objeto 1
//nos permiten guardad pares de valores
//key = value
//llave = valor
const obj = { nombre : "Pedro",
            edad : 25,
            color : "Azul",
            hobbies : ["Leer", "Correr"],
            //Se puede llamar un arreglo dentro del arreglo.
            newArr : newArr
};

console.log(obj);
console.log(obj.edad);