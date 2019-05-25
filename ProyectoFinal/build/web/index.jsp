<%-- 
    Document   : index
    Created on : 03/05/2019, 04:27:34 PM
    Author     : Lesly Samaritano Ayala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>index</title>
        <!-- Favicon -->
        <link rel="icon" href="img/paltalogo.png">
    </head>
    <body style="background-color: #E3F2FD">
        <!--NAVIGATION-->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <div class="container">
                <a href="index.jsp" class="navbar-brand">
                    APP-TIME
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a href="SolicitarPedido.jsp" class="nav-link">Pedidos</a>
                        </li>
                        <li class="nav-item">
                            <a href="insertarTrabajador.jsp" class="nav-link">Trabajador</a>
                        </li>
                        <li class="nav-item">
                            <a href="insertarProceso.jsp" class="nav-link">Proceso</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%-- linea de separaciòn --%>
        <header id="home-section">
            <div class="dark-overlay">
                <div class="home-inner">
                    <div class="container" style="background-color: #00BFA5">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="display-4" style="color: black">Bienvenidos... Proyecto Final</h1>
                                <!--ITEM-->
                                <div class="p-4" style="color: black">
                                    <p>Objetivo: Minimizar los dìas que se requieren para terminar la producciòn con la cantidad de cajas solicitad por la procesadora.</p>
                                </div>
                            </div>
                            <!--END ITEM-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--Inicio de los thumbail-->
    <div class="container text-center">    

        <div class="row">
            <div class="col-xs-12 col-md-4">
                <div class="thumbnail">
                    <a href="SolicitarPedido.jsp"><img src="img/pedidos.png" class="img-responsive margin imagentamanio" alt="" style="width: 250px; height: 200px; "></a>
                    <div class="caption">
                        <p class="text-primary text-center lead" style="margin: 0"><strong>SOLICITAR PEDIDO</strong></p>
                        <p>Aquí vamos a realizar un pedido para cumplir con la solicitud de la procesadora.</p>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-4">
                <div class="thumbnail thumbnail-responsive">
                    <a href="insertarProceso.jsp"><img src="img/procesos.png" class="img-responsive margin" alt="" style="width: 250px; height: 200px; "></a>
                    <div class="caption">
                        <p class="text-primary text-center lead" style="margin: 0"><strong>INSERTAR PROCESO</strong></p>
                        <p>Aquí vamos a ingresar datos de los procesos para que queden registradas.</p>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-4">
                <div class="thumbnail">
                    <a href="insertarTrabajador.jsp"><img src="img/colaborador.png" class="img-responsive margin" alt="" style="width: 250px; height: 200px; "></a>
                    <div class="caption">
                        <p class="text-primary text-center lead" style="margin: 0"><strong>BUSCAR TRABAJADOR</strong></p>
                        <p>Ingresar datos del operario para visualizar sus actividades.</p>
                    </div>
                </div>
            </div> 
        </div>

        <%-- linea de separaciòn --%>
        <hr>

        <div class="row">
            <div class="col-xs-12 col-md-4">
                <div class="thumbnail">
                    <a href="listarPedidos.jsp"><img src="img/paltalogo.png" class="img-responsive margin imagentamanio" alt="" style="width: 250px; height: 200px; "></a>
                    <div class="caption">
                        <p class="text-primary text-center lead" style="margin: 0"><strong>REQUERIMIENTOS PEDIDOS</strong></p>
                        <p>Aquí se detalla los requisitos para el pedido de la procesadora.</p>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-4">
                <div class="thumbnail thumbnail-responsive">
                    <a href="listarProcesos.jsp"><img src="img/procesos.jpg" class="img-responsive margin" alt="" style="width: 250px; height: 200px; "></a>
                    <div class="caption">
                        <p class="text-primary text-center lead" style="margin: 0"><strong>REQUERIMIENTOS PROCESOS</strong></p>
                        <p>Aquí vamos a visualizar los procesos, que realizan los operaios en la línea como los requerimientos del pedido.</p>
                    </div>
                </div>
            </div> 
            <div class="col-xs-12 col-md-4">
                <div class="thumbnail">
                    <a href="listarTrabajador.jsp"><img src="img/procesadoraPaltas.jpg" class="img-responsive margin" alt="" style="width: 250px; height: 200px; "></a>
                    <div class="caption">
                        <p class="text-primary text-center lead" style="margin: 0"><strong>REQUERIMIENTOS TRABAJADOR</strong></p>
                        <p>Gestionar Empleados para cumplir con el fin de finalizar con los pedidos.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="color">
        <div class="row">
            <div class="col-md-12 p-5">
                <p class="text-center" style="color: white">&copy; Copyrigth 2019-Curso de Integrador 1 Sistemas - Lesly Samaritano Ayala</p>
            </div>
        </div>
    </footer>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
