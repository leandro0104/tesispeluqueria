<%-- 
    Document   : about.jsp
    Created on : 01-04-2018, 22:14:41
    Author     : Leandro
--%>

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
            <li><a data-toggle="modal" data-target="#myModal" href="#myModal"><span class="glyphicon glyphicon-user"></span></a></li>
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
			<div class="col-lg-3">
				<img class="img-circle" src="assets/img/pic.jpg" width="110" height="110" alt="">
                                <h4><a href="seleccionar_cita.jsp">Cristian Perez</a></h4>
				<p>Asesor de imagen, estilista, colorista y maquillador profesional, con estudios y experiencia en Argentina, España, Francia e Italia.</p>
				<p><a href="#">@Cristian_Perez</a></p>
			</div><!-- col-lg-3 -->

			<div class="col-lg-3">
				<img class="img-circle" src="assets/img/pic2.jpg" width="110" height="110" alt="" href="seleccionar_cita.jsp">
                                <h4><a href="seleccionar_cita.jsp">Jorge Guzman</a></h4>
				<p>Estilista con más de 15 años de experiencia. Docente de Estética y Peluqueria en AIEP, miembro activo de del programa In Salon Artist.</p>
				<p><a href="#">@Jorge_Guzman</a></p>
			</div><!-- col-lg-3 -->

			<div class="col-lg-3">
				<img class="img-circle" src="assets/img/pic3.jpg" width="110" height="110" alt="">
                                <h4><a href="seleccionar_cita.jsp">Fernando Acevedo</a></h4>
				<p>Estilista desde hace más de 20 años, comenzó a los 14 años como asistente,trabaja con hombres y mujeres. Corte, color, mechas, balayage.</p>
				<p><a href="#">@Fernando_Acevedo</a></p>
			</div><!-- col-lg-3 -->

			<div class="col-lg-3">
				<img class="img-circle" src="assets/img/pic4.jpg" width="110" height="110" alt="">
                                <h4><a href="seleccionar_cita.jsp">Daniela Diaz</a></h4>
				<p>Peluquera cortadora, colorista y peinadora desde hace 7 años. Experta en Melenas, Rulos, balayage, freestyle, dip die y Fantasia.</p>
				<p><a href="#">@Daniela_Diaz</a></p>
			</div><!-- col-lg-3 -->

		</div><!-- row -->
		<br>
		<br>
	</div><!-- container -->


	<!-- PORTFOLIO SECTION -->
	<div id="dg">
		<div class="container">
			<div class="row centered">
				<h4>OUR SKILLS</h4>
				<br>
				
			<!-- First Chart -->
			<div class="col-lg-3">
				<canvas id="canvas" height="130" width="130"></canvas>
				<br>
				<script>
					var doughnutData = [
							{
								value: 70,
								color:"#3498db"
							},
							{
								value : 30,
								color : "#ecf0f1"
							}
						];
						var myDoughnut = new Chart(document.getElementById("canvas").getContext("2d")).Doughnut(doughnutData);
				</script>
				<p><b>Design & Brand</b></p>
				<p><small>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</small></p>
			</div><!-- /col-lg-3 -->

			<!-- Second Chart -->
			<div class="col-lg-3">
				<canvas id="canvas2" height="130" width="130"></canvas>
				<br>
				<script>
					var doughnutData = [
							{
								value: 90,
								color:"#3498db"
							},
							{
								value : 10,
								color : "#ecf0f1"
							}
						];
						var myDoughnut = new Chart(document.getElementById("canvas2").getContext("2d")).Doughnut(doughnutData);
				</script>
				<p><b>Web Development</b></p>
				<p><small>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</small></p>
			</div><!-- /col-lg-3 -->
			
			<!-- Third Chart -->
			<div class="col-lg-3">
				<canvas id="canvas3" height="130" width="130"></canvas>
				<br>
				<script>
					var doughnutData = [
							{
								value: 50,
								color:"#3498db"
							},
							{
								value : 50,
								color : "#ecf0f1"
							}
						];
						var myDoughnut = new Chart(document.getElementById("canvas3").getContext("2d")).Doughnut(doughnutData);
				</script>
				<p><b>Seo Services</b></p>
				<p><small>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</small></p>
			</div><!-- /col-lg-3 -->
			
			<!-- Fourth Chart -->
			<div class="col-lg-3">
				<canvas id="canvas4" height="130" width="130"></canvas>
				<br>
				<script>
					var doughnutData = [
							{
								value: 80,
								color:"#3498db"
							},
							{
								value : 20,
								color : "#ecf0f1"
							}
						];
						var myDoughnut = new Chart(document.getElementById("canvas4").getContext("2d")).Doughnut(doughnutData);
				</script>
				<p><b>Printing</b></p>
				<p><small>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</small></p>
			</div><!-- /col-lg-3 -->
				
				
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- DG -->



	
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