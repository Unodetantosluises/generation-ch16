const url = "https://dog.ceo/api/breeds/list/all";

// Fetch es una funcion  que te regresa una promesa, cponsultando datos de internet
fetch(url).then((respuesta)=>{
    //console.log(respuesta)
})

// Obtener la informacion de la peticion
// Forma 1
fetch(url)
.then((resp)=> resp.json())
.then((datos)=>{

    console.log(datos);

}).catch((error)=>{
    console.log(error);
})

// Forma 2
async function obtenerPerritoAleatorio(){
    try{
    const respuesta = await fetch(url);
    const datos = await respuesta.json()

    console.log(datos);
}catch(error){
    console.log(error)
}
}

obtenerPerritoAleatorio()