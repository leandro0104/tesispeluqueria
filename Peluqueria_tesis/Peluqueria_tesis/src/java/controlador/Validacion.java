/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Importaciones
import javax.servlet.http.HttpSession;      // trabajar con sesiones
import javax.servlet.RequestDispatcher;     // redireccionar pagina
import controlador.AccesoDatos;
import modelo.Usuario;

/**
 *
 * @author Leandro
 */
@WebServlet(name = "Validacion", urlPatterns = {"/validar.do"})
public class Validacion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validacion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validacion at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String log = request.getParameter("txtusu");
        String pass = request.getParameter("txtpass");
        AccesoDatos a = new AccesoDatos();
        Usuario usu = a.validar(log, pass);
        if (usu != null) {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usu", usu);
            sesion.removeAttribute("LOGIN");
            sesion.removeAttribute("PASSWORD");
            sesion.removeAttribute("NOMBRE");
            sesion.removeAttribute("TIPO");
            sesion.setAttribute("LOGIN",usu.getEmail());
            sesion.setAttribute("PASSWORD",usu.getPassword());
            sesion.setAttribute("NOMBRE", usu.getNombre());
            sesion.setAttribute("TIPO", usu.getTipo());
            
            
           
            if (sesion.getAttribute("TIPO").equals("Admin")) {
            RequestDispatcher r = request.getRequestDispatcher("Portaladmin.jsp");
            r.forward(request, response);
            }else if(sesion.getAttribute("TIPO").equals("Trabajador")){
                RequestDispatcher r = request.getRequestDispatcher("portaltrabajador.jsp");
                r.forward(request, response);
            }else if(sesion.getAttribute("TIPO").equals("Cliente")){
                RequestDispatcher r = request.getRequestDispatcher("portalcliente.jsp");
                r.forward(request, response);
            }else{
               RequestDispatcher r = request.getRequestDispatcher("index.jsp");
                r.forward(request, response); 
            }
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
