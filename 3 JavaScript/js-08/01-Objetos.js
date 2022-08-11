let x = 10;
console.log(x.length);

/* 
let persona = {
    nombre: "Gabriela",
    edad: 25,
    correoElectronico: "gaby97@gmail.com"
}z

console.log(persona);
console.log(persona.nombre);

let personas = new Object();
personas.nombre = "Oscar";

console.log(personas.nombre); */

let persona = {
    nombre: 'Juan',
    apellido: 'Fernandez',
    edad: 24,
    mail: 'sdsdsadd@gmail.com',
    /* nombreCompleto: function(){
        return this.nombre + '' + this.apellido;
    } */
    idioma: 'es',
    get leng (){
        return this.idioma.toUpperCase();
    },
    set lang(Lang){
        this.idioma = Lang.toLowerCase();
    }
}

persona.lang = 'ES';
console.log(persona.leng);
console.log(persona.idioma);

persona.tel = '45871021';
persona.tel = '54175112';

let algo = new Object();
console.log(persona.nombre);
console.log(persona.nombreCompleto());