<%-- 
    Document   : Gestion_Inventario
    Created on : 03-04-2018, 19:50:30
    Author     : Leandro
--%>
<%@page import="com.sun.javafx.scene.layout.region.Margins.Converter"%>
<%@page import="modelo.Proveedor" %>
<%@page import="controlador.AccesoDatos"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        if (request.getParameter("btnreg") != null) {
            int id = 0;
            String rut = request.getParameter("txtrut");
            String nom = request.getParameter("txtnom");
            String dir = request.getParameter("txtdir");
            int tel = Integer.parseInt(request.getParameter("txttel"));
            String ema = request.getParameter("txtcor");
            String est = "Activo";
            Proveedor p = new Proveedor(id, rut, nom, dir, tel, ema, est);
            if (a.registrarProveedor(p)) {
               out.println("Proveedor Registrado correctamente");
            }else{
               out.println("Error al Registrar");
            }
         }
   
   %>
      
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Formulario para Agregar Proveedor</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
        <form id="form1" name="form1" action="gestion_proveedores.jsp"  method="post" >
              <div class="form-group row">
                  <label for="lbrut" class="col-sm-2 col-form-label">Rut:</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtrut" name="txtrut" placeholder="Ingrese el rut del proveedor" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbnom" class="col-sm-2 col-form-label">Nombre:</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnom" name="txtnom" placeholder="Ingrese el nombre del proveedor" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbdir" class="col-sm-2 col-form-label">Direccion:</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtdir" name="txtdir" placeholder="Ingrese la direccion del proveedor" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbtel" class="col-sm-2 col-form-label">Telefono:</label>
                  <div class="col-sm-10">
                      <input type="number" min="1" maxlength="10" class="form-control" id="txttel" name="txttel" placeholder="Ingrese el Telefono del proveedor" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbpass2" class="col-sm-2 col-form-label">Correo:</label>
                  <div class="col-sm-10">
                      <input type="email" class="form-control" id="txtcor" name="txtcor" placeholder="Ingrese el correo del proveedor" required="required">
                  </div>
              </div>
              
              
              <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary" id="btnreg" name="btnreg">Registrar Proveedor</button>
                  </div>
                  
              </div>
          </form>
      </div> 
    
 <!-- fin de formulario -->
 

 <!-- tabla de proveedor -->
       <div class="container">
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Rut</th>
                <th scope="col">Nombre</th>
                <th scope="col">Direccion</th>
                <th scope="col">Telefono</th>
                <th scope="col">Correo</th>
                <th scope="col">Modificar</th>
                <th scope="col">Desactivar/Activar</th>
            </tr>
        </thead>
        <tbody>
     <%  
       ArrayList<Proveedor> lisprov = new ArrayList();
       lisprov = a.listarProveedores();
       for (Proveedor p : lisprov) {
            out.println("<tr>");
              out.println("<th scope='row'>"+p.getRut()+"</th>");
              out.println("<th>"+p.getNombre()+"</th>");
              out.println("<th>"+p.getDireccion()+"</th>");
              out.println("<th>"+p.getTelefono()+"</th>");
              out.println("<th>"+p.getCorreo()+"</th>");
              out.println("<th><a href='Modificacion_Proveedor.jsp?linkmodificar="+p.getId()+"'><span class='fa fa-pencil'></span></a></th>");
              out.println("<th><a href='#'><span class='fa fa-remove'></span></a></th>");
            out.println("</tr>");
        }
     %>
        </tbody>
    </table>
    </div>
  <!-- final de tabla de proveedor -->
            
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

