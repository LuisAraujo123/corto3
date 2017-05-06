<%-- 
    Document   : guarPrestamo
    Created on : May 6, 2017, 11:39:20 AM
    Author     : bernardo
--%>

<%@page import="com.sv.udb.controlador.PrestamosCtrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objePres" class="com.sv.udb.modelo.Prestamos"/>
<jsp:setProperty property="*" name="objePres"/>
<%
    if(new PrestamosCtrl().guar(objePres))
    {
        response.sendRedirect("index.jsp");
    }
    else
    {
        System.err.println("No se guardó");
    }
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prestamo realizado!</h1>
    </body>
</html>
