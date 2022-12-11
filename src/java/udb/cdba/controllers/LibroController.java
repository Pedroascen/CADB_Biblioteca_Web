/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import udb.cdba.model.LibroModel;
import udb.cdba.beans.LibroBean;

/**
 *
 * @author Jazmine
 */
@WebServlet(name = "LibroController", urlPatterns = {"/libro"})
public class LibroController extends HttpServlet {

    //variable para almacenar datos de usuario logueado
    String Did_rol, Dcarnet;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //capturamos los datos
            String Lrol_id = request.getParameter("ir");
            if (Lrol_id == null) {
                doGet(request, response);
            }

            if (request.getParameter("accion") == null) {
                listar(request, response);
            }

            String accion = request.getParameter("accion");
            switch (accion) {

                case "nuevo":
                    request.getRequestDispatcher("/libro/add.jsp").forward(request, response);
                    break;
                case "insertar":
                    //getServletInfo(request,response);
                    insertar(request, response);
                    break;
                case "modificar":
                    break;
                case "eliminar":
                    break;
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //capturamos los datos
        Did_rol = request.getParameter("ir");
        //validamos al tipo usuario
        if (Did_rol == "" || Did_rol.equals("0")) {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            //si el usuario es admin
        } else if (Did_rol.equals("1")) {
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(LibroController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            //de no ser admin
            request.getRequestDispatcher("/index_usuarios.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LibroController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void getServletInfo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //LibroBean lb = (LibroBean) request.getAttribute("libro");
            String codMaterial = "";
            String titulo = request.getParameter("titulo");
            String ufisica = request.getParameter("ufisica");
            String cejemp = request.getParameter("cejemp");
            String autor = request.getParameter("autor");
            String npaginas = request.getParameter("npaginas");
            String editorial = request.getParameter("editorial");
            String pais = request.getParameter("pais");
            String isbn = request.getParameter("isbn");
            String anio = request.getParameter("anio");
            String edicion = request.getParameter("edicion");
            String idioma = request.getParameter("idioma");
            String materia = request.getParameter("materia");
            String descripcion = request.getParameter("descripcion");

            //invocamos un metodo para listar y le pasamos los datos de la vista
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + codMaterial + " " + titulo + " " + ufisica + " " + cejemp + " " + autor + " " + npaginas + " " + editorial + " " + pais + " " + isbn + " " + anio + " " + edicion + " " + idioma + " " + materia + " " + descripcion + " :  </h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    //metodo para insertar
    private void insertar(HttpServletRequest request, HttpServletResponse response) {
        String codMaterial = request.getParameter("codMaterial");
        String titulo = request.getParameter("titulo");
        String ufisica = request.getParameter("ufisica");
        String cejemp = request.getParameter("cejemp");
        String autor = request.getParameter("autor");
        String npaginas = request.getParameter("npaginas");
        String editorial = request.getParameter("editorial");
        String pais = request.getParameter("pais");
        String isbn = request.getParameter("isbn");
        String anio = request.getParameter("anio");
        String edicion = request.getParameter("edicion");
        String idioma = request.getParameter("idioma");
        String materia = request.getParameter("materia");
        String descripcion = request.getParameter("descripcion");

        try {
            if (titulo != "" && ufisica != "" && autor != "" && editorial != "" && pais != "" && idioma != "" && materia != "" && descripcion != "") {
                LibroModel lm = new LibroModel();
                if (lm.insert_update(codMaterial, titulo, ufisica, cejemp, autor, npaginas, editorial, pais, isbn, anio, edicion, idioma, materia, descripcion)) {
                    request.getRequestDispatcher("/libro/list.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("/libro/add.jsp").forward(request, response);
                }
            }

        } catch (Exception e) {
            System.err.println("Error: " + e);
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
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void listar(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
