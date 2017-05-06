/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.modelo;

/**
 *
 * @author bernardo
 */
public class Usuarios {
    private int codiUsua;
    private String nombUsua;
    private String acceUsua;
    private String contUsua;

    public Usuarios() {
        
    }

    public Usuarios(int codiUsua, String nombUsua, String acceUsua, String contUsua) {
        this.codiUsua = codiUsua;
        this.nombUsua = nombUsua;
        this.acceUsua = acceUsua;
        this.contUsua = contUsua;
    }

    public int getCodiUsua() {
        return codiUsua;
    }

    public void setCodiUsua(int codiUsua) {
        this.codiUsua = codiUsua;
    }

    public String getNombUsua() {
        return nombUsua;
    }

    public void setNombUsua(String nombUsua) {
        this.nombUsua = nombUsua;
    }

    public String getAcceUsua() {
        return acceUsua;
    }

    public void setAcceUsua(String acceUsua) {
        this.acceUsua = acceUsua;
    }

    public String getContUsua() {
        return contUsua;
    }

    public void setContUsua(String contUsua) {
        this.contUsua = contUsua;
    }

    @Override
    public String toString() {
        return this.nombUsua;
    }
}
