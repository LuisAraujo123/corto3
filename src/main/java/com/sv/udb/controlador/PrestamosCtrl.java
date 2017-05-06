/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.controlador;

import com.sv.udb.modelo.Prestamos;
import com.sv.udb.recursos.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bernardo
 */
public class PrestamosCtrl {
    
    public boolean guar(Prestamos obje){
        boolean resp = false;
        Connection cn = new Conexion().getConn();
        try {
            PreparedStatement cmd = cn.prepareStatement("INSERT INTO prestamos VALUES(NULL, ?, ?, now(), null)");
            cmd.setInt(1, obje.getCodiLibr());
            cmd.setInt(2, obje.getCodiUsua());
            cmd.executeUpdate();
            resp = true;
            
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        finally 
        {
            try 
            {
                if (cn!=null)
                {
                    if (!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } 
            catch (Exception e) 
            {
                System.err.println("Error: " + e.getMessage());
            }
        }
        return resp;
    }
    
    public boolean upda(Prestamos obje){
        boolean resp = false;
        Connection cn = new Conexion().getConn();
        try {
            PreparedStatement cmd = cn.prepareStatement("update prestamos set fech_devo = ? codi_pres = ?;");
            cmd.setDate(1, obje.getFechDevo());
            cmd.setInt(2, obje.getCodiPres());
            cmd.executeUpdate();
            resp = true;
            
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        finally 
        {
            try 
            {
                if (cn!=null)
                {
                    if (!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } 
            catch (Exception e) 
            {
                System.err.println("Error: " + e.getMessage());
            }
        }
        return resp;
    }
    
    public List<Prestamos> consTodo(){
        List<Prestamos> resp = new ArrayList<>();
        Connection cn = new Conexion().getConn();
        try {
            PreparedStatement cmd = cn.prepareStatement("Select prestamos.codi_pres, prestamos.codi_libr, nomb_libr, prestamos.codi_usua, nomb_usua, fech_pres, fech_devo from prestamos, libros, usuarios where prestamos.codi_libr = libros.codi_libr and prestamos.codi_usua = usuarios.codi_usua;");
            ResultSet rs = cmd.executeQuery();
            while (rs.next())
            {
                resp.add(new Prestamos(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7)));
            }
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        finally 
        {
            try 
            {
                if (cn!=null)
                {
                    if (!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } 
            catch (Exception e) 
            {
                System.err.println("Error: " + e.getMessage());
            }
        }
        return resp;
    }

    public Prestamos consUno(int id){
        Prestamos resp = null;
        Connection cn = new Conexion().getConn();
        try {
            PreparedStatement cmd = cn.prepareStatement("Select prestamos.codi_pres, prestamos.codi_libr, nomb_libr, prestamos.codi_usua, nomb_usua, fech_pres, fech_devo from prestamos, libros, usuarios where prestamos.codi_libr = libros.codi_libr and prestamos.codi_usua = usuarios.codi_usua and codi_pres = ?");
            cmd.setInt(1, id);
            ResultSet rs = cmd.executeQuery();
            if(rs.next())
            {
                resp = new Prestamos(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7));
            }
        } catch (Exception ex) {
            System.err.println("Error: " + ex.getMessage());
        }
        finally 
        {
            try 
            {
                if (cn!=null)
                {
                    if (!cn.isClosed())
                    {
                        cn.close();
                    }
                }
            } 
            catch (Exception e) 
            {
                System.err.println("Error: " + e.getMessage());
            }
        }
        return resp;
    }
}
