package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class portalcliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/ico/favicon.png\">\n");
      out.write("\n");
      out.write("    <title>Fashion-Hair</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"assets/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"assets/css/main.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <!-- Fixed navbar -->\n");
      out.write("    <div class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("          <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("          <a class=\"navbar-brand\" href=\"#\">Fashi<i class=\"fa fa-circle\"></i>n Hair</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"navbar-collapse collapse\">\n");
      out.write("          <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"active\"><a href=\"index.jsp\">INICIO</a></li>\n");
      out.write("            <li><a href=\"about.jsp\">STAFF</a></li>\n");
      out.write("            <li><a href=\"services.jsp\">PRODUCTOS</a></li>\n");
      out.write("            <li><a href=\"works.jsp\">SERVICIOS</a></li>\n");
      out.write("            <li><a href=\"seleccionar_profesional.jsp\">PIDE TU CITA</a></li>\n");
      out.write("            <li><a data-toggle=\"modal\" data-target=\"#myModal\" href=\"#myModal\"><span class=\"glyphicon glyphicon-user\"></span></a></li>\n");
      out.write("          </ul>\n");
      out.write("        </div><!--/.nav-collapse -->\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <img src=\"img/avatar-5.jpg\" class=\"img-circle\" alt=\"Cinque Terre\" style=\"padding-top:10px;\" >\n");
      out.write("\t<!-- ventana emergente para iniciar sesion -->\n");
      out.write("\t<!-- Modal -->\n");
      out.write("\t<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("\t  <div class=\"modal-dialog\">\n");
      out.write("\t    <div class=\"modal-content\">\n");
      out.write("\t      <div class=\"modal-header\">\n");
      out.write("\t        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n");
      out.write("\t        <h4 class=\"modal-title\" id=\"myModalLabel\">Iniciar Sesion</h4>\n");
      out.write("\t      </div>\n");
      out.write("\t      <div class=\"modal-body\">\n");
      out.write("                  <!-- Formulario de inicio de sesion -->   \n");
      out.write("                  <form id=\"form1\" name=\"form1\"  method=\"post\" action=\"Portaladmin.jsp\">   \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                          <label for=\"exampleInputEmail1\">Nombre Usuario</label>\n");
      out.write("                          <input type=\"text\" name=\"txtusu\" id=\"txtusu\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Ingrese su usuario\">\n");
      out.write("                          <small id=\"emailHelp\" class=\"form-text text-muted\">Nunca compartiremos su informacion personal</small>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                          <label for=\"exampleInputPassword1\">Contraseña</label>\n");
      out.write("                          <input type=\"password\" id=\"txtpass\" name=\"txtpass\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Ingrese su contraseña\">\n");
      out.write("                      </div>\n");
      out.write("                      \n");
      out.write("                      <button type=\"submit\"  id=\"btnin\" name=\"btnin\" class=\"btn btn-primary\">Ingresar</button>\n");
      out.write("                      \n");
      out.write("                  </form>\n");
      out.write("                \n");
      out.write("\t      </div>\n");
      out.write("\t      <div class=\"modal-footer\">\n");
      out.write("\t        <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Ingresar Al portal</button>\n");
      out.write("\t      </div>\n");
      out.write("\t    </div><!-- /.modal-content -->\n");
      out.write("\t  </div><!-- /.modal-dialog -->\n");
      out.write("\t</div><!-- /.modal -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-1.10.2.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
