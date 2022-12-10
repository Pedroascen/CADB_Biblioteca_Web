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
import udb.cdba.beans.EjemplarBean;
import udb.cdba.model.EjemplarSQL;

@WebServlet(name = "EjemplarController", urlPatterns = {"/consultar"})
public class EjemplarController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("accion") == null) {
            //listar(request, response);
            //request.getRequestDispatcher("/ejemplares/list.jsp").forward(request, response);
        }
        listar(request, response);
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
        String titulo = "";
        String autor = "";
        String material = request.getParameter("material");
        String idioma = request.getParameter("idioma");
        String orderBy = "";

        if (material == null && idioma == null) {
            material = "Todos";
            idioma = "Todos";
            //System.out.println(material + " " + idioma);
            List<EjemplarBean> ejemplares = new EjemplarSQL().ConsultarEjemplares(titulo, autor, material, idioma, orderBy);
            /*for (int i = 0; i < ejemplares.size(); i++) {
                System.out.println(ejemplares.get(i).getCodigoMaterial() + " " + ejemplares.get(i).getAutores());
            }*/
            try {
                request.setAttribute("ejemplares", ejemplares);
                request.getRequestDispatcher("/ejemplares/listar.jsp").forward(request, response);
            } catch (Exception e) {
                System.err.println("Error: " + e);
            }
        } else {

        }
    }
}
