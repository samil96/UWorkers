<%-- 
    Document   : guardarSolicitudPedido
    Created on : 18-may-2019, 4:17:21
    Author     : luis
--%>

<%@page import="coleccion.DatosProceso"%>
<%@page import="clases.Proceso"%>
<%@page import="coleccion.DatosPedido"%>
<%@page import="java.sql.Date"%>
<%@page import="clases.Pedido"%>
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
                        //Creacion del objeto Pedido y pase de parametros del formulario SolicitarPedido.jspç
                        try {
                            Pedido pedido = new Pedido();
                            pedido.setCodPedido(Integer.valueOf(request.getParameter("codPed")));
                            pedido.setCantCajas(Integer.valueOf(request.getParameter("cantdCajas")));
                            pedido.setFechInicio(Date.valueOf(request.getParameter("fechPed")));
                           
                            //Pasar datos para que se listen
                            DatosPedido.listaped.add(pedido);
                        out.print("<h1>SE HA REGISTRADO CORRECTAMENTE LA SOLICITUD DE PEDIDO</h1>");
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
