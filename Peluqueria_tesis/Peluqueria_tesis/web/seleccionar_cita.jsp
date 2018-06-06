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
            <li class="active"><a href="index.jsp">INICIO</a></li>
            <li><a href="equipo.jsp">EQUIPO DE TRABAJO</a></li>
            <li><a href="productos.jsp">PRODUCTOS</a></li>
            <li><a href="servicios.jsp">SERVICIOS</a></li>
            <li><a href="seleccionar_profesional.jsp">PIDE TU CITA</a></li>
            <li><a href="portalcliente.jsp">MI PERFIL</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<div id="blue">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-8 col-lg-offset-2">
				<h4>Seleccione fecha y servicio</h4>
				</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><!--  bluewrap -->

        <%
                AccesoDatos a = new AccesoDatos();
                String traba;
                String usu;
                String fec;
                int tra;
                String hor;
                String tr=request.getParameter("trab");
                if (request.getParameter("btncon")!=null) {
                        traba = request.getParameter("traba");    
                        usu = session.getAttribute("LOGIN").toString();
                        fec = request.getParameter("fec");
                        tra = Integer.parseInt(request.getParameter("tra"));
                        hor = request.getParameter("hor");
                        Cita cit = new Cita(traba,usu,fec,tra,hor);
                        if (a.insertarCita(cit)) {
                            out.println("Se ha registrado la cita");
                           // out.println(traba+" "+usu+" "+fec+" "+tra+" "+hor);
                        }else{
                            out.println("No se ha registrado la cita");
                           // out.println(traba+" "+usu+" "+fec+" "+tra+" "+hor);
                        }
                    }
                %>
	<div class="row centered">
            <br/>
            
            <form id="form2" name="form2" method="post" action="seleccionar_cita.jsp">
                
                <select class="selectpicket" width="500px" height="50px" name="traba" id="traba" hidden="hidden">
                <%
                    ArrayList<Usuario> listusu = new ArrayList();
                    listusu = a.listarTrabemail(tr);
                    for (Usuario u : listusu) {
                            out.println("<option value="+u.getEmail()+">"+u.getNombre()+" "+u.getApellido()+"</option>");
                    }
                %>
            </select>
                <input type="date" width="500px" height="50px" name="fec" id="fec"> 
                <select class="selectpicket" width="500px" height="50px" name="tra" id="tra">
                <%
                    ArrayList<Trabajo> listra = new ArrayList();
                    listra = a.listarTrabajos(tr);
                    for (Trabajo t : listra) {
                            out.println("<option value="+t.getCod()+">"+t.getNom()+"</option>");
                    }
                %>
            </select>
            <select class="selectpicket" width="500px" height="50px" name="hor" id="hor">
                <option value="9:00 AM">9:00 AM</option>
                <option value="10:00 AM">10:00 AM</option>
                <option value="11:00 AM">11:00 AM</option>
                <option value="12:00 PM">12:00 PM</option>
                <option value="13:00 PM">13:00 PM</option>
                <option value="14:00 PM">14:00 PM</option>
                <option value="15:00 PM">15:00 PM</option>
                <option value="16:00 PM">16:00 PM</option>
                <option value="17:00 PM">17:00 PM</option>
                <option value="18:00 PM">18:00 PM</option>
                <option value="19:00 PM">19:00 PM</option>
            </select>
          <button type="submit"  id="btncon" name="btncon" class="btn btn-primary">Confirmar</button>
            </form>
        </div>
        <div class="row centered">
            
        </div>
        <div class="row centered">
            <br/>
            
        </div>
           
        
    </div>
</div>
			</div><!-- col-lg-3 -->

			<div class="col-lg-3">
				
			</div><!-- col-lg-3 -->

			

		</div><!-- row -->
		<br>
		<br>
	</div><!-- container -->


	


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
                          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su usuario">
                          <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su informacion personal</small>
                      </div>
                      <div class="form-group">
                          <label for="exampleInputPassword1">Contraseña</label>
                          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Ingrese su contraseña">
                      </div>
                      
                      <button type="submit" class="btn btn-primary">Ingresar</button>
                  </form>
	      </div>
	      <div class="modal-footer">
	        <a href="portalcliente.jsp" class="btn btn-info" role="button">Portal Cliente</a>
                  <a href="portaltrabajador.jsp" class="btn btn-info" role="button">Portal Trabajador</a>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

            <!-- modal registrar -->
        <div class="modal fade" id="modalregistro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registro de Usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleInputEmail1">Correo</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Ingrese su Correo electronico">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Contraseña</label>
                  <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Ingrese su Contraseña">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Confirmar Contraseña</label>
                  <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Confirmar contraseña">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Nombre de Usuario</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Ingrese su nombre de usuario">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Nombres</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Ingrese sus nombres">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Apellido Paterno</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Ingrese su apellido Paterno">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Apellido Materno</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Ingrese su apellido Materno">
              </div>
              <button type="submit" class="btn btn-primary">Registrar</button>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
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
