<%-- 
    Document   : libros
    Created on : May 6, 2017, 10:40:07 AM
    Author     : bernardo
--%>
<%@page import="com.sv.udb.controlador.LibrosCtrl"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='webjars/Materialize/0.96.0/dist/css/materialize.min.css'>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="webjars/Materialize/0.96.0/dist/js/materialize.min.js"></script>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'/>
        <title>JSP Page</title>
    </head>
    <body>
    <header class='navbar-fixed'>
        <nav class='brown'>
            <div class='nav-wrapper'>
                <a href='#' class='brand-logo'><i class='material-icons left hide-on-med-and-down'>inicio</i></a>
                <a href='#' data-activates='mobile' class='button-collapse'><i class='material-icons'>Inicio</i></a>
                <ul class='right hide-on-med-and-down'>
                    <li><a href='libros.jsp'><i class='material-icons left'>Libros</i></a></li>
                    <li><a href='index.jsp'><i class='material-icons left'>Prestamos</i></a></li>
                    <li><a href='#'><i class='material-icons left'>Usuarios</i></a></li>
                </ul>
            </div>
        </nav>
    </header>
    <ul class='side-nav' id='mobile'>
        <li><a href='libros.jsp'><i class='material-icons left'>Libros</i></a></li>
        <li><a href='index.jsp'><i class='material-icons left'>Prestamos</i></a></li>
        <li><a href='#'><i class='material-icons left'>Usuarios</i></a></li>
    </ul>
    <main class='container'>
        <h3 class='center-align'>Libros</h3>
        <form method="POST" action="PiezasServ" name="Tabl">
             <% request.setAttribute( "test", new LibrosCtrl().consTodo()); %>
            <display:table name="test" id="test" pagesize="10">
                <display:column property="codiLibr" title="ID" sortable="true" sortName="codiLibr"/>
                <display:column property="nombLibr" title="Libro" sortable="true" sortName="nombLibr"/>
                <display:column property="autoLibr" title="Autor" sortable="true" sortName="autoLibr"/>
                <display:column property="geneLibr" title="Genero" sortable="true" sortName="geneLibr"/>
                <display:column property="anioLibr" title="Año" sortable="true" sortName="anioLibr"/>
                <display:column property="estaLibr" title="Estado" sortable="true" sortName="estaLibr"/>
            </display:table>
        </form>
    </main>
    <footer class='page-footer brown'>
        <div class='container'>
            <div class='row'>
                <div class='col s12 m6'>
                    <h5 class='white-text'>Dashboard</h5>
                    <a class='white-text' href='mailto:dacasoft@outlook.com'><i class='material-icons left'>help</i>Ayuda</a>
                </div>
                <div class='col s12 m6'>
                    <h5 class='white-text'>Enlaces</h5>
                    <a class='white-text' href='' target='_blank'><i class='material-icons left'>store</i>Java web</a>
                </div>
            </div>
        </div>
        <div class='footer-copyright'>
            <div class='container'>
                <span>©ITR, todos los derechos reservados.</span>
                <span class='white-text right'>Diseñado con <a class='red-text text-accent-1' href='http://materializecss.com/' target='_blank'><b>Materialize</b></a></span>
            </div>
        </div>
    </footer>
    <script>
        $(document).ready(function(){
            $('.button-collapse').sideNav();
            $('.materialboxed').materialbox();
            $('select').material_select();
        });
        </script>
    </body>
</html>