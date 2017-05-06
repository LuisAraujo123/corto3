<%@page import="java.util.List"%>
<%@page import="com.sv.udb.controlador.UsuariosCtrl"%>
<%@page import="com.sv.udb.modelo.Usuarios"%>
<%@page import="com.sv.udb.controlador.LibrosCtrl"%>
<%@page import="com.sv.udb.modelo.Libros"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.sv.udb.controlador.PrestamosCtrl"%>
<%@page import="com.sv.udb.modelo.Prestamos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
        <h3 class='center-align'>Prestamos</h3>
        <div class="row">
            <div class="col s12 m6 l6">
                <h4 class="center-align">Realizar prestamo</h4>
                 <form method="POST" action="guarPrestamo.jsp" name="Demo">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class='material-icons prefix'></i>
                            <input id='codi' type='text' name='codi' value="${codi}"/>
                            <label for='codi'>Código del prestamo</label>
                        </div>
                        <div class="input-field col s12     ">
                            <select id="codiLibr" name="codiLibr" required> 
                            <option value="" disabled selected>Seleccione un libro</option>
                            <%
                                for(Libros temp : new LibrosCtrl().consTodo())
                                {

                            %> 
                            <option value="<%=temp.getCodiLibr()%>"><%=temp.getNombLibr()%></option>
                            <%
                                }
                            %>
                            </select>
                        </div>
                        <div class="input-field col s12">
                            <select id="codiUsua" name="codiUsua" required> 
                            <option value="" disabled selected>Seleccione un Usuario</option>
                            <%
                                for(Usuarios temp : new UsuariosCtrl().consTodo())
                                {
                            %> 
                            <option value="<%=temp.getCodiUsua()%>"><%=temp.getNombUsua()%></option>
                            <%
                                }
                            %>
                            </select>
                        </div>
                    </div>
                    <div class='row center-align'>
                        <input class='btn waves-effect grey' ${estGuar} type="submit" name="btonPres" value="Guardar">
                    </div>
                </form>
            </div>
        </div>
        <h3>Lista de prestamos</h3>
        <form method="POST" action="PrestamosServ" name="Tabl">
            <table class="highlight" border="1">
            <tr>
                <th>Cons</th>
                <th>Libro</th>
                <th>Usuario</th>
                <th>Fecha de prestamo</th>
                <th>Fecha de devolución</th>
            </tr>
            <%
                List<Prestamos> listEqui = new PrestamosCtrl().consTodo();
                pageContext.setAttribute("listEquiJSTL", listEqui);
            %>
            <c:forEach items="${listEquiJSTL}" var="temp">
                <tr>
                    <td><p><input type="radio" name="codiPresRadi" class='with-gap' id="${temp.getCodiPres()}" value="${temp.getCodiPres()}"><label for="${temp.getCodiPres()}"></label></p></td>
                    <td>${temp.getNombLibr()}</td>
                    <td>${temp.getNombUsua()}</td>
                    <td>${temp.getFechPres()}</td>
                    <td>${temp.getFechDevo()}</td>
                </tr>
            </c:forEach>
            </table>
            <input type="submit" name="btonPres" value="Consultar">
            <!--input ${estElim} type="submit" onclick="return confirm('¿Esta seguro de eliminar este registro?');" name="btonPres" value="Eliminar"-->
            <input type="submit" name="btonPres" value="Nuevo">
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
            $('.datepicker').pickadate({
                selectMonths: true, // Creates a dropdown to control month
                selectYears: 15 // Creates a dropdown of 15 years to control year
            });
        });
        </script>
    </body>
</html>
