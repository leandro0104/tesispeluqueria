<%-- 
    Document   : about.jsp
    Created on : 01-04-2018, 22:14:41
    Author     : Leandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="controlador.AccesoDatos"%>
<%@page import="modelo.*"%>
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

	<script src="assets/js/Chart.js"></script>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

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
            <li><a href="index.jsp">INICIO</a></li>
            <li><a href="equipo.jsp">EQUIPO DE TRABAJO</a></li>
            <li><a href="productos.jsp">PRODUCTOS</a></li>
            <li><a href="servicios.jsp">SERVICIOS</a></li>
            <li class="active"><a href="seleccionar_profesional.jsp">PIDE TU CITA</a></li>
            <li><a href="portalcliente.jsp">MI PERFIL</a></li>
           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<div id="blue">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-8 col-lg-offset-2">
				<h4>NUESTRO EQUIPO</h4>
				<p>PROFESIONALES CAPACITADOS</p>
				</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><!--  bluewrap -->


	<div class="container w">
		<div class="row centered">
			<br><br>
			<%
                            AccesoDatos a = new AccesoDatos();
                            ArrayList<Usuario> listusu = new ArrayList();
                            listusu = a.listarTrabajadores();
                            for (Usuario u : listusu) {
                                   out.println("<div class='col-lg-3'>");
				out.println("<h4><a href='seleccionar_cita.jsp?trab="+u.getEmail()+"'>"+u.getNombre()+" "+u.getApellido()+"</h4>");
                                out.println("</div>");
                            }
                        %>

		</div><!-- row -->
		<br>
		<br>
	</div><!-- container -->


	
	
	
	<!-- FOOTER -->
	<div id="f">
		<div class="container">
			<div class="row centered">
				<a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-dribbble"></i></a>
		
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- Footer -->


	<!-- MODAL FOR CONTACT -->
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
	        <a href="portalcliente.jsp" class="btn btn-info" role="button">Portal Cliente</a>
                  <a href="portaltrabajador.jsp" class="btn btn-info" role="button">Portal Trabajador</a>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>