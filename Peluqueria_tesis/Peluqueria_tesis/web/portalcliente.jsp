<%-- 
    Document   : portalcliente
    Created on : 09-abr-2018, 16:19:58
    Author     : Camila
--%>

<%-- 
    Document   : index.jsp
    Created on : 01-04-2018, 20:29:45
    Author     : Leandro
--%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Servicio"%>
<%@page import="modelo.Auditoria"%>
<%@page import="controlador.AccesoDatos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title>Fashion-Hair</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  

  <body>

      <%
          
            HttpSession sesion = request.getSession();
            if(sesion.getAttribute("usu") != null){
                Usuario usu = (Usuario) sesion.getAttribute("usu");
                
                out.println("<center>");
                    
                out.println("</center>");
            }else{
                response.sendRedirect("index.jsp?error=2");
            }
            AccesoDatos a = new AccesoDatos();
            String tto="";
            String dia="";
            String hora="";
            String num="";
            String prof="";
            String us="";
            String uss="";
            String usss="";
            Usuario u = (Usuario) sesion.getAttribute("usu");
            us = u.getNombre(); 
            uss=  u.getApellido();
            usss= us + " " +uss;
            String nomm = "";
               String apee = "";
               String passs1 = "";
               String passs2 = "";
               String tipp = "";
               String tell="";
               
            if (request.getParameter("btnreg") != null) {
               String dat= request.getParameter("txtdat");
               String mot = request.getParameter("txtmot");
               
              Auditoria au = new Auditoria(usss,dat,mot);
               if (a.registrarAuditoria(au)) {
                       out.println("Registrado Correctamente");
               }else{
                   out.println("Error Al registrar");
               }
           }
            
            
            ArrayList<Servicio> lista1 = new ArrayList();
                lista1 = a.listarServicio(usss);
                for(int i=0;i<lista1.size();i++){
                    Servicio se = lista1.get(i);
                    int codi= se.getCod();
                    String t= se.getTto();
                    String d= se.getDia();
                    String h= se.getHora();
                    String te= se.getTelefono();
                    String p =se.getProfesional();
            
            if (request.getParameter("btnmod")!= null) {
              tto = request.getParameter("txttto");
              dia = request.getParameter("txtdia");
              hora = request.getParameter("txthora");
              num = request.getParameter("txttelef");
              prof = request.getParameter("txtprof");
            
             Servicio s= new Servicio(codi,tto,dia,hora,num,prof,usss);
            
              if (a.modificarservicio(s,usss,codi)) {
                  out.println("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Modificado</strong> Se ha modificado la cita.</div>");
              }else{
                  out.println("<div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>No modificado</strong>No se ha modificado la cita.</div>");
              }
          }
                }
                String e= u.getEmail();
                if (request.getParameter("btnmodedi") != null) {
                nomm = request.getParameter("txtnomm");
                apee = request.getParameter("txtapee");
                passs1 = request.getParameter("txtpass");
                passs2 = request.getParameter("txtpascc");
                tipp = "Cliente";
                tell = request.getParameter("txttell");
               Usuario usus = new Usuario(nomm, apee, tipp, tell);
               if (a.modificarUsuario(usus,e)) {
                      
                      out.println("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Modificado</strong> Se ha modificado correctamente.</div>");
               }else{
                        out.println("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Modificado</strong> Error al modificar</div>");
               }
           }
               if (request.getParameter("btnmodcontra") != null) {
                passs1 = request.getParameter("txtpasss");
                passs2 = request.getParameter("txtpascc");
               Usuario usus = new Usuario(passs1);
               if (a.modificarContraseñaUsuario(usus,e)) {
                      out.println("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Modificado</strong> Se ha modificado correctamente.</div>");
               }else{
                        out.println("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Modificado</strong> Error al modificar</div>");
               }
           }
               
      
                
        %>
      
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Fashi<i class="fa fa-circle"></i>n Hair</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="index.jsp">INICIO</a></li>
            <li><a href="equipo.jsp">EQUIPO DE TRABAJO</a></li>
            <li><a href="productos.jsp">PRODUCTOS</a></li>
            <li><a href="servicios.jsp">SERVICIOS</a></li>
            <li><a href="seleccionar_profesional.jsp">PIDE TU CITA</a></li>
            <li><%out.println("<a href='cerrar_sesion.do?cerrar=1' class='nav-link logout'>CERRAR SESIÓN <i class='fa fa-sign-out'></i></a>");%></li>
           </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <br>
    <br>
    
    <img src="img/índice.png" class="img-rounded" alt="Cinque Terre" style="padding-left: 15px; width: 80px; height: 70px;">
    <label><a data-toggle="modal" data-target="#modaleditar" href="#modaleditar"><%Usuario usuu = (Usuario) sesion.getAttribute("usu");out.println(usuu.getNombre()+" "+ usuu.getApellido());%></a></label> 
    <label id="cita">Horas Confirmadas</label>
    <hr width="100%" style="margin-left: 203px; margin-top: 5px; "/>
    
    <br>
    
    <nav class="navbar navbar-default sidebar" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
    </div>
        
    <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
      <ul class="nav navbar-nav">
          
        <li><a href="#"> <span class="glyphicon glyphicon-home" style="padding-right: 20px;"></span>Citas</a></li>
        <li class="dropdown">
          
            
            <li class="divider"></li>
            
           
            <li><a data-toggle="modal" href="#modallistacliente"><span class="glyphicon glyphicon-check" style="padding-right: 20px;"></span>Mi Lista</a></li>    
            
          </ul>
        </li>          
        
      </ul>
    </div>
  </div>
