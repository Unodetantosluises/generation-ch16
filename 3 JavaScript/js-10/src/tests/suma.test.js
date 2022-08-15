const suma = require('../js/suma');

// Metodo Test

test('sumar 1 + 3 debe ser 4', () =>{
    expect(suma(1,3)).toBe(4);
})

test('1+4 no debe ser 0', ()=>{
    expect(suma(1,4)).not.toBe(0);
})