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
import udb.cdba.beans.DispMaterialBean;
import udb.cdba.beans.PrestamoBean;
import udb.cdba.model.PrestamoSQL;

/**
 *
 * @author Rocio Abrego
 */

@WebServlet(name = "PrestamoController", urlPatterns = {"/prestamo"})
public class PrestamoController extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String accion = request.getParameter("accion");
            switch (accion) {
                case "0":
                case "1":
                    add(request, response);
                    break;
                case "save":
                    save(request, response);
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
    
    private void add(HttpServletRequest request, HttpServletResponse response) {
        //capturamos excepciones en caso de error
        try {
            int estado = Integer.parseInt(request.getParameter("accion"));
            
            List<DispMaterialBean> mat_disponible = new PrestamoSQL().ListaMateriales(estado);
            request.setAttribute("listarMateriales", mat_disponible);
            
            request.getRequestDispatcher("/prestamo/prestamo.jsp").forward(request, response);
            //RequestDispatcher vista = request.getRequestDispatcher(acceso);
            //vista.forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
    
    private void save(HttpServletRequest request, HttpServletResponse response) {
        //capturamos excepciones en caso de error
        PrestamoSQL presql = new PrestamoSQL();
        PrestamoBean rPrestamo = new PrestamoBean();
        try {
            
            String materialId = request.getParameter("materialId");
            String carnetId = request.getParameter("carnetId");
            
            rPrestamo = presql.RealizarPrestamo(materialId, carnetId);
            
            request.setAttribute("prestamo", rPrestamo);
            request.getRequestDispatcher("/prestamo/message.jsp").forward(request, response);
            //RequestDispatcher vista = request.getRequestDispatcher(acceso);
            //vista.forward(request, response);
        } catch (Exception e) {

            rPrestamo.setResultado("Error al ingresar el prestamo");
            rPrestamo.setPrestamoId(0);
            
            request.setAttribute("prestamo", rPrestamo);
            System.err.println("Error: " + e);
        }
    }
}
