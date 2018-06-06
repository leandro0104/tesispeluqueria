<%-- 
    Document   : index.jsp
    Created on : 01-04-2018, 20:29:45
    Author     : Leandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Usuario"%>
<%@page import="controlador.AccesoDatos"%>
<%@page import="java.util.ArrayList" %>
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
      AccesoDatos a = new AccesoDatos();
      
     // Aqui se realizara el registro del usuario
   
       if (request.getParameter("btnreg") != null) {
               String ema = request.getParameter("txtema");
               String nom = request.getParameter("txtnom");
               String ape = request.getParameter("txtape");
               String pass1 = request.getParameter("txtpas");
               String pass2 = request.getParameter("txtpasc");
               String tip = "Cliente";
               String tel = request.getParameter("txttel");
               Usuario u = new Usuario(ema, nom, ape, pass1, tip, tel);
               if (a.registrarUsuario(u)) {
                       out.println("Registrado Correctamente");
               }else{
                   out.println("Error Al registrar");
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
            <li><a data-toggle="modal" data-target="#modalregistro" href="#modalregistro">REGISTRARSE</a></li>
            <li><a data-toggle="modal" data-target="#myModal" href="#myModal"><span class="glyphicon glyphicon-user"></span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div>
        <div>
        <div id="carousel-1" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-1" data-slide-to="1"></li>
                <li data-target="#carousel-1" data-slide-to="2"></li>
                <li data-target="#carousel-1" data-slide-to="3"></li>
                <li data-target="#carousel-1" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner" role="lisbox">
                <div class="item active">
                    <img src="img/img19.jpg" class="img-responsive" width="100%">
                </div>
                <div class="item">
                    <img src="img/img16.jpg" class="img-responsive" width="100%">
                </div>
                <div class="item">
                    <img src="img/img17.jpg" class="img-responsive" width="100%">
                </div>
                <div class="item">
                    <img src="img/img18.jpg" class="img-responsive" width="100%">
                </div>
                <div class="item">
                    <img src="img/img15.jpg" class="img-responsive" width="100%">
                </div>
            </div>
            
        </div>
    </div>
    </div>


	<div class="container w">
		<div class="row centered">
			<br>
			<div class="col-lg-4">
				<i class="fa fa-heart"></i>
				<h4>MISION</h4>
				<p>Satisfacer las expectativas de imagen a las personas, Ofreciendo servicios y asesoramiento de excelencia y de alta calidad, mediante las técnicas y tendencias más actuales, en un entorno de confort, alegría y organización.</p>
			</div><!-- col-lg-4 -->

			<div class="col-lg-4">
				<i class="fa fa-laptop"></i>
				<h4>VISION</h4>
				<p>Centro de Imagen Personal rentable, justo y de referencia en nuestra comunidad, un equipo a la vanguardia en las ultimas técnicas y tendencias, en constante evolución mediante el desarrollo personal y profesional.</p>
			</div><!-- col-lg-4 -->

			<div class="col-lg-4">
				<i class="fa fa-trophy"></i>
				<h4>VALORES</h4>
                                <p>
                                    Trabajo en equipo<br>
                                    Servicio al cliente<br>
                                    Calidad<br>
                                    Responsabilidad<br>
                                    Creatividad<br>
                                
                        </p>
			</div><!-- col-lg-4 -->
		</div><!-- row -->
		<br>
		<br>
	</div><!-- container -->


	<!-- PORTFOLIO SECTION -->
	<div id="dg">
		<div class="container">
			<div class="row centered">
				<h4>PIDE TU CITA</h4>
                                <h5>EN 3 PASOS</h5>
				<br>
				<div class="col-lg-4">
					<div class="tilt">
					<a href="#"><img src="assets/img/p01.png" alt=""></a>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="tilt">
					<a href="#"><img src="assets/img/p03.png" alt=""></a>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="tilt">
					<a href="#"><img src="assets/img/p02.png" alt=""></a>
					</div>
				</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- DG -->

         <!-- Modal inicio de Registro de Usuario-->
 
<div class="modal fade" id="modalregistro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #686868">
        <h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff">Registro de Usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form id="form1" name="form1" action="index.jsp" method="post">
              <div class="form-group row">
                  <label for="Email" class="col-sm-2 col-form-label">Correo Electronico</label>
                  <div class="col-sm-10">
                      <input type="email" class="form-control" id="txtema" name="txtema" placeholder="Email" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbnom" class="col-sm-2 col-form-label">Nombre</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnom" name="txtnom" placeholder="Ingrese su nombre" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbape" class="col-sm-2 col-form-label">Apellidos</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtape" name="txtape" placeholder="Ingrese sus apellidos" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbpas" class="col-sm-2 col-form-label">Contraseña</label>
                  <div class="col-sm-10">
                      <input type="password" class="form-control" id="txtpas" name="txtpas" placeholder="Ingrese su Contraseña" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbpasc" class="col-sm-2 col-form-label">Confirmar Contraseña</label>
                  <div class="col-sm-10">
                      <input type="password" class="form-control" id="txtpasc" name="txtpasc" placeholder="Ingrese su Contraseña nuevamente" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbtel" class="col-sm-2 col-form-label">Telefono</label>
                  <div class="col-sm-10">
                      <input type="number" class="form-control" id="txttel" name="txttel" placeholder="Ingrese su numero de telefono" required="required">
                  </div>
              </div>
              
              <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary" id="btnreg" name="btnreg" style="background-color: #F34D2F; border-color: #F34D2F;">Registrar</button>
                     
                  </div>
                  
              </div>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

 <!-- Fin de Modal registrar usuario-->

	<!-- FEATURE SECTION -->
	<div class="container wb">
		<div class="row centered">
			<br><br>
			<div class="col-lg-8 col-lg-offset-2">
				<h4>WE CREATE FIRST CLASS DESIGN</h4>
				<p>By being true to the brand we represent, we elevate the audiences’ relationship to it. Like becomes love becomes a passion. Passion becomes advocacy. And we see the brand blossom from within, creating a whole story the audience embraces. That’s when the brand can truly flex its muscles.</p>
			<p><br/><br/></p>
			</div>
			<div class="col-lg-2"></div>
			<div class="col-lg-10 col-lg-offset-1">
				<img class="img-responsive" src="assets/img/munter.png" alt="">
			</div>
		</div><!-- row -->
	</div><!-- container -->


	<div id="lg">
		<div class="container">
			<div class="row centered">
				<h4>OUR AWESOME CLIENTS</h4>
				<div class="col-lg-2 col-lg-offset-1">
					<img src="assets/img/c01.gif" alt="">
				</div>
				<div class="col-lg-2">
					<img src="assets/img/c02.gif" alt="">
				</div>
				<div class="col-lg-2">
					<img src="assets/img/c03.gif" alt="">
				</div>
				<div class="col-lg-2">
					<img src="assets/img/c04.gif" alt="">
				</div>
				<div class="col-lg-2">
					<img src="assets/img/c05.gif" alt="">
				</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- dg -->
	
	
	<div id="r">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-8 col-lg-offset-2">
					<h4>WE ARE STORYTELLERS. BRANDS ARE OUR SUBJECTS. DESIGN IS OUR VOICE.</h4>
					<p>We believe ideas come from everyone, everywhere. At BlackTie, everyone within our agency walls is a designer in their own right. And there are a few principles we believe—and we believe everyone should believe—about our design craft. These truths drive us, motivate us, and ultimately help us redefine the power of design.</p>
				</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><! -- r wrap -->
	
	
	<!-- FOOTER -->
	<div id="f">
		<div class="container">
			<div class="row centered">
				<a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-dribbble"></i></a>
		
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- Footer -->


	<!-- ventana emergente para iniciar sesion -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header" style="background-color: #686868">
        
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="exampleModalLabel" style="color: #ffffff">Iniciar Sesion</h4>
	      </div>
	      <div class="modal-body">
                  <!-- Formulario de inicio de sesion -->   
                  <form id="form1" name="form1"  method="post" action="validar.do">   
                  <div class="form-group">
                          <label for="exampleInputEmail1">Nombre Usuario</label>
                          <input type="text" name="txtusu" id="txtusu" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su usuario">
                          <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su informacion personal</small>
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1">Contraseña</label>
                          <input type="password" id="txtpass" name="txtpass" class="form-control" id="exampleInputPassword1" placeholder="Ingrese su contraseña">
                      </div>
                      
                      <button type="submit"  id="btnin" name="btnin" class="btn btn-primary" style="background-color: #F34D2F; border-color: #F34D2F;">Ingresar</button>
                      
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
