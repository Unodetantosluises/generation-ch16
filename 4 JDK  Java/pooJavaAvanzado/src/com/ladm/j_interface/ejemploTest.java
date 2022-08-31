package com.ladm.j_interface;

import java.util.ArrayList;

public class ejemploTest {
    public static void main(String[] args) {
        System.out.println("Test.CONV =" + Test.CONV);
        System.out.println("Prueba.CONV =" + Prueba.CONV);
        Prueba p = new Prueba();
        System.out.println("p = " + p.CONV);

        Test ts = new Prueba();
        ts.metodo1("Hola");
        ts.metodo2(6);
        p.metodoPropio();

        Test1 s1 = new Prueba();
        s1.metodo01();

    }
}
