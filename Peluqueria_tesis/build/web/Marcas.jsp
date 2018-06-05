<%-- 
    Document   : Gestion_Noticias
    Created on : 03-04-2018, 20:13:59
    Author     : Leandro
--%>

<%@page import="modelo.Marca"%>
<%@page import="controlador.AccesoDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
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
        // al presionar registrar
        
  if (request.getParameter("btnreg") != null) {
       int id = 0;
       String nombre = request.getParameter("txtnommar");
       Marca m = new Marca(id, nombre);
       if (a.registrarMarca(m)) {
               out.println("Marca registrada correctamente");
           }else{
           out.println("Error al registrar");
       }
   }
    
    
    %>
      
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Formulario para agregar Marcas</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
        <form id="form1" name="form1" method="post" action="Marcas.jsp">
              <div class="form-group row">
                  <label for="marca" class="col-sm-2 col-form-label">Nombre de la Marca</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnommar" name="txtnommar" placeholder="Ingrese el nombre de la marca" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary" id="btnreg" name="btnreg" >Agregar Marca</button>
                  </div>
                  
              </div>
          </form>
      </div>
    <div>
        
    </div>
    <div class="container">
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Nombre</th>
                <th scope="col">Modificar</th>
                <th scope="col">Desactivar/Activar</th>
            </tr>
        </thead>
        <tbody>
     <%  
       ArrayList<Marca> lismar = new ArrayList();
       lismar = a.listarMarcas();
       for (Marca mar : lismar) {
            out.println("<tr>");
              out.println("<th scope='row'>"+mar.getId()+"</th>");
              out.println("<th>"+mar.getNombre()+"</th>");
              out.println("<th><a href='Modificacion_Marca.jsp?linkmodificar="+mar.getId()+"'><span class='fa fa-pencil'></span></a></th>");
              out.println("<th><a href='#'><span class='fa fa-remove'></span></a></th>");
            out.println("</tr>");
        }
     %>
        </tbody>
    </table>
    </div>
    
 <!-- fin de formulario -->
 

<!-- MODAL DESACTIVAR -->
   <div class="modal fade" id="modaldesactivar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Desactivar Noticia</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleInputEmail1">Ingrese Codigo de noticia a desactivar</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Motivo de desactivacion</label>
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Confirmar</button>
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
