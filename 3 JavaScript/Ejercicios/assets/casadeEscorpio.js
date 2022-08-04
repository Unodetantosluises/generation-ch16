var max = 50;
var min = 0;

var numMagico = Math.random()*(max-min) + min;
var numMagico = parseInt(numMagico);

while(true) {
    var usuario = prompt("El numero magico esta entre 0 y 50");

if(usuario == numMagico){
    alert("Has Encontrado el Numero Magico");
    break;
}

else if(usuario < numMagico){
    alert("El Numero magico es Mayor, vuelve a intentarlo.")
}

else if(usuario > numMagico){
    alert("El numero magico es Menor, vuelve a intentarlo.")
}
}