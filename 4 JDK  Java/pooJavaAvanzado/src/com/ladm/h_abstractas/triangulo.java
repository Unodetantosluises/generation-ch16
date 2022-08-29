package com.ladm.h_abstractas;

public class triangulo extends figurasGeometricas{
    private float base;
    private float altura;
    // Constructor
    public triangulo() {

    }
    public triangulo (float base, float altura){
        this.base = base;
        this.altura = altura;
    }
    //Se sobreescriben
    @Override
    public float area() {
        return(getBase()*getAltura())/2;
    }

    public void setBase(float base){
        this.base = base;
    }
    public float getBase(){
        return base;
    }
    public void setAltura(float altura){
        this.altura = altura;
    }
    public float getAltura() {
        return altura;
    }

}
