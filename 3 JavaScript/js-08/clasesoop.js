class Persona {
    constructor(nombre, apellido) {
        this.nombre = nombre ;
        this.apellido = apellido;
    }
    get nombre() {
        return this.nombre;
    }set _nombre(nombre){
        this._nombre = nombre;
    }
}

let persona1 = new Persona('Jose', 'Perez');
console.log(persona1);

let persona2 = new Persona('Natalia', 'Cruz')
console.log(persona2);