</nav>
  
    
<div class="containerr">
  
              
  <table class="table">
    <thead>
        <tr style="background-color: black;">
        <th style="color: white;">Tratamiento</th>
        <th style="color: white;">Dia</th>
        <th style="color: white;">Hora</th>
        <th style="color: white;">Numero de Telefono</th>
        <th style="color: white;">Profesional</th>
        <th style="color: white;">Editar</th>
        <th style="color: white;">Cancelar</th>
      </tr>
    </thead>
    <tbody>
      <%
                
                String nom= u.getNombre();
                String apellido= u.getApellido();
                String nombre= nom +" "+ apellido;
                ArrayList<Servicio> lista = new ArrayList();
                lista = a.listarServicio(nombre);
                for(int i=0;i<lista.size();i++){
                    Servicio s = lista.get(i);
                    int cod= s.getCod();
                    out.println("<tr>");
                        out.println("<td>"+s.getTto()+"</td>");
                        out.println("<td>"+s.getDia()+"</td>");
                        out.println("<td>"+s.getHora()+"</td>");
                        out.println("<td>"+s.getTelefono()+"</td>");
                        out.println("<td>"+s.getProfesional()+"</td>");
                        out.println("<td><a href='modificarcita.jsp?linkmodificar="+cod+"'><span class='glyphicon glyphicon-edit'></span></a></td>");
                        out.println("<td><a data-toggle='modal' id='btncam' name='btncam' href='#modalcancelarcita'><span class='glyphicon glyphicon-remove-circle'></span></a></td>");
                    out.println("</tr>");
                }
            %>
      
    </tbody>
  </table>
</div>
	<!-- ventana emergente para iniciar sesion -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">Iniciar Sesion</h4>
	      </div>
	      <div class="modal-body">
                  <!-- Formulario de inicio de sesion -->   
                  <form id="form1" name="form1"  method="post" action="Portaladmin.jsp">   
                  <div class="form-group">
                          <label for="exampleInputEmail1">Nombre Usuario</label>
                          <input type="text" name="txtusu" id="txtusu" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su usuario">
                          <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su informacion personal</small>
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1">Contraseña</label>
                          <input type="password" id="txtpass" name="txtpass" class="form-control" id="exampleInputPassword1" placeholder="Ingrese su contraseña">
                      </div>
                      
                      <button type="submit"  id="btnin" name="btnin" class="btn btn-primary">Ingresar</button>
                      
                  </form>
                
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Ingresar Al portal</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

