package udb.cdba.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UsuarioCtrl extends HttpServlet {

    //variables para vistas
    String listar = "usuarios/listar.jsp";
    String add = "usuarios/add.jsp";
    String edit = "usuarios/edit.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UsuarioCtrl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UsuarioCtrl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("accion");

        if (action.equalsIgnoreCase("listar")) {
            listar(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void listar(HttpServletRequest request, HttpServletResponse response) {
        String acceso = "";
        acceso = listar;
        try {
            RequestDispatcher vista = request.getRequestDispatcher(acceso);
            vista.forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

}
