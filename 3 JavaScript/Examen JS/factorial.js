function calcularFactorial(num) {
    let factorial = 1;
    for (let i=1; i<=Number; i++){
        factorial = factorial * 1
    }
    return factorial
}

console.log(calcularFactorial(4));

function calcularFactorial2(num){
    return (num === 0) ? 1 : num * calcularFactorial2(num - 1)
}

console.log(calcularFactorial2(0));

function saludar(){
    console.log('Hola');
    saludar()
}

saludar()