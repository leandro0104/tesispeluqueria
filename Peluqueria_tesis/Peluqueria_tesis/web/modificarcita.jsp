<%-- 
    Document   : portalcliente
    Created on : 09-abr-2018, 16:19:58
    Author     : Camila
--%>

<%-- 
    Document   : index.jsp
    Created on : 01-04-2018, 20:29:45
    Author     : Leandro
--%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Servicio"%>
<%@page import="modelo.Auditoria"%>
<%@page import="controlador.AccesoDatos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

      <%
          
            HttpSession sesion = request.getSession();
            if(sesion.getAttribute("usu") != null){
                Usuario usu = (Usuario) sesion.getAttribute("usu");
                
                out.println("<center>");
                    
                out.println("</center>");
            }else{
                response.sendRedirect("index.jsp?error=2");
            }
            AccesoDatos a = new AccesoDatos();
           String tto="";
           String dia="";
           String hora="";
           String num="";
           String prof="";
           String us="";
           String uss="";
           String usss="";
                Usuario u = (Usuario) sesion.getAttribute("usu");
            us = u.getNombre(); 
            uss=  u.getApellido();
            usss= us + " " +uss;
            
      int cod = Integer.parseInt(request.getParameter("linkmodificar"));
      Servicio ss = a.buscarServicio(cod);
      
      if (request.getParameter("btnmodcita")!= null) {
              tto = request.getParameter("txttto");
              dia = request.getParameter("txtdia");
              hora = request.getParameter("txthora");
              num = request.getParameter("txttelef");
              prof = request.getParameter("txtprof");
            
             Servicio s= new Servicio(cod,tto,dia,hora,num,prof,usss);
            
              if (a.modificarservicio(s,usss,cod)) {
                  out.println("<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Modificado</strong> Se ha modificado la cita</div>");
                  response.sendRedirect("portalcliente.jsp");
              }else{
                  out.println("<div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>No modificado</strong>No se ha modificado la cita</div>");
              }
          }
     
                
        %>
        <div class="container">
    <form id="form1" name="form1" method="post" action="">
           <div class="form-group">
     
                  <label for="exampleFormControlTextarea1">Tratamiento</label>
                  <input type="text" id="txttto" name="txttto" class="form-control"  aria-describedby="texto" placeholder="" value="<%=ss.getTto()%>">
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Dia</label>
                  <input type="text" id="txtdia" name="txtdia" class="form-control" aria-describedby="texto" placeholder="" value="<%=ss.getDia()%>">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Hora</label>
                  <input type="text" class="form-control" id="txthora" name="txthora" aria-describedby="texto" placeholder="" value="<%=ss.getHora()%>">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Telefono</label>
                  <input type="number" class="form-control" id="txttelef" name="txttelef"  placeholder="" value="<%=ss.getTelefono()%>">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Profesional</label>
                  <input type="text" class="form-control" id="txtprof" name="txtprof" aria-describedby="texto" placeholder="" value="<%=ss.getProfesional()%>">
              </div>
              <div class="form-group">
                  <label for="exampleFormControlTextarea1">Motivo de Modificacion</label>
                  <textarea class="form-control" id="txtmot" name="txtmot" rows="3"></textarea>
              </div>
              
              <button type="submit" class="btn btn-primary" id="btnmodcita" name="btnmodcita" style="background-color: #F34D2F; border-color: #F34D2F;">Modificar</button>
          </form>
     
</div>
 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
