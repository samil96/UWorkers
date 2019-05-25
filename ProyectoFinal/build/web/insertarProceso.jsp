<%-- 
    Document   : insertarProceso
    Created on : 18-may-2019, 3:04:13
    Author     : Lesly 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>insertar proceso</title>
        <!-- Favicon -->
        <link rel="icon" href="img/paltalogo.png">
    </head>
    <body class="color">
        <div class="container" style="padding-top: 35px;">
            <div class="jumbotron text-center row">
                <h1>PROCESO:</h1> 
                <p>Registrar un nuevo proceso</p>
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
                <form action="guardarDatosProcesos.jsp" method="post">
                    <div class="form-group">
                        <label for="codigo">Codigo Proceso</label>
                        <input class="form-control" type="text" name="codProc" placeholder="Codigo de Proceso" required>
                    </div>
                    <div class="form-group">
                        <label for="procesos">Elige un Proceso:</label>
                        <select class="form-control" id="procesos" name="procesos">
                            <option>Recepcion</option>
                            <option>Seleccion</option>
                            <option>Empaquetado</option>
                            <option>Pesado</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-success btn-lg btn-block">Guardar Datos</button>
                    <button type="reset" class="btn btn-success btn-lg btn-block">Borrar</button>
                </form>
            </div>
        </div>
    </body>
</html>