package com.ladm.h_abstractas;

public class ejemploFiguras {
    public static void main(String[] args) {
        triangulo t = new triangulo(5,10 );
        System.out.println(t);

        circulo c=  new circulo();
        c.setRadio(15.5f);
        System.out.println(c);
    }
}
