<%-- 
    Document   : mostrarPedidos
    Created on : 16/05/2019, 04:33:16 PM
    Author     : LAB-USR-AQ265-A0804
--%>
<%@page import="coleccion.DatosPedido"%>
<%@page import="java.sql.Date"%>
<%@ page import="clases.Pedido" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>Mostrar Pedido</title>
        <!-- Favicon -->
        <link rel="icon" href="img/paltalogo.png">
    </head>
    <body class="color">
        <div id="mostrarPedido" class="container" style="padding: 35px;">
            <div class="jumbotron text-center">
                <h4>REQUERIMIENTOS PARA EL PEDIDO:</h4>
                <p>Se necesita los siguientes requerimientos:</p> 
            </div>

            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <tr class="grilla_cabecera">
                        <th>Codigo Pedido</th>
                        <th>Cantidad de Cajas</th>
                        <th>Fecha de Inicio</th>
                        <th>Fecha de Entrega</th>
                        <th>Total de Días</th>
                        <th>Total de Horas</th>
                        <th>Total de Horas Extras</th>
                        <th>Horas Aumentar a Cada Operario</th>
                    </tr>

                    <%
                        //se va listar los pedidos en una lista
                        for (Pedido pedido : DatosPedido.listaped) {   
                    %>
                    <tr class="grilla_campo"> 
                        <td><% out.println(pedido.getCodPedido()); %> </td>
                        <td><% out.println(pedido.getCantCajas());%></td>
                        <td><% out.println(pedido.getFechInicio());%></td>
                        <td><% out.println(pedido.getFechEntrega());%></td>
                        <td><% out.println(pedido.calcularDiasRequeridas());%> dias</td>
                        <td><% out.println(pedido.calcularHorasRequerida());%> horas</td>
                        <td><% out.println(pedido.horasExtraTotal());%> extras</td>
                        <td><% out.println(pedido.calcular_horas_aumentar());%> horas</td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
            <form action="SolicitarPedido.jsp" method="post">
                <button type="submit" class="btn btn-success btn-lg">Regresar</button>
            </form>
        </div>
    </body>
</html>
