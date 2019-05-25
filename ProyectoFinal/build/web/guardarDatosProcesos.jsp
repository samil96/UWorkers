<%-- 
    Document   : paginaDestinoProcesos
    Created on : 03-may-2019, 2:13:52
    Author     : Lesly Samaritano Ayala
--%>
<%@page import="clases.Proceso"%>
<%@page import="coleccion.DatosProceso"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>Datos guardados</title>
        <!-- Favicon -->
        <link rel="icon" href="img/paltalogo.png">
    </head>
    <body class="color">
        <div class="container ">
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <%
                        //Creacion del objeto Pedido y pase de parametros del formulario insertarProceso.jspç
                        try {
                            Proceso proceso = new Proceso();
                            proceso.setCodArea(Integer.parseInt(request.getParameter("codProc")));
                            proceso.setNombreArea(request.getParameter("procesos"));
                            //Pasar datos para que se listen
                            DatosProceso.listaproc.add(proceso);
                            out.print("<h1>SE HA REGISTRADO CORRECTAMENTE EL PROCESO</h1>");
                        } catch (NumberFormatException exp) {
                            out.print("<h1>vuelva intentar el formato no es el correcto</h1>");
                            out.print("</br><a href='insertarProceso.jsp'>Volver al formulario</a>");
                        } catch (Exception e) {
                            out.print("<h1>" + e.getMessage() + "</h1>");
                            out.print("</br><a href='insertarProceso.jsp'>Volver al formulario</a>");
                        }
                    %> 
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <form action="index.jsp" method="post">
                        <button type="submit" class="btn btn-success btn-lg">Regresar</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
