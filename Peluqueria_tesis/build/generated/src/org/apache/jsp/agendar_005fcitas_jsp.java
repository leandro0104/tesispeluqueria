package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class agendar_005fcitas_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <title>Fashion-Hair Trabajador</title>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"robots\" content=\"all,follow\">\n");
      out.write("    <!-- Bootstrap CSS-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("    <!-- Fontastic Custom icon font-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/fontastic.css\">\n");
      out.write("    <!-- Font Awesome CSS-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendor/font-awesome/css/font-awesome.min.css\">\n");
      out.write("    <!-- Google fonts - Poppins -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,700\">\n");
      out.write("    <!-- theme stylesheet-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.default.css\" id=\"theme-stylesheet\">\n");
      out.write("    <!-- Custom stylesheet - for your changes-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/custom.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/datatables.min.css\">\n");
      out.write("    <!-- Favicon-->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"favicon.png\">\n");
      out.write("    <style>\n");
      out.write("        .row{\n");
      out.write("            margin-top: 10px;\n");
      out.write("        }\n");
      out.write("        .form-control-label{\n");
      out.write("            color:#000;\n");
      out.write("        }\n");
      out.write("        input[type=\"text\"]{\n");
      out.write("            border-color: slategray;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <!-- Tweaks for older IEs--><!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script><![endif]-->\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      <div class=\"modal fade\" id=\"modpreg\">\n");
      out.write("            <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                  <h5 class=\"modal-title\">Confirmacion</h5>\n");
      out.write("                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                    <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                  </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                  <p>¿Esta seguro de que desea desactivar este registro?</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer\">\n");
      out.write("                    <button type=\"button\" class=\"btn btn-warning\" id=\"btndel\">Aceptar</button>\n");
      out.write("                  <button type=\"button\" class=\"btn btn-info\" data-dismiss=\"modal\">Cancelar</button>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <h1 class=\"page-header\">Registrar Usuario</h1>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.col-lg-12 -->\n");
      out.write("            </div>\n");
      out.write("    <!-- formulario -->\n");
      out.write("    <div class=\"container-fluid\">  \n");
      out.write("          <form>\n");
      out.write("              <div class=\"form-group row\">\n");
      out.write("                  <label for=\"inputEmail3\" class=\"col-sm-2 col-form-label\">Nombre</label>\n");
      out.write("                  <div class=\"col-sm-10\">\n");
      out.write("                      <input type=\"text\" class=\"form-control\" id=\"inputEmail3\" placeholder=\"Nombre\">\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group row\">\n");
      out.write("                  <label for=\"inputEmail3\" class=\"col-sm-2 col-form-label\">Tratamiento</label>\n");
      out.write("                  <div class=\"col-sm-10\">\n");
      out.write("                      <select class=\"form-control\" width=\"500px\" height=\"50px\">\n");
      out.write("                        <option>BabyLights</option>\n");
      out.write("                        <option>Balayage</option>\n");
      out.write("                      </select>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group row\">\n");
      out.write("                  <label for=\"inputEmail3\" class=\"col-sm-2 col-form-label\">Día</label>\n");
      out.write("                  <div class=\"col-sm-10\">\n");
      out.write("                      <input type=\"date\">\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group row\">\n");
      out.write("                  <label for=\"inputEmail3\" class=\"col-sm-2 col-form-label\">Hora</label>\n");
      out.write("                  <div class=\"col-sm-10\">\n");
      out.write("                        <select class=\"form-control\" width=\"500px\" height=\"50px\">\n");
      out.write("                            <option>9:00 AM</option>\n");
      out.write("                            <option>10:00 AM</option>\n");
      out.write("                            <option>11:00 AM</option>\n");
      out.write("                            <option>12:00 PM</option>\n");
      out.write("                            <option>13:00 PM</option>\n");
      out.write("                            <option>14:00 PM</option>\n");
      out.write("                            <option>15:00 PM</option>\n");
      out.write("                            <option>16:00 PM</option>\n");
      out.write("                            <option>17:00 PM</option>\n");
      out.write("                            <option>18:00 PM</option>\n");
      out.write("                            <option>19:00 PM</option>\n");
      out.write("                        </select>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group row\">\n");
      out.write("                  <label for=\"inputEmail3\" class=\"col-sm-2 col-form-label\">Número de telefono</label>\n");
      out.write("                  <div class=\"col-sm-10\">\n");
      out.write("                      <input type=\"number\" class=\"form-control\" id=\"inputEmail3\" placeholder=\"Número de telefono\">\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group row\">\n");
      out.write("                  <div class=\"col-sm-10\">\n");
      out.write("                      <button type=\"submit\" class=\"btn btn-primary\">Registrar</button>\n");
      out.write("                      <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal\">Modificar</button>\n");
      out.write("                      <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#modaldesactivarusu\">Desactivar</button>\n");
      out.write("                  </div>\n");
      out.write("                  \n");
      out.write("              </div>\n");
      out.write("          </form>\n");
      out.write("      </div> \n");
      out.write("    \n");
      out.write(" <!-- fin de formulario -->\n");
      out.write(" \n");
      out.write(" <!-- Modal Modificar -->\n");
      out.write(" \n");
      out.write("<div class=\"modal fade\" id=\"exampleModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Realizar Modificacion</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("          <form>\n");
      out.write("              <div class=\"form-group\">\n");
      out.write("                  <label for=\"exampleInputEmail1\">Ingrese Usuario a Modificar</label>\n");
      out.write("                  <input type=\"text\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"texto\" placeholder=\"Ingrese Usuario\">\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group\">\n");
      out.write("                  <label for=\"exampleFormControlTextarea1\">Motivo de Modificacion</label>\n");
      out.write("                  <textarea class=\"form-control\" id=\"exampleFormControlTextarea1\" rows=\"3\"></textarea>\n");
      out.write("              </div>\n");
      out.write("              <button type=\"submit\" class=\"btn btn-primary\">Continuar</button>\n");
      out.write("          </form>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write(" <!-- Fin de Modal Modificar -->\n");
      out.write(" \n");
      out.write(" <!-- MODAL DESACTIVAR -->\n");
      out.write("   <div class=\"modal fade\" id=\"modaldesactivarusu\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Desactivar Usuario</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("          <form>\n");
      out.write("              <div class=\"form-group\">\n");
      out.write("                  <label for=\"exampleInputEmail1\">Ingrese nombre de usuario a desactivar</label>\n");
      out.write("                  <input type=\"text\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"texto\">\n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group\">\n");
      out.write("                  <label for=\"exampleFormControlTextarea1\">Motivo de desactivacion</label>\n");
      out.write("                  <textarea class=\"form-control\" id=\"exampleFormControlTextarea1\" rows=\"3\"></textarea>\n");
      out.write("              </div>\n");
      out.write("              <button type=\"submit\" class=\"btn btn-primary\">Confirmar Desactivacion</button>\n");
      out.write("          </form>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!-- FIN MODAL DESACTIVAR\n");
      out.write("            \n");
      out.write("    <!-- Javascript files-->\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\n");
      out.write("    <script src=\"vendor/popper.js/umd/popper.min.js\"> </script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"vendor/jquery.cookie/jquery.cookie.js\"> </script>\n");
      out.write("    <script src=\"vendor/jquery-validation/jquery.validate.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"js/front.js\"></script>\n");
      out.write("    <script>\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
