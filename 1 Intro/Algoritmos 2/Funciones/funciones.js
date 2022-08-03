function sumar (numero1, numero2) {
    console.log("Voy a sumar");
    console.log("El resultado de la suma es: " + (numero1 + numero2));
}

sumar(10, 5);
sumar(1,1)
sumar(4,5)

function calcularSueldo() {
    let nombre = ("Escribe tu nombre")
    console.log(nombre);

    const sueldo = sueldoIngresado;
    const diaSemana = diasTrabajados;
    const semanasMes = 4;

    console.log("Sueldo semanal: " +(sueldoIngresado * diasTrabajados));
    console.log("Sueldo mensual: " + (sueldoIngresado * diasTrabajados * semanasMes))
}

calcularSueldo(100, 2);
console.log(mes);

//Calculadora de Porcentajes
//0.6 = 60%
function calcularPorcentaje(numero, porcentaje){
    let resultado = numero * porcentaje;//local

    return resultado;
}

let resultadoFuncion = calcularPorcentaje(100, 0.40)
console.log(resultadoFuncion);

let multi = 5*5;
console.log(multi);