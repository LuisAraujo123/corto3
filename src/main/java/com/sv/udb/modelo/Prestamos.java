/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.modelo;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author bernardo
 */
public class Prestamos implements Serializable {
    private int codiPres;
    private int codiLibr;
    private String nombLibr;
    private int codiUsua;
    private String nombUsua;
    private Date fechPres;
    private Date fechDevo;

    public Prestamos() {
    }

    public Prestamos(int codiPres, int codiLibr, String nombLibr, int codiUsua, String nombUsua, Date fechPres, Date fechDevo) {
        this.codiPres = codiPres;
        this.codiLibr = codiLibr;
        this.nombLibr = nombLibr;
        this.codiUsua = codiUsua;
        this.nombUsua = nombUsua;
        this.fechPres = fechPres;
        this.fechDevo = fechDevo;
    }

    public String getNombLibr() {
        return nombLibr;
    }

    public void setNombLibr(String nombLibr) {
        this.nombLibr = nombLibr;
    }

    public String getNombUsua() {
        return nombUsua;
    }

    public void setNombUsua(String nombUsua) {
        this.nombUsua = nombUsua;
    }
    
    public int getCodiPres() {
        return codiPres;
    }

    public void setCodiPres(int codiPres) {
        this.codiPres = codiPres;
    }

    public int getCodiLibr() {
        return codiLibr;
    }

    public void setCodiLibr(int codiLibr) {
        this.codiLibr = codiLibr;
    }

    public int getCodiUsua() {
        return codiUsua;
    }

    public void setCodiUsua(int codiUsua) {
        this.codiUsua = codiUsua;
    }

    public Date getFechPres() {
        return fechPres;
    }

    public void setFechPres(Date fechPres) {
        this.fechPres = fechPres;
    }

    public Date getFechDevo() {
        return fechDevo;
    }

    public void setFechDevo(Date fechDevo) {
        this.fechDevo = fechDevo;
    }
    
    
}
