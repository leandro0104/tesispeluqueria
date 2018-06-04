<%-- 
    Document   : agregar_trabajos
    Created on : 22-05-2018, 22:43:56
    Author     : Cote
--%>
<%@page import="modelo.Trabajo" %>
<%@page import="controlador.AccesoDatos"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      
     // Aqui se realizara el registro del usuario
   
       if (request.getParameter("btnreg") != null) {
            String tra = request.getParameter("txttra");
            int pre = Integer.parseInt(request.getParameter("txtpre"));
            String desc = request.getParameter("txtdes");
            String img = request.getParameter("txtimg");
            String usu = session.getAttribute("LOGIN").toString();
            Trabajo t = new Trabajo(tra,pre,desc,img,usu);
            if (a.insertarTrabajo(t)) {
               out.print("Registrado correctamente");
            }else{
                out.print("No registrado");
            }
           /*
               String ema = request.getParameter("txtema");
               String nom = request.getParameter("txtnom");
               String ape = request.getParameter("txtape");
               String pass1 = request.getParameter("txtpas");
               String pass2 = request.getParameter("txtpasc");
               String tip = "Trabajador";
               String tel = request.getParameter("txttel");
               Usuario u = new Usuario(ema, nom, ape, pass1, tip, tel);
               if (a.registrarUsuario(u)) {
                       out.println("Registrado Correctamente");
               }else{
                   out.println("Error Al registrar");
               }*/
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
                    <h1 class="page-header">Registrar Trabajo</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
        <form id="form1" name="form1" action="agregar_trabajos.jsp" method="post">
              <div class="form-group row">
                  <label for="Email" class="col-sm-2 col-form-label">Trabajo</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txttra" name="txttra" placeholder="Trabajo" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbnom" class="col-sm-2 col-form-label">Precio</label>
                  <div class="col-sm-10">
                      <input type="number" class="form-control" id="txtpre" name="txtpre" placeholder="Ingrese valor" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbape" class="col-sm-2 col-form-label">Descripción</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtdes" name="txtdes" placeholder="Ingrese descripción" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbpas" class="col-sm-2 col-form-label">Imagen</label>
                  <div class="col-sm-10">
                      <input type="file" class="form-control" id="txtimg" name="txtimg" required="required">
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
        <h5 class="modal-title" id="exampleModalLabel">Realizar Modificacion</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleInputEmail1">Ingrese Usuario a Modificar</label>
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
        <h5 class="modal-title" id="exampleModalLabel">Desactivar Usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleInputEmail1">Ingrese nombre de usuario a desactivar</label>
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


 <!-- tabla de trabajos -->
  <div class="container-fluid">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           
                        </div>
                        
                        <!-- /.panel-body -->
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Descripción</th>
                                    <th scope="col">Imagen</th>
                                    <th scope="col">Modificar</th>
                                    <th scope="col">Desactivar</th>
                                </tr>
                            </thead>
                            <tbody>
                           <%  
                              ArrayList<Trabajo> listra = new ArrayList();
                              String cond =session.getAttribute("LOGIN").toString();
                              listra = a.listarTrabajos(cond);
                              for (Trabajo t : listra) {
                               out.println("<tr>");
                                   out.println("<th scope='row'>" + t.getCod() + "</th>");
                                   out.println("<th>" + t.getNom() + "</th>");
                                   out.println("<th>" + t.getPre() + "</th>");
                                   out.println("<th>" + t.getDesc() + "</th>");
                                   out.println("<th><img src='" + t.getImg() + "'></th>");
                                   out.println("<th><a href='#'><span class='fa fa-pencil'></span></a></th>");
                                   out.println("<th><a href='#'><span class='fa fa-remove'></span></a></th>");
                               out.println("</tr>");      
                               }
                           %>
                            </tbody>
                        </table>

                        
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
  <!-- final de tabla de trabajos -->
 
            
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
