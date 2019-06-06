package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <!-- Bootstrap CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/estilos.css\">\r\n");
      out.write("        <title>index</title>\r\n");
      out.write("        <!-- Favicon -->\r\n");
      out.write("        <link rel=\"icon\" href=\"img/paltalogo.png\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body style=\"background-color: #E3F2FD\">\r\n");
      out.write("        <!--NAVIGATION-->\r\n");
      out.write("        <nav class=\"navbar navbar-expand-sm bg-dark navbar-dark fixed-top\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <a href=\"index.jsp\" class=\"navbar-brand\">\r\n");
      out.write("                    APP-TIME\r\n");
      out.write("                </a>\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggler\" data-toggle=\"collapse\" data-target=\"#navbarCollapse\">\r\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarCollapse\">\r\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"index.jsp\" class=\"nav-link\">Inicio</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"SolicitarPedido.jsp\" class=\"nav-link\">Pedidos</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"insertarTrabajador.jsp\" class=\"nav-link\">Trabajador</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"insertarProceso.jsp\" class=\"nav-link\">Proceso</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        <header id=\"home-section\">\r\n");
      out.write("            <div class=\"dark-overlay\">\r\n");
      out.write("                <div class=\"home-inner\">\r\n");
      out.write("                    <div class=\"container\" style=\"background-color: #00BFA5\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-lg-12\">\r\n");
      out.write("                                <h1 class=\"display-4\" style=\"color: black\">Bienvenidos... Proyecto Final</h1>\r\n");
      out.write("                                <!--ITEM-->\r\n");
      out.write("                                <div class=\"p-4\" style=\"color: black\">\r\n");
      out.write("                                    <p>Objetivo: Minimizar los dìas que se requieren para terminar la producciòn con la cantidad de cajas solicitad por la procesadora.</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!--END ITEM-->\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <!--Inicio de los thumbail-->\r\n");
      out.write("    <div class=\"container text-center\">    \r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-xs-12 col-md-4\">\r\n");
      out.write("                <div class=\"thumbnail\">\r\n");
      out.write("                    <a href=\"SolicitarPedido.jsp\"><img src=\"img/pedidos.png\" class=\"img-responsive margin imagentamanio\" alt=\"\" style=\"width: 250px; height: 200px; \"></a>\r\n");
      out.write("                    <div class=\"caption\">\r\n");
      out.write("                        <p class=\"text-primary text-center lead\" style=\"margin: 0\"><strong>SOLICITAR PEDIDO</strong></p>\r\n");
      out.write("                        <p>Aquí vamos a realizar un pedido para cumplir con la solicitud de la procesadora.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-xs-12 col-md-4\">\r\n");
      out.write("                <div class=\"thumbnail thumbnail-responsive\">\r\n");
      out.write("                    <a href=\"insertarProceso.jsp\"><img src=\"img/procesos.png\" class=\"img-responsive margin\" alt=\"\" style=\"width: 250px; height: 200px; \"></a>\r\n");
      out.write("                    <div class=\"caption\">\r\n");
      out.write("                        <p class=\"text-primary text-center lead\" style=\"margin: 0\"><strong>INSERTAR PROCESO</strong></p>\r\n");
      out.write("                        <p>Aquí vamos a ingresar datos de los procesos para que queden registradas.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-xs-12 col-md-4\">\r\n");
      out.write("                <div class=\"thumbnail\">\r\n");
      out.write("                    <a href=\"insertarTrabajador.jsp\"><img src=\"img/colaborador.png\" class=\"img-responsive margin\" alt=\"\" style=\"width: 250px; height: 200px; \"></a>\r\n");
      out.write("                    <div class=\"caption\">\r\n");
      out.write("                        <p class=\"text-primary text-center lead\" style=\"margin: 0\"><strong>BUSCAR TRABAJADOR</strong></p>\r\n");
      out.write("                        <p>Ingresar datos del operario para visualizar sus actividades.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        <hr>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-xs-12 col-md-4\">\r\n");
      out.write("                <div class=\"thumbnail\">\r\n");
      out.write("                    <a href=\"listarPedidos.jsp\"><img src=\"img/paltalogo.png\" class=\"img-responsive margin imagentamanio\" alt=\"\" style=\"width: 250px; height: 200px; \"></a>\r\n");
      out.write("                    <div class=\"caption\">\r\n");
      out.write("                        <p class=\"text-primary text-center lead\" style=\"margin: 0\"><strong>REQUERIMIENTOS PEDIDOS</strong></p>\r\n");
      out.write("                        <p>Aquí se detalla los requisitos para el pedido de la procesadora.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-xs-12 col-md-4\">\r\n");
      out.write("                <div class=\"thumbnail thumbnail-responsive\">\r\n");
      out.write("                    <a href=\"listarProcesos.jsp\"><img src=\"img/procesos.jpg\" class=\"img-responsive margin\" alt=\"\" style=\"width: 250px; height: 200px; \"></a>\r\n");
      out.write("                    <div class=\"caption\">\r\n");
      out.write("                        <p class=\"text-primary text-center lead\" style=\"margin: 0\"><strong>REQUERIMIENTOS PROCESOS</strong></p>\r\n");
      out.write("                        <p>Aquí vamos a visualizar los procesos, que realizan los operaios en la línea como los requerimientos del pedido.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> \r\n");
      out.write("            <div class=\"col-xs-12 col-md-4\">\r\n");
      out.write("                <div class=\"thumbnail\">\r\n");
      out.write("                    <a href=\"listarTrabajador.jsp\"><img src=\"img/procesadoraPaltas.jpg\" class=\"img-responsive margin\" alt=\"\" style=\"width: 250px; height: 200px; \"></a>\r\n");
      out.write("                    <div class=\"caption\">\r\n");
      out.write("                        <p class=\"text-primary text-center lead\" style=\"margin: 0\"><strong>REQUERIMIENTOS TRABAJADOR</strong></p>\r\n");
      out.write("                        <p>Gestionar Empleados para cumplir con el fin de finalizar con los pedidos.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <footer class=\"color\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-12 p-5\">\r\n");
      out.write("                <p class=\"text-center\" style=\"color: white\">&copy; Copyrigth 2019-Curso de Integrador 1 Sistemas - Lesly Samaritano Ayala</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
