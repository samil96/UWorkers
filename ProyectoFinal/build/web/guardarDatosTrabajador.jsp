<%-- 
    Document   : guardarDatosTrabajador
    Created on : 18-may-2019, 4:03:51
    Author     : luis
--%>

<%@page import="coleccion.DatosPedido"%>
<%@page import="clases.Pedido"%>
<%@page import="clases.Operario"%>
<%@page import="coleccion.DatosTrabajador"%>
<%@page import="clases.Trabajador"%>
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
                        //Creacion del objeto empleado y pase de parametros del formulario insertarTrabajador.jspç
                        try {
                            Trabajador operario = new Operario();
                            Pedido pedido = new Pedido();
                            operario.setCod_trabajador(Integer.parseInt(request.getParameter("codEmpleado")));
                            operario.setArea(request.getParameter("procesos"));
                            //Pasar datos para que se listen
                            DatosTrabajador.listatrab.add(operario);
                            DatosPedido.listaped.add(pedido);
                            out.print("<h1>BUSCANDO AL TRABAJADOR</h1>");
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

