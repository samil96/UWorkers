<%-- 
    Document   : listarTrabajador
    Created on : 18-may-2019, 4:06:17
    Author     : Lesly
--%>

<%@page import="coleccion.DatosTrabajador"%>
<%@page import="clases.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
        <title>lista operario</title>
        <!-- Favicon -->
        <link rel="icon" href="img/paltalogo.png">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">

    </head>
    <body class="color">
        <div id="mostrarProcesos" class="container" style="padding: 35px;">
            <div class="jumbotron text-center">
                <h1>TRABAJADORES:</h1>
                <p>Lista de empleados y sus requerimeintos de la planta Torre Blanca:</p>  
            </div>

            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <tr class="grilla_cabecera">
                        <th>Codigo Empleado</th>
                        <th>Àrea</th>            
                        <th>Horas laboradas</th>
                        <th>Horas Extras</th>
                        <th>Total de Días</th>
                        <th>Total de Pago</th>
                    </tr>

                    <%
                        //se va listar los pedidos en una lista
                        for (Trabajador operario : DatosTrabajador.listatrab) {
                    %>
                    <tr class="grilla_campo"> 
                        <td><% out.println(operario.getCod_trabajador()); %> </td>
                        <td><% out.println(operario.getArea());%></td>                    
                        <td><% out.println(operario.calcular_horas_trabajadas());%></td>
                        <td><% out.println(operario.calcular_horas_extras());%></td>
                        <td><% out.println(operario.calcular_dias_trabajadas());%></td>
                        <td><% out.println(operario.hallarPago());%></td>
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
