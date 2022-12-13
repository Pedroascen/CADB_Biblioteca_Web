/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import udb.cdba.beans.DataLoginBean;
import udb.cdba.model.Hash;
import udb.cdba.model.UsuarioSQL;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    //instanciamos la clase DataLogin
    DataLoginBean usrdata = new DataLoginBean();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            if (request.getParameter("accion") == null) {
                //getServletInfo(request,response);
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
            //capturamos la accion
            String accion = request.getParameter("accion");
            switch (accion) {
                case "logueo":
                    logueo(request, response);
                    break;
                case "salir":
                    cerrarSesion(request, response);
                    break;
            }
            request.getRequestDispatcher("/login.jsp").forward(request, response);
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
            //capturamos los datos del formulario
            String carnet = request.getParameter("carnet");
            String contrasenia = request.getParameter("contrasenia");
            //encriptamos la contrasenia
            String contraCif = Hash.sha1(contrasenia);

            //invocamos un metodo para listar y le pasamos los datos de la vista
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + usrdata.getId_rol() + " " + usrdata.getCarnet() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    private void logueo(HttpServletRequest request, HttpServletResponse response) {
        //capturamos los datos del formulario
        String carnet = request.getParameter("carnet");
        String contrasenia = request.getParameter("contrasenia");
        //encriptamos la contrasenia
        String contraCif = Hash.sha1(contrasenia);
        //seteamos la contrasenia
        usrdata.setCarnet(carnet);
        usrdata.setContrasenia(contraCif);
        //intentamos autentificar
        try {
            //instanciamos el objeto de acceso a la base
            UsuarioSQL usrsql = new UsuarioSQL();
            //validamos los datos
            if (usrsql.login(usrdata)) {
                //getServletInfo(request, response);
                if (usrdata.getId_rol() == 1) {
                    
                    request.getSession().setAttribute("usuarioLogin", usrdata);
                    request.getRequestDispatcher("/components/menu.jsp").forward(request, response);
                    inicio(request, response);
                } else if (usrdata.getId_rol() == 2 || usrdata.getId_rol() == 3) {
                    request.getSession().setAttribute("usuarioLogin", usrdata);
                    //request.getRequestDispatcher("/components/menu_user.jsp").forward(request, response);
                    inicio_user(request, response);
                }
            } else {
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    private void inicio(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void inicio_user(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/index_usuarios.jsp").forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void cerrarSesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        usrdata.setId_rol(0);
        usrdata.setCarnet("");
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        
    }

}