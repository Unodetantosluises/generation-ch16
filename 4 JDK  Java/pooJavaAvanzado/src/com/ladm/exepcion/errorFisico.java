package com.ladm.exepcion;

public class errorFisico extends Exception{
    public errorFisico(Exception ex){
        super("\t\t\t <- Ocurrio un Error Fisico -> ", ex);
    }
}
