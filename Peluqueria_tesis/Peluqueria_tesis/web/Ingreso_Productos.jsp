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
         
         if (request.getParameter("btnreg")!=null) {
            String cod = request.getParameter("txtcod");
            String nom = request.getParameter("txtnom");
            int mar = Integer.parseInt(request.getParameter("cbomar"));
            int cat = Integer.parseInt(request.getParameter("cbocat"));
            String des = request.getParameter("txtdes");
            int prov = Integer.parseInt(request.getParameter("cboprov"));
            int cant = 0;
            String est = "Activo";
            int pre = Integer.parseInt(request.getParameter("txtpre"));
            String img = request.getParameter("txtimg");
            Producto pro = new Producto(cod,nom,mar,cat,des,prov,cant,est,pre,img);
            if (a.registrarProducto(pro)) {
                out.println("Producto registrado correctamente");
            }else{
                out.println("Error al Registrar");
            }
         }
      %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Formulario Agregar Productos</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    <!-- formulario -->
    <div class="container-fluid">  
        <form id="form1" name="form1" method="post" action="Ingreso_Productos.jsp">
              <div class="form-group row">
                  <label for="lbcod" class="col-sm-2 col-form-label">Codigo</label>
                  <div class="col-sm-10">
                      <input type="text" readonly="readonly" class="form-control" id="txtcod" name="txtcod" value="<% out.println("P000" + a.codigofinal()); %>">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbnom" class="col-sm-2 col-form-label">Nombre</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtnom" name="txtnom" placeholder="Ingrese el nombre del producto" required="required">
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbmar" class="col-sm-2 col-form-label">Marca</label>
                  <div class="col-sm-10">
                      <select id="cbomar" name="cbomar" class="form-control">
                    <%  
                        ArrayList<Marca> lismar = new ArrayList();
                        lismar = a.listarMarcas();
                        for (Marca m : lismar) {
                           out.println("<option value="+m.getId()+">"+m.getNombre()+"</option>");
                        }
                    %>
                      </select>
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbcat" class="col-sm-2 col-form-label">Categoria</label>
                  <div class="col-sm-10">
                   <select id="cbocat" name="cbocat" class="form-control">
                    <%  
                        ArrayList<Categoria> liscat = new ArrayList();
                        liscat = a.listarCategorias();
                        for (Categoria c : liscat) {
                           out.println("<option value="+c.getId()+">"+c.getNombre()+"</option>");
                        }
                    %>
                      </select>  
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbdes" class="col-sm-2 col-form-label">Descripcion</label>
                  <div class="col-sm-10">
                      <textarea class="form-control" id="txtdes" name="txtdes" rows="3" required="required"></textarea>
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbprov" class="col-sm-2 col-form-label">Proveedor</label>
                  <div class="col-sm-10">
                  <select id="cboprov" name="cboprov" class="form-control">
                    <%  
                        ArrayList<Proveedor> lisprov = new ArrayList();
                        lisprov = a.listarProveedores();
                        for (Proveedor p : lisprov) {
                           out.println("<option value="+p.getId()+">"+p.getNombre()+"</option>");
                        }
                    %>
                      </select>  
                  </div>
              </div>
              <div class="form-group row">
                  <label for="lbprecio" class="col-sm-2 col-form-label">Precio</label>
                  <div class="col-sm-10">
                      <input type="number" class="form-control" id="txtpre" name="txtpre" placeholder="Ingrese el valor del producto" required="required" >
                  </div>
              </div>
               <div class="form-group row">
                  <label for="lbimg" class="col-sm-2 col-form-label">Imagen del producto</label>
                  <div class="col-sm-10">
                      <input type="file" class="form-control" id="txtimg" name="txtimg" required="required">
                  </div>
              </div>       
              
              <div class="form-group row">
                  <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary" name="btnreg" id="btnreg" >Agregar Producto</button>
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
                  <label for="exampleInputEmail1">Ingrese Codigo de Producto a Modificar</label>
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
   <div class="modal fade" id="modaldesactivarpro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Desactivar Producto</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form>
              <div class="form-group">
                  <label for="exampleInputEmail1">Ingrese codigo de producto a desactivar</label>
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
