package com.ladm.ladm.principal;

import com.ladm.herencia.basePadre;
import com.ladm.herencia.hija;
import com.ladm.herencia.hijo;

public class ejemploHerencia {
    public static void main(String[] args) {
        //estoy creando un objeto "h" de la clase hija
        hija h = new hija();
        h.visualizarA();

        hijo ho = new hijo();
        System.out.println("Llama al metodo visualizarABC,");
        ho.visualizarABC();

        basePadre obj = new basePadre();
        obj.setA(777);

        Object miObj = new basePadre();

        System.out.println("Atributo de Clase base Padre -> " + h.getA());
        System.out.println("Atributo de Clase Hijo ->" + ho.getA());

    }
}
