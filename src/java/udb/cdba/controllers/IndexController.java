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
import udb.cdba.beans.MaterialBean;
import udb.cdba.model.EjemplarSQL;

/**
 *
 * @author Ascencio
 */
@WebServlet(name = "IndexController", urlPatterns = {"/index"})
public class IndexController extends HttpServlet {

    //variable para almacenar datos de usuario logueado
    String Lid_rol, Lcarnet;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String Lid_rol = request.getParameter("ir");
            if (Lid_rol == null) {
                doGet(request, response);
            }
            
            listar(request, response);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Lid_rol = request.getParameter("ir");
        if (Lid_rol == "" || Lid_rol.equals("0")) {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else if (Lid_rol.equals("1")) {
            listar(request, response);
            //request.getRequestDispatcher("/index.jsp").forward(request, response);
            //getServletInfo(request, response);
        } else if (Lid_rol.equals("2") || Lid_rol.equals("3")) {
            request.getRequestDispatcher("/index_usuarios.jsp").forward(request, response);
            //response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
        }
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
            //String id_rol = request.getParameter("ir");
            //invocamos un metodo para listar y le pasamos los datos de la vista
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + Lid_rol + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    private void listar(HttpServletRequest request, HttpServletResponse response) {
        List<MaterialBean> mtls = new EjemplarSQL().listar();
        try {
            request.setAttribute("materiales", mtls);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
}
