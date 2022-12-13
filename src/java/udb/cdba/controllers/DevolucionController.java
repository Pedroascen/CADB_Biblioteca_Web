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
import udb.cdba.beans.DevolucionBean;
import udb.cdba.beans.DispDevolucionBean;
import udb.cdba.model.DevolucionSQL;

/**
 *
 * @author Rocio Abrego
 */

@WebServlet(name = "DevolucionController", urlPatterns = {"/devolucion"})
public class DevolucionController extends HttpServlet {
    
     DataLoginBean usrdata = new DataLoginBean();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            usrdata = (DataLoginBean)request.getSession().getAttribute("usuarioLogin");
            if(usrdata == null){
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
            
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
            
            List<DispDevolucionBean> prestamos = new DevolucionSQL().ListaPrestamos(estado);
            request.setAttribute("listarPrestamos", prestamos);
            
            request.getRequestDispatcher("/devolucion/devolucion.jsp").forward(request, response);
            //RequestDispatcher vista = request.getRequestDispatcher(acceso);
            //vista.forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
    
    private void save(HttpServletRequest request, HttpServletResponse response) {
        //capturamos excepciones en caso de error
        DevolucionSQL devsql = new DevolucionSQL();
        DevolucionBean rDevolucion = new DevolucionBean();
        try {
            
            String materialId = request.getParameter("materialId");
            String carnetId = request.getParameter("carnetId");
            
            rDevolucion = devsql.RealizarDevolucion(materialId, carnetId);
            
            request.setAttribute("devolucion", rDevolucion);
            request.getRequestDispatcher("/devolucion/message.jsp").forward(request, response);
            //RequestDispatcher vista = request.getRequestDispatcher(acceso);
            //vista.forward(request, response);
        } catch (Exception e) {

            rDevolucion.setResultado("Error al ingresar la devolucion");
            rDevolucion.setPrestamoId(0);
            
            request.setAttribute("devolucion", rDevolucion);
            System.err.println("Error: " + e);
        }
    }
}
