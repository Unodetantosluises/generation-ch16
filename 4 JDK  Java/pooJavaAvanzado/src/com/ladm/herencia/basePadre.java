package com.ladm.herencia;

public class basePadre {
    protected int a;
    private double b;
    private String c;
    public basePadre() {

    }
    public void visualizarA(){
        System.out.println("Metodo visualizarA de la clase basePadre.");

    }
    public void visualizarABC(){

        System.out.println("Metodo visualizarABC de la clase basePadre.");
    }
    public int getA(){
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }
}
