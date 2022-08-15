const palindromo = (palabra) => {

    if(typeof palabra === 'number') {
        return 'No es una palabra';
    }

    let palabraInvertida = palabra.split("").reverse().join("");
    
    // Operador Ternario, es una forma mas compacta de realiar operaciones

    return (palabra == palabraInvertida) ? 'Es un palindromo' : 'No es un palindromo';

/* 
Uso de If en lugar de utilizar el Operador Terniario
if(palabra == palabraInvertida){
    return 'Es un palindromo'
}else{
    return 'No es un palindromo'
} */
}

console.log(palindromo('ojo'));

module.exports = palindromo;