package com.ladm.h_abstractas;

public class ejemploFiguras {
    public static void main(String[] args) {
        triangulo t = new triangulo();
        t.setBase(5);
        t.setAltura(2);
        System.out.println ("t es el objeto de triangulo = " + t.area());

        circulo c=  new circulo();
        c.setRadio(15.5f);
        System.out.println("c.area() calcula el area del circulo =" + c.area());
    }
}
