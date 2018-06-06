<%-- 
    Document   : inicio_trabajador
    Created on : 08-04-2018, 16:31:01
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
    <title>Fashion-Hair Administrador</title>
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
                    <h1 class="page-header">Portal de Trabajador</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
      <div class="container">
          <!-- /.row -->
            <div class="row">
                 <!-- /.formulario -->
               
                        <!-- /.panel-body -->
                        
                        
                    </div>
                    <!-- /.panel -->
                     <!-- /.formulario -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           
                        </div>
                        
                        <!-- /.panel-body -->
                        <form method="post" action="inicio_trabajador.jsp">
                            <label>Buscar por día:</label>
                            <input type="date">
                            <input type="submit" value="Buscar">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Tratamiento</th>
                                    <th scope="col">Día</th>
                                    <th scope="col">Hora</th>
                                    <th scope="col">Confirmar</th>
                                    <th scope="col">Modificar</th>
                                    <th scope="col">Generar Voucher</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String us = session.getAttribute("LOGIN").toString();
                                    ArrayList<Cita> listcit = new ArrayList();
                                    listcit = a.listarCita(us);
                                    for (Cita c : listcit) {
                                        out.println("<tr>");
                                        out.println("<th scope='row'>"+c.getCod()+"</th>");
                                        out.println("<td>"+c.getCli()+"</td>");
                                        out.println("<td>"+c.getSer()+"</td>");
                                        out.println("<td>"+c.getDia()+"</td>");
                                        out.println("<td>"+c.getHor()+"</td>");
                                        out.println("<td><input type='button' value='Confirmar'></td>");
                                        out.println("<td><input type='button' value='Modificar'></td>");
                                        out.println("<td><a data-toggle='modal' data-target='#modalvaucher' href='#modalvaucher'>Generar</a></td>");
                                        out.println("</tr>");
                                    }
                                %>
                                
                            </tbody>
                        </table>
                        </form>

                       <!-- <table class="table">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">First</th>
                                    <th scope="col">Last</th>
                                    <th scope="col">Handle</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Larry</td>
                                    <td>the Bird</td>
                                    <td>@twitter</td>
                                </tr>
                            </tbody>
                        </table>-->
                       
                       <!--     Modal para vaucher -->                

                       <div class="modal fade" id="modalvaucher" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                           <div class="modal-dialog">
                               <div class="modal-content">
                                   <div class="modal-header">
                                       <h4 class="modal-title" id="myModalLabel">Generacion de Voucher</h4>
                                   </div>
                                   <div class="modal-body">
                                       <!-- modal vaucher -->   
                                       <form id="form1" name="form1"  method="post" action="">   
                                           <div class="form-group">
                                               <label for="Codigo">Codigo del Voucher</label>
                                               <input type="text" name="txtusu" id="txtusu" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su usuario">
                                               <small id="emailHelp" class="form-text text-muted">Cada voucher posee un codigo distinto</small>
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputPassword1">Nombre del Cliente</label>
                                               <input type="text" id="txtcli" name="txtcli" class="form-control" id="exampleInputPassword1" placeholder="Ingrese el nombre del cliente">
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputPassword1">Rut del Cliente</label>
                                               <input type="text" id="txtrut" name="txtrut" class="form-control" id="exampleInputPassword1" placeholder="Ingrese el rut del cliente">
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputPassword1">Servicios Realizados</label>
                                               <textarea id="txtserv" name="txtserv" class="form-control"></textarea>
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputPassword1">Total a Cancelar</label>
                                               <input type="number" id="txtcan" name="txtcan" class="form-control" id="exampleInputPassword1">
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputPassword1">Comentarios Adicionales</label>
                                               <textarea id="txtcom" name="txtcom" class="form-control"></textarea>
                                           </div>

                                       </form>

                                   </div>
                                   <div class="modal-footer">
                                       <a href="" class="btn btn-info" role="button">Imprimir Voucher</a>
                                       
                                   </div>
                               </div><!-- /.modal-content -->
                           </div><!-- /.modal-dialog -->
                       </div><!-- /.modal -->

                       <!-- Fin de Modal para vaucher -->
                        
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
      </div>
            
            
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
