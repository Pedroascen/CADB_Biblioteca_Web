/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import udb.cdba.beans.DataLoginBean;
import udb.cdba.model.ObraModel;

/**
 *
 * @author Jazmine
 */
@WebServlet(name = "ObraController", urlPatterns = {"/obra"})
public class ObraController extends HttpServlet {

 //variable para almacenar datos de usuario logueado
    String Did_rol, Dcarnet;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            DataLoginBean usrdata = new DataLoginBean();
            usrdata = (DataLoginBean)request.getSession().getAttribute("usuarioLogin");
            if(usrdata == null){
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }

            if (request.getParameter("accion") == null) {
                listar(request, response);
            }

            String accion = request.getParameter("accion");
            switch (accion) {

                case "nuevo":
                    request.getRequestDispatcher("/obra/add.jsp").forward(request, response);
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
        processRequest(request, response);
         //capturamos los datos
        Did_rol = request.getParameter("ir");
        //validamos al tipo usuario
        if (Did_rol == "" || Did_rol.equals("0")) {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            //si el usuario es admin
        } else if (Did_rol.equals("1")) {
            processRequest(request, response);
        } else {
            //de no ser admin
            request.getRequestDispatcher("/index_usuarios.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        String genero = request.getParameter("genero");
        

        try {
            if (titulo != "" && ufisica != "" && autor != "" && editorial != "" && pais != "" && idioma != "" && genero != "" && anio != "") {
                ObraModel om = new ObraModel();
                if (om.insert_update(codMaterial, titulo, ufisica, cejemp, autor, npaginas, editorial, pais, isbn, anio, edicion, idioma, genero)) {
                    request.getRequestDispatcher("/obra/list.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("/obra/add.jsp").forward(request, response);
                }
            }

        } catch (Exception e) {
            System.err.println("Error: " + e);
        }

    
    }

    private void listar(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    

}
