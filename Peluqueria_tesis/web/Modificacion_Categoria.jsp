<%-- 
    Document   : Gestion_Noticias
    Created on : 03-04-2018, 20:13:59
    Author     : Leandro
--%>

<%@page import="modelo.*"%>
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
      int id = Integer.parseInt(request.getParameter("linkmodificar"));
      Categoria c = a.buscarCategoria(id);
      
     if (request.getParameter("btnreg")!=null) {
        String noma = request.getParameter("txtnomcat");
        String nomn = request.getParameter("txtnomcatn");
        String mot = request.getParameter("txtmot");    
        HisCategoria hc = new HisCategoria(id, noma, nomn, mot);
        Categoria cat = new Categoria(id, nomn);
        if (a.IngresarModificacionCategoria(hc) && a.modificarcategoria(cat)) {
                out.println("Categoria Modificada correctamente"); 
        }else{
            out.println("Error al modificar"); 
        }
    }
      
   %>
      
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Formulario de Modificacion de Categoria</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
        <form id="form1" name="form1" method="post" action="">
              <div class="form-group row">
                  <label  class="col-sm-2 col-form-label">Codigo de Categoria</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtcod" name="txtcod" required="required" value="<%=c.getId()%>" readonly="readonly">
                  </div>
              </div>
            <div class="form-group row">
                  <label  class="col-sm-2 col-form-label">Nombre Actual de la Categoria</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnomcat" name="txtnomcat" required="required" value="<%=c.getNombre()%>" readonly="readonly">
                  </div>
            </div>
            <div class="form-group row">
                  <label  class="col-sm-2 col-form-label">Nombre Nuevo</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnomcatn" name="txtnomcatn" required="required">
                  </div>
            </div>      
            <div class="form-group row">
                  <label  class="col-sm-2 col-form-label">Motivo de Modificacion</label>
                  <div class="col-sm-10">
                      <textarea class="form-control" id="txtmot" name="txtmot" required="required"></textarea>
                  </div>
            </div>
              <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary" id="btnreg" name="btnreg" >Modificar</button>
                  </div>
                  
              </div>
          </form>
      </div>
    <div>
        
    </div>
  
    
 <!-- fin de formulario -->
 
            
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
