<%-- 
    Document   : Gestion_Noticias
    Created on : 03-04-2018, 20:13:59
    Author     : Leandro
--%>

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
                    <h1 class="page-header">Agregar Noticias</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
          <form>
              <div class="form-group row">
                  <label for="inputEmail3" class="col-sm-2 col-form-label">Titulo de la Noticia</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Email">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbpass" class="col-sm-2 col-form-label">Imagen de La noticia</label>
                  <div class="col-sm-10">
                      <input type="file" class="form-control" id="txtpass1" >
                  </div>
              </div>
              <div class="form-group row">
                  <div class="col-sm-10">
                      <label for="exampleFormControlTextarea1">Contenido de la noticia</label>
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbpass2" class="col-sm-2 col-form-label">Fecha de la noticia</label>
                  <div class="col-sm-10">
                      <input type="date" class="form-control" id="txtpassc">
                  </div>
              </div>
             
              <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary">Ingresar Noticia</button>
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Modificar Noticia</button>
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modaldesactivar">Desactivar Noticia</button>
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
                  <label for="exampleInputEmail1">Ingrese Codigo de noticia a modificar</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="texto">
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
