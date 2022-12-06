package udb.cdba.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import udb.cdba.beans.UsuarioBean;
import udb.cdba.model.Hash;
import udb.cdba.model.UsuarioSQL;

public class UsuarioCtrl extends HttpServlet {

    //variables para vistas
    String inicio = "/index.jsp";
    String listar = "/usuarios/listar.jsp";
    String add = "/usuarios/add.jsp";
    String edit = "/usuarios/edit.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //capturamos la accion
            String action = request.getParameter("accion");

            //si se desea loguear
            if (action.equals("logueo")) {
                //capturamos los datos del formulario
                UsuarioBean usr = (UsuarioBean) request.getAttribute("usuario");
                //encriptamos la contrasenia
                String contraCif = Hash.sha1(usr.getContrasenia());
                //seteamos la contrasenia
                usr.setContrasenia(contraCif);
                //instanciamos el objeto de acceso a la base
                UsuarioSQL usrsql = new UsuarioSQL();
                //validamos los datos
                if (usrsql.login(usr)) {
                    logueo(request, response);
                }
                //vista por defecto
                response.sendRedirect("login.jsp");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("accion");
        if (action.equals("listar")) {
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

    //metodo para el logue
    private void logueo(HttpServletRequest request, HttpServletResponse response) {
        String acceso = "";
        acceso = inicio;
        try {
            RequestDispatcher vista = request.getRequestDispatcher(acceso);
            vista.forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

    //metodo para listar
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