<div class="modal fade" id="modaleditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #686868">
        <h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff">Editar datos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form id="form2" name="form2" method="post" action="portalcliente.jsp">
              
              <div class="form-group row">
                  <label for="Email" class="col-sm-2 col-form-label">Correo Electronico</label>
                  <div class="col-sm-10">
                      <input type="email" class="form-control" id="txtemaa" name="txtemaa"  value="<%=u.getEmail() %>" disabled="DISABLED">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbnom" class="col-sm-2 col-form-label">Nombre</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnomm" name="txtnomm"  value="<%=u.getNombre() %>">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbape" class="col-sm-2 col-form-label">Apellidos</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtapee" name="txtapee"  value="<%=u.getApellido() %>">
                  </div>
              </div>
              
              <div class="form-group row">
                  <label for="lbtel" class="col-sm-2 col-form-label">Telefono</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txttell" name="txttell" value="<%=u.getTelefono() %>">
                  </div>
              </div>
                  <button type="submit" id="btnmodedi" name="btnmodedi" class="btn btn-primary" style="background-color: #F34D2F; border-color: #F34D2F;">Modificar</button>
          <button type="submit" id="btnmodcon" name="btnmodcon" class="btn btn-primary" data-toggle="modal" data-target="#modaleditarcontraseña" style="background-color: #F34D2F; border-color: #F34D2F;">Cambiar Contraseña</button>
          </form>
      </div>
      
    </div>
  </div>
</div>

 <!-- Fin de Modal editar usuario-->
 
<!-- Modal inicio de editar de Usuario-->
 
<div class="modal fade" id="modaleditarcontraseña" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #686868">
        <h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff">Editar datos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form id="form6" name="form6" method="post" action="portalcliente.jsp">
              
              
              <div class="form-group row">
                  <label for="lbpas" class="col-sm-2 col-form-label">Ingrese nueva contraseña</label>
                  <div class="col-sm-10">
                      <input type="password" class="form-control" id="txtpasss" name="txtpasss"  >
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbpasc" class="col-sm-2 col-form-label">Confirmar Contraseña</label>
                  <div class="col-sm-10">
                      <input type="password" class="form-control" id="txtpascc" name="txtpascc"  >
                  </div>
              </div>

                  <button type="submit" id="btnmodcontra" name="btnmodcontra" class="btn btn-primary" style="background-color: #F34D2F; border-color: #F34D2F;">Cambiar Contraseña</button>
          </form>
      </div>
      
    </div>
  </div>
</div>

 <!-- Fin de Modal modificar contraseña-->
 
  <!-- Modal Modificar -->
 


 
 <!-- Fin de Modal modificar cita-->
 <!-- MODAL DESACTIVAR -->
   <div class="modal fade" id="modalcancelarcita" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #686868">
        <h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff">Cancelar Cita</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Motivo de Cancelación</label>
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary" style="background-color: #F34D2F; border-color: #F34D2F;">Confirmar Cancelación</button>
          </form>
      </div>
    </div>
  </div>
</div>
<!-- FIN MODAL DESACTIVAR
 <!-- Modal Modificar -->
 
<div class="modal fade" id="modallistacliente" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #686868">
        <h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff">Mi Lista</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                 
                  <i class="fa fa-check-square-o">Shampoo Absolute</i>
                  <label><a href="">Editar</a></label>
              </div>
               <div class="form-group">
                 
                  <i class="fa fa-check-square-o">Acondicionador 2 Phase</i>
                      <label><a href="">Editar</a></label>
              </div>
               <div class="form-group">
                 
                  <i class="fa fa-check-square-o">Antimanchas Mood</i>
                      <label><a href="">Editar</a></label>
              </div>
             
              <button type="submit" class="btn btn-primary" style="background-color: #F34D2F; border-color: #F34D2F;">Continuar</button>
          </form>
      </div>
     
    </div>
  </div>
</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
