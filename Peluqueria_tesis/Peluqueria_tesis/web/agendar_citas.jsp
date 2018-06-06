<%-- 
    Document   : gestionar_citas
    Created on : 08-04-2018, 16:23:45
    Author     : Cote
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="controlador.AccesoDatos"%>
<%@page import="modelo.*"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Fashion-Hair Trabajador</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="css/datatables.min.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <style>
        .row{
            margin-top: 10px;
        }
        .form-control-label{
            color:#000;
        }
        input[type="text"]{
            border-color: slategray;
        }
    </style>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
      <%
          AccesoDatos a = new AccesoDatos();
          String traba;
          String ema;
          String fec;
          int tra;
          String hor;
                if (request.getParameter("btnreg") != null) {
                        traba =  session.getAttribute("LOGIN").toString();    
                        ema = request.getParameter("txtema");
                        fec = request.getParameter("fec");
                        tra = Integer.parseInt(request.getParameter("tra"));
                        hor = request.getParameter("hor");
                        Cita cit = new Cita(traba,ema,fec,tra,hor);
                        if (a.insertarCita(cit)) {
                            out.println("Se ha registrado la cita");
                            //out.println(traba+" "+ema+" "+fec+" "+tra+" "+hor);
                        }else{
                            out.println("No se ha registrado la cita");
                           // out.println(traba+" "+ema+" "+fec+" "+tra+" "+hor);
                        }
                    }
          %>
      <div class="modal fade" id="modpreg">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Confirmacion</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>¿Esta seguro de que desea desactivar este registro?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" id="btndel">Aceptar</button>
                  <button type="button" class="btn btn-info" data-dismiss="modal">Cancelar</button>
                </div>
              </div>
            </div>
        </div>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Registrar Citas</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
          <form id="form1" name="form1" method="post" action="agendar_citas.jsp">
              <div class="form-group row">
                  <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtema" name="txtema" placeholder="Email">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="inputEmail3" class="col-sm-2 col-form-label">Tratamiento</label>
                  <div class="col-sm-10">
                      <select class="form-control" width="500px" height="50px" id="tra" name="tra">
                        <%
                            ArrayList<Trabajo> listra = new ArrayList();
                            String m= session.getAttribute("LOGIN").toString();
                            listra = a.listarTrabajos(m);
                            for (Trabajo t : listra) {
                                    out.println("<option value='"+t.getCod()+"'>"+t.getNom()+"</option>");
                            }
                %>
                      </select>
                  </div>
              </div>
              <div class="form-group row">
                  <label for="inputEmail3" class="col-sm-2 col-form-label">Día</label>
                  <div class="col-sm-10">
                      <input type="date" width="500px" height="50px" name="fec" id="fec">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="inputEmail3" class="col-sm-2 col-form-label">Hora</label>
                  <div class="col-sm-10">
                        <select class="form-control" width="500px" height="50px" name="hor" id="hor">
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
                  </div>
              </div>
              <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary" id="btnreg" name="btnreg">Registrar</button>
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Modificar</button>
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modaldesactivarusu">Desactivar</button>
                  </div>
                  
              </div>
          </form>
      </div> 
    
 <!-- fin de formulario -->
 
 <!-- Modal Modificar -->
 
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Realizar cita</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleInputEmail1">Ingrese Cita a Modificar</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto" placeholder="Ingrese Usuario">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Motivo de Modificacion</label>
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Continuar</button>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

 <!-- Fin de Modal Modificar -->
 
 <!-- MODAL DESACTIVAR -->
   <div class="modal fade" id="modaldesactivarusu" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Desactivar cita</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleInputEmail1">Ingrese cita a desactivar</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Motivo de desactivacion</label>
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Confirmar Desactivacion</button>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- FIN MODAL DESACTIVAR
            
    <!-- Javascript files-->

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/front.js"></script>
    <script>
    </script>
  </body>
</html>

