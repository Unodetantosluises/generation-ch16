package com.ladm.h_abstractas;

public class circulo extends figurasGeometricas {
    private float radio;

    @Override
    public float area(){
        return Math.PI*Math.pow(radio, 2);
    }
    public circulo(){

    }

    public float getRadio() {
        return radio;
    }

    public void setRadio(float radio) {
        this.radio = radio;
    }
}
