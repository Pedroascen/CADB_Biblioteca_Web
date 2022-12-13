/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import udb.cdba.beans.DataLoginBean;
import udb.cdba.beans.EjemplarBean;
import udb.cdba.model.EjemplarSQL;

@WebServlet(name = "EjemplarControllerNS", urlPatterns = {"/consultarns"})
public class EjemplarControllerNS extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        DataLoginBean usrdata = (DataLoginBean) request.getSession().getAttribute("usuarioLogin");
//        if (usrdata == null) {
//            request.getRequestDispatcher("/login.jsp").forward(request, response);
//        }

        String accion = request.getParameter("accion");
            switch (accion) {
                case "buscarns":
                    listar(request, response);
                    break;
            }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void getServletInfo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //UsuarioBean usr = (UsuarioBean) request.getAttribute("usuario");
            //UsuarioBean usr = (UsuarioBean) request.getAttribute("usuario");
            //Did_rol = request.getParameter("ir");

            //invocamos un metodo para listar y le pasamos los datos de la vista
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EjemplarController at</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    private void listar(HttpServletRequest request, HttpServletResponse response) {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String material = request.getParameter("material");
        String idioma = request.getParameter("idioma");
        String orderBy = request.getParameter("orderBy");

        if (titulo == null ) {
            titulo = "";
        }
        
        if (autor == null ) {
            autor = "";
        }
        
        if (material == null ) {
            material = "Todos";
        }
        
        if (idioma == null ) {
            idioma = "Todos";
        }
        
        if (orderBy == null ) {
            orderBy = "Título";
        }

        List<EjemplarBean> ejemplares = new EjemplarSQL().ConsultarEjemplares(titulo, autor, material, idioma, orderBy);

        try {
            request.setAttribute("ejemplares", ejemplares);
            request.getRequestDispatcher("/ejemplares/listarns.jsp").forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
}
