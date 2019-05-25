<%-- 
    Document   : listaProcesos
    Created on : 11/05/2019, 07:03:52 PM
    Author     : Lesly Samaritano Ayala
--%>
<%@page import="coleccion.DatosProceso"%>
<!DOCTYPE html>
<%@page import="clases.Proceso"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
        <title>lista procesos</title>
        <!-- Favicon -->
        <link rel="icon" href="img/paltalogo.png">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">

    </head>
    <body class="color">
        <div id="mostrarProcesos" class="container" style="padding: 35px;">
            <div class="jumbotron text-center">
                <h4>PROCESOS QUE EXISTEN:</h4>
                <p>Los procesos estan dividos en: Recepciòn, Selecciòn, Empaquetado y pesado.</p> 
            </div>

            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <tr class="grilla_cabecera">
                        <th>Codigo Proceso</th>
                        <th>Nombre de Área</th>
                    </tr>

                    <%
                        //se va listar los pedidos en una lista
                        for (Proceso proceso : DatosProceso.listaproc) {
                    %>
                    <tr class="grilla_campo"> 
                        <td><% out.println(proceso.getCodArea()); %> </td>
                        <td><% out.println(proceso.getNombreArea());%></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
            <form action="index.jsp" method="post">
                <button type="submit" class="btn btn-success btn-lg">Regresar</button>
            </form>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>