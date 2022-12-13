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
import udb.cdba.beans.DevolucionBean;
import udb.cdba.beans.MaterialBean;
import udb.cdba.beans.PrestamoBean;
import udb.cdba.beans.PrestamoUsuarioBean;
import udb.cdba.model.DevolucionSQL;
import udb.cdba.model.EjemplarSQL;
import udb.cdba.model.PrestamoSQL;

@WebServlet(name = "PrestamoUserController", urlPatterns = {"/prestamo_usuario"})
public class PrestamoUserController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String accion = request.getParameter("accion");
            //acciones del usuario
            if (request.getParameter("accion") == null) {
                //getServletInfo(request,response);
                listar(request, response);
            }

            switch (accion) {
                case "listar":
                    listar(request, response);
                    break;
                case "prestamo":
                    prestar(request, response);
                    break;
                case "consulta":
                    prestamos(request, response);
                    break;
                case "devolucion":
                    devolver(request, response);
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

    //metodo para listar
    private void listar(HttpServletRequest request, HttpServletResponse response) {
        //cremos la lista de usuarios
        List<MaterialBean> lstmateriales = new EjemplarSQL().listarMaterialDispo();
        //capturamos excepciones en caso de error
        try {
            request.setAttribute("material", lstmateriales);
            request.getRequestDispatcher("/prestamo/prestamo_user.jsp").forward(request, response);

        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

    //metodo para listar
    private void prestamos(HttpServletRequest request, HttpServletResponse response) {
        String carnet = request.getParameter("carnet");
        int estado = 1;
        //cremos la lista de usuarios
        List<PrestamoUsuarioBean> lstprestamos = new PrestamoSQL().ListaPrestamos(carnet, estado);
        //capturamos excepciones en caso de error
        try {
            request.setAttribute("prestamos", lstprestamos);
            request.getRequestDispatcher("/prestamo/list_prestamo_user.jsp").forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

    private void prestar(HttpServletRequest request, HttpServletResponse response) {
        String carnet = request.getParameter("carnet");
        String codigo = request.getParameter("codMaterial");

        PrestamoBean prebean = new PrestamoBean();
        PrestamoSQL ptsql = new PrestamoSQL();

        try {
            if (carnet != null && codigo != null) {
                prebean = ptsql.RealizarPrestamo(codigo, carnet);
                request.setAttribute("prestamo", prebean);
                listar(request, response);
            } else {
                prebean.setResultado("No se pudo realizar prestamo.");
                request.setAttribute("prestamo", prebean);
                listar(request, response);
            }
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

    private void devolver(HttpServletRequest request, HttpServletResponse response) {
        String carnet = request.getParameter("carnet");
        String codigo = request.getParameter("codMaterial");

        DevolucionBean devbean = new DevolucionBean();
        DevolucionSQL ptsql = new DevolucionSQL();

        try {
            if (carnet != null && codigo != null) {
                devbean = ptsql.RealizarDevolucion(codigo, carnet);
                request.setAttribute("prestamo", devbean);
                prestamos(request, response);
            } else {
                devbean.setResultado("No se pudo realizar devolucion.");
                request.setAttribute("prestamo", devbean);
                prestamos(request, response);
            }
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
}
