package com.ladm.exepcion;

public class testLogin {
    public static void main(String[] args) {
        try {
        aplicacion app = new aplicacion();
        // intento el login
        usuario u = app.login("juan", "juan123sito");
        // muestro el resultado
        System.out.println("\t\t -->" + u.getNombre());
        System.out.println("\t\t -->" + u.getEmail());

       } catch (Exception ex) {
            // ocurrio un error
            System.out.print("Servicio temporalmente interrumpido: ");
            System.out.println(ex.getMessage());
        }
    }
}
