// Variante que simula los pedidos

const saludo = "Hola Mundo";

const datos = [
    {
        nombre: "Luis",
        apellido: "Diaz"
    },
    {
        nombre: "Luis",
        apellido: "Diaz"
    },
    {
        nombre: "Luis",
        apellido: "Diaz"
    }
]

console.log(datos)


// Funcion para simular una peticion
function obtenerDatos() {

return new Promise((resolve, reject) => {
    setTimeout(()=>{
        if (true){
            resolve(datos)
        }else {
            reject("No se puede obtener datos")
        }
        }, 2000)  
})
}

// Forma 1
obtenerDatos().then((datos) => {
    console.log("Froma 2")
    console.log(datos);
// El catch se encarga de obtener llos errores
}).catch((error) => {
    console.log("Existe un error en la peticion en la peticon 1");
    console.log(error);
})

// Forma 2 - Funciones asincornas - await sync
async function funcionAsincrona() {
    try{
    console.log("Forma 2")
    const datos = await obtenerDatos()
    console.log(datos);
} catch(error){
    console.log(error);
}
}

funcionAsincrona()