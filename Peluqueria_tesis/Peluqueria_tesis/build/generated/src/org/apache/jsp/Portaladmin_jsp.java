package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Portaladmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <title>Fashion-Hair Administrador</title>\n");
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
      out.write("    <!-- Favicon-->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"favicon.png\">\n");
      out.write("    <!-- Tweaks for older IEs--><!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script><![endif]-->\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <div class=\"page home-page\">\n");
      out.write("      <!-- Main Navbar-->\n");
      out.write("      <header class=\"header\">\n");
      out.write("        <nav class=\"navbar\">\n");
      out.write("          <!-- Search Box-->\n");
      out.write("          <div class=\"search-box\">\n");
      out.write("            <button class=\"dismiss\"><i class=\"icon-close\"></i></button>\n");
      out.write("            <form id=\"searchForm\" action=\"#\" role=\"search\">\n");
      out.write("              <input type=\"search\" placeholder=\"What are you looking for...\" class=\"form-control\">\n");
      out.write("            </form>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-holder d-flex align-items-center justify-content-between\">\n");
      out.write("              <!-- Navbar Header-->\n");
      out.write("              <div class=\"navbar-header\">\n");
      out.write("                <!-- Navbar Brand --><a href=\"Portaladmin.jsp\" class=\"navbar-brand\">\n");
      out.write("                  <div class=\"brand-text brand-big\"><span>Bootstrap </span><strong>Dashboard</strong></div>\n");
      out.write("                  <div class=\"brand-text brand-small\"><strong>BD</strong></div></a>\n");
      out.write("                <!-- Toggle Button--><a id=\"toggle-btn\" href=\"#\" class=\"menu-btn active\"><span></span><span></span><span></span></a>\n");
      out.write("              </div>\n");
      out.write("              <!-- Navbar Menu -->\n");
      out.write("              <ul class=\"nav-menu list-unstyled d-flex flex-md-row align-items-md-center\">\n");
      out.write("                <!-- Search-->\n");
      out.write("                <li class=\"nav-item d-flex align-items-center\"><a id=\"search\" href=\"#\"><i class=\"icon-search\"></i></a></li>\n");
      out.write("                <!-- Notifications-->\n");
      out.write("                <li class=\"nav-item dropdown\"> <a id=\"notifications\" rel=\"nofollow\" data-target=\"#\" href=\"#\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\" class=\"nav-link\"><i class=\"fa fa-bell-o\"></i><span class=\"badge bg-red\">12</span></a>\n");
      out.write("                  <ul aria-labelledby=\"notifications\" class=\"dropdown-menu\">\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item\"> \n");
      out.write("                        <div class=\"notification\">\n");
      out.write("                          <div class=\"notification-content\"><i class=\"fa fa-envelope bg-green\"></i>You have 6 new messages </div>\n");
      out.write("                          <div class=\"notification-time\"><small>4 minutes ago</small></div>\n");
      out.write("                        </div></a></li>\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item\"> \n");
      out.write("                        <div class=\"notification\">\n");
      out.write("                          <div class=\"notification-content\"><i class=\"fa fa-twitter bg-blue\"></i>You have 2 followers</div>\n");
      out.write("                          <div class=\"notification-time\"><small>4 minutes ago</small></div>\n");
      out.write("                        </div></a></li>\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item\"> \n");
      out.write("                        <div class=\"notification\">\n");
      out.write("                          <div class=\"notification-content\"><i class=\"fa fa-upload bg-orange\"></i>Server Rebooted</div>\n");
      out.write("                          <div class=\"notification-time\"><small>4 minutes ago</small></div>\n");
      out.write("                        </div></a></li>\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item\"> \n");
      out.write("                        <div class=\"notification\">\n");
      out.write("                          <div class=\"notification-content\"><i class=\"fa fa-twitter bg-blue\"></i>You have 2 followers</div>\n");
      out.write("                          <div class=\"notification-time\"><small>10 minutes ago</small></div>\n");
      out.write("                        </div></a></li>\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item all-notifications text-center\"> <strong>view all notifications                                            </strong></a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </li>\n");
      out.write("                <!-- Messages                        -->\n");
      out.write("                <li class=\"nav-item dropdown\"> <a id=\"messages\" rel=\"nofollow\" data-target=\"#\" href=\"#\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\" class=\"nav-link\"><i class=\"fa fa-envelope-o\"></i><span class=\"badge bg-orange\">10</span></a>\n");
      out.write("                  <ul aria-labelledby=\"notifications\" class=\"dropdown-menu\">\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item d-flex\"> \n");
      out.write("                        <div class=\"msg-profile\"> <img src=\"img/avatar-1.jpg\" alt=\"...\" class=\"img-fluid rounded-circle\"></div>\n");
      out.write("                        <div class=\"msg-body\">\n");
      out.write("                          <h3 class=\"h5\">Jason Doe</h3><span>Sent You Message</span>\n");
      out.write("                        </div></a></li>\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item d-flex\"> \n");
      out.write("                        <div class=\"msg-profile\"> <img src=\"img/avatar-2.jpg\" alt=\"...\" class=\"img-fluid rounded-circle\"></div>\n");
      out.write("                        <div class=\"msg-body\">\n");
      out.write("                          <h3 class=\"h5\">Frank Williams</h3><span>Sent You Message</span>\n");
      out.write("                        </div></a></li>\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item d-flex\"> \n");
      out.write("                        <div class=\"msg-profile\"> <img src=\"img/avatar-3.jpg\" alt=\"...\" class=\"img-fluid rounded-circle\"></div>\n");
      out.write("                        <div class=\"msg-body\">\n");
      out.write("                          <h3 class=\"h5\">Ashley Wood</h3><span>Sent You Message</span>\n");
      out.write("                        </div></a></li>\n");
      out.write("                    <li><a rel=\"nofollow\" href=\"#\" class=\"dropdown-item all-notifications text-center\"> <strong>Read all messages    </strong></a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </li>\n");
      out.write("                <!-- Logout    -->\n");
      out.write("                <li class=\"nav-item\"><a href=\"index.jsp\" class=\"nav-link logout\">Logout<i class=\"fa fa-sign-out\"></i></a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </nav>\n");
      out.write("      </header>\n");
      out.write("      <div class=\"page-content d-flex align-items-stretch\">\n");
      out.write("        <!-- Side Navbar -->\n");
      out.write("        <nav class=\"side-navbar\">\n");
      out.write("          <!-- Sidebar Header-->\n");
      out.write("          <div class=\"sidebar-header d-flex align-items-center\">\n");
      out.write("            <div class=\"avatar\"><img src=\"img/avatar-1.jpg\" alt=\"...\" class=\"img-fluid rounded-circle\"></div>\n");
      out.write("            <div class=\"title\">\n");
      out.write("              <h1 class=\"h4\">Mark Stephen</h1>\n");
      out.write("              <p>Web Designer</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Sidebar Navidation Menus--><span class=\"heading\">Main</span>\n");
      out.write("          <ul class=\"list-unstyled\">\n");
      out.write("            <li class=\"active\"> <a href=\"Portaladmin.jsp\"><i class=\"icon-home\"></i>Portal</a></li>\n");
      out.write("            <li><a href=\"#dashvariants\" aria-expanded=\"false\" data-toggle=\"collapse\"> <i class=\"icon-interface-windows\"></i>Seccion de Gestion</a>\n");
      out.write("              <ul id=\"dashvariants\" class=\"collapse list-unstyled\">\n");
      out.write("                  <li><a href=\"Gestion_Usuarios.jsp\" target=\"ventana\">Usuarios</a></li>\n");
      out.write("                  <li><a href=\"Gestion_Inventario.jsp\" target=\"ventana\">Inventario</a></li>\n");
      out.write("                  <li><a href=\"Gestion_Noticias.jsp\" target=\"ventana\">Noticias</a></li>\n");
      out.write("                \n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("            <li> <a href=\"Registros_ingresados.jsp\" target=\"ventana\"> <i class=\"icon-grid\"></i>Tablas </a></li>\n");
      out.write("            <li> <a href=\"Graficos_Informes.jsp\" target=\"ventana\"> <i class=\"fa fa-bar-chart\"></i>Graficos e Informes </a></li>\n");
      out.write("            \n");
      out.write("          </ul><span class=\"heading\">Extras</span>\n");
      out.write("          <ul class=\"list-unstyled\">\n");
      out.write("            <li> <a href=\"#\"> <i class=\"icon-flask\"></i>Demo </a></li>\n");
      out.write("            <li> <a href=\"#\"> <i class=\"icon-screen\"></i>Demo </a></li>\n");
      out.write("            <li> <a href=\"#\"> <i class=\"icon-mail\"></i>Demo </a></li>\n");
      out.write("            <li> <a href=\"#\"> <i class=\"icon-picture\"></i>Demo </a></li>\n");
      out.write("          </ul>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"embed-responsive embed-responsive-4by3\">\n");
      out.write("            <iframe src=\"Inicio.jsp\" class=\"embed-responsive-item\" name=\"ventana\" ></iframe>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("          <!-- Page Footer-->\n");
      out.write("          \n");
      out.write("          \n");
      out.write("         \n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- Javascript files-->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\n");
      out.write("    <script src=\"vendor/popper.js/umd/popper.min.js\"> </script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"vendor/jquery.cookie/jquery.cookie.js\"> </script>\n");
      out.write("    <script src=\"vendor/jquery-validation/jquery.validate.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js\"></script>\n");
      out.write("    <script src=\"js/charts-home.js\"></script>\n");
      out.write("    <script src=\"js/front.js\"></script>\n");
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
