//Manejador Eventos
function saludar() {
    alert('Hola');
}

// addeventListener
/* const boton = document.getElementById('Boton');
console.log(boton);

boton.addEventListener('click', () =>{
    // alert('Hola')
    console.log(evento.target);
}) */

const formulario = document.getElementById('form');

formulario.addEventListener('submit', (e) => {e.preventDefault()
    
})