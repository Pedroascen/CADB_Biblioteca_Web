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
import udb.cdba.beans.UsuarioBean;
import udb.cdba.model.Hash;
import udb.cdba.model.UsuarioSQL;

/**
 *
 * @author Ascencio
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/usuario"})
public class UsuarioController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("accion") == null) {
                //getServletInfo(request,response);
                listar(request, response);
            }
            String accion = request.getParameter("accion");
            switch (accion) {
                case "listar":
                    listar(request, response);
                    break;
                case "nuevo":
                    request.getRequestDispatcher("/usuarios/add.jsp").forward(request, response);
                    break;
                case "insertar":
                     insertar(request,response);
                    break;
                case "obtener":
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
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String contrasenia = request.getParameter("contrasenia");
            String id_rol = request.getParameter("id_rol");
            //encriptamos la contrasenia
            String contraCif = Hash.sha1(contrasenia);
                //invocamos un metodo para listar y le pasamos los datos de la vista
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + nombre +" : "+ apellido +" : "+ contraCif+" : "+id_rol+ "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    //metodo para listar
    private void listar(HttpServletRequest request, HttpServletResponse response) {
        //cremos la lista de usuarios
        List<UsuarioBean> usuarios = new UsuarioSQL().listar();
        //capturamos excepciones en caso de error
        try {
            request.setAttribute("usuarios", usuarios);
            request.getRequestDispatcher("/usuarios/listar.jsp").forward(request, response);
            //RequestDispatcher vista = request.getRequestDispatcher(acceso);
            //vista.forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
    
    //metodo para listar
    private void insertar(HttpServletRequest request, HttpServletResponse response) {
        //UsuarioBean usr = (UsuarioBean) request.getAttribute("usuario");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String contrasenia = request.getParameter("contrasenia");
            String id_rol = request.getParameter("id_rol");
            //encriptamos la contrasenia
            String contraCif = Hash.sha1(contrasenia);
            int rol = Integer.parseInt(id_rol);
        try {
            if(!nombre.equals("")||!apellido.equals("")||contraCif.equals("")){
             //instanciamos el objeto de acceso a la base
             UsuarioSQL usrsql = new UsuarioSQL();
             usrsql.registrar(nombre, apellido, contraCif, rol);
             listar(request, response);
             }else{
                 request.getRequestDispatcher("/usuarios/add.jsp").forward(request, response);
             }
             
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
}
