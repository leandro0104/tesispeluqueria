<%-- 
    Document   : Gestion_Inventario
    Created on : 03-04-2018, 19:50:30
    Author     : Leandro
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
         // al presionar registrar
         
         if (request.getParameter("btnreg")!= null) {
                                String cod = request.getParameter("cbopro");
                                int cant = Integer.parseInt(request.getParameter("txtcant"));
                                    if (a.modificarStock(cod, cant)) {
                                        out.println("Se ha agregado el nuevo Stock de producto");
                                     }else{
                                        out.println("Error al agregar");
                                    }

                            }
         
      %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Formulario de Ingreso a Inventario</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
        <form id="form1" name="form1" method="post" action="Agregar_Inventario.jsp">
              <div class="form-group row">
                  
                  <label for="lbcod" class="col-sm-2 col-form-label">Cantidad de registros</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnum" name="txtnum" >
                  </div>
                   <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary" name="btncan" id="btnreg" >Generar</button>
                  </div>
              </div>
        </form>
              <%
                if (request.getParameter("btncan")!=null) {
                int num = Integer.parseInt(request.getParameter("txtnum"));
                out.println("<form id='form2' name='form2' method='post' action='Agregar_Inventario.jsp'>");
                out.println("<label for='lbcod' class='col-sm-2 col-form-label'>Codigo Factura</label><div class='col-sm-10'><input type='text' required='required' class='form-control' id='txtcod' name='txtcod' ></div>");
                for (int i = 0; i < num; i++) {
                 out.println("<div class='form-group row'>");
                     out.println("<label for='lbnom' class='col-sm-2 col-form-label'> Producto a Agregar</label>");
                     out.println("<div class='col-sm-10'>");
                       out.println("<select id='cbopro' name='cbopro' class='form-control'>");

                         ArrayList<Producto> lispro = new ArrayList();
                         lispro = a.listarProductos();
                         for (Producto pr : lispro) {
                              out.println("<option value="+pr.getCodigo()+">"+ pr.getNombre()+"</option>");
                          }

                       out.println("</select>");
                     out.println("</div>");
                 out.println("</div>");

                 out.println("<div class='form-group row'><label for='lbdes' class='col-sm-2 col-form-label'>Fecha de Ingreso</label><div class='col-sm-10'><input type='date' required='required' class='form-control' id='txtfec' name='txtfec' ></div></div><div class='form-group row'><label for='lbprov' class='col-sm-2 col-form-label'>Cantidad a Agregar</label><div class='col-sm-10'><input type='number' required='required' class='form-control' id='txtcant' name='txtcant' ></div></div><div class='form-group row'></div>");
                 }
                out.println("<div class='col-sm-10'><button type='submit' class='btn btn-primary' name='btnreg' id='btnreg'>Agregar al Stock</button></div>");
                out.println("</form>");
             }
              
              %>
          
      </div> 
    
 <!-- fin de formulario -->
 
 <!-- Modal Modificar -->
 


 <!-- Fin de Modal Modificar -->
 
 <!-- MODAL DESACTIVAR -->

<!-- FIN MODAL DESACTIVAR
 
 <!-- tabla de productos -->
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
                                    <th scope="col">Marca</th>
                                    <th scope="col">Categoria</th>
                                    <th scope="col">Proveedor</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Modificar</th>
                                    <th scope="col">Desactivar/Activar</th>
                                </tr>
                            </thead>
                            <tbody>
                           <%  
                              ArrayList<Producto> listpro = new ArrayList();
                              listpro = a.listarProductos();
                              for (Producto p : listpro) {
                               out.println("<tr>");
                                   out.println("<th scope='row'>" + p.getCodigo() + "</th>");
                                   out.println("<th>" + p.getNombre() + "</th>");
                                   out.println("<th>" + p.getNombremarca() + "</th>");
                                   out.println("<th>" + p.getNombrecategoria() + "</th>");
                                   out.println("<th>" + p.getNombreproveedor() + "</th>");
                                   out.println("<th>" + p.getCantidad() + "</th>");
                                   out.println("<th>" + p.getPrecio() + "</th>");
                                   out.println("<th>" + p.getEstado() + "</th>");
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
  <!-- final de tabla de productos -->
            
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
