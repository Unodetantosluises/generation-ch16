package com.ladm.h_abstractas;

abstract public class figurasGeometricas {
    private String nombre;
    private int numero;
    private String float area();
    public  abstract float area();

    public figurasGeometricas(String nombre){
        this.nombre = nombre;
    }

    @Override
    public String toString(){
        return nombre + "area -> " + area();
    }
}
