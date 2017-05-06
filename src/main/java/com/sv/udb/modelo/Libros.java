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
public class Libros {
    private int codiLibr;
    private String nombLibr;
    private String autoLibr;
    private String geneLibr;
    private int anioLibr;
    private int estaLibr;

    public Libros() {
    }

    public Libros(int codiLibr, String nombLibr, String autoLibr, String geneLibr, int anioLibr, int estaLibr) {
        this.codiLibr = codiLibr;
        this.nombLibr = nombLibr;
        this.autoLibr = autoLibr;
        this.geneLibr = geneLibr;
        this.anioLibr = anioLibr;
        this.estaLibr = estaLibr;
    }

    public int getCodiLibr() {
        return codiLibr;
    }

    public void setCodiLibr(int codiLibr) {
        this.codiLibr = codiLibr;
    }

    public String getNombLibr() {
        return nombLibr;
    }

    public void setNombLibr(String nombLibr) {
        this.nombLibr = nombLibr;
    }

    public String getAutoLibr() {
        return autoLibr;
    }

    public void setAutoLibr(String autoLibr) {
        this.autoLibr = autoLibr;
    }

    public String getGeneLibr() {
        return geneLibr;
    }

    public void setGeneLibr(String geneLibr) {
        this.geneLibr = geneLibr;
    }

    public int getAnioLibr() {
        return anioLibr;
    }

    public void setAnioLibr(int anioLibr) {
        this.anioLibr = anioLibr;
    }

    public int getEstaLibr() {
        return estaLibr;
    }

    public void setEstaLibr(int estaLibr) {
        this.estaLibr = estaLibr;
    }

    @Override
    public String toString() {
        return this.nombLibr;
    }
    
    
}
