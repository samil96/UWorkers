<%-- 
    Document   : SolicitarPedido
    Created on : 03-may-2019, 1:27:15
    Author     : Lesly Samaritano Ayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>Solicitar Pedido</title>
        <!-- Favicon -->
        <link rel="icon" href="img/paltalogo.png">
    </head>

    <body class="color">
        <div class="container" style="padding: 35px;">
            <div class="jumbotron text-center row">
                <h1>PEDIDOS:</h1>
                <p>Ingrese los datos para realizar el pedido de cajas de frutas</p> 
            </div>
            <div class="row">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="index.jsp">Inicio</a></li>
                    <li><a href="SolicitarPedido.jsp">Pedidos</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="insertarProceso.jsp">Procesos 
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="insertarProceso.jsp">Recepción</a></li>
                            <li><a href="#">Selección</a></li>
                            <li><a href="#">Empaquetado</a></li>
                            <li><a href="#">Pesado</a></li>
                        </ul>
                    </li>
                    <li><a href="insertarTrabajador.jsp">Empleados</a></li>
                </ul>
            </div>
            <br>
            <div class="tamanio row">
                <form action="guardarSolicitudPedido.jsp" method="post">
                    <div>
                        <input type="hidden" name="metodo" value="registra">
                    </div>
                    <div class="form-group">
                        <label for="codPed">Codigo Pedido:</label>
                        <input class="form-control" type="text" name="codPed" placeholder="Codigo de Pedido" required>
                    </div>
                    <div class="form-group">
                        <label for="cantdCajas">Cantidad de Cajas a Pedir:</label>
                        <input class="form-control" type="text" name="cantdCajas" placeholder="Cantidad de Cajas" required>
                    </div>
                    <div class="form-group">
                        <label for="fechIni">Fecha de Inicio:</label>
                        <input class="form-control" type="date" name="fechPed" placeholder="dd/mm/yyyy" required>
                    </div>
                    <button type="submit" class="btn btn-success btn-lg btn-block">Realizar Solicitud</button>                   
                    <button type="reset" class="btn btn-success btn-lg btn-block">Borrar</button>
                </form>
            </div>
        </div>
    </body>
</html>
