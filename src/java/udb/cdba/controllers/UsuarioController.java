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

@WebServlet(name = "UsuarioController", urlPatterns = {"/usuario"})
public class UsuarioController extends HttpServlet {

    //variable para almacenar datos de usuario logueado
    String Did_rol, Dcarnet;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //capturamos los datos
            String Lrol_id = request.getParameter("ir");
            if (Lrol_id == null) {
                doGet(request, response);
            }
            
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
                case "nuevo":
                    request.getRequestDispatcher("/usuarios/add.jsp").forward(request, response);
                    break;
                case "insertar":
                    insertar(request, response);
                    break;
                case "obtener":
                    obtener(request, response);
                    break;
                case "modificar":
                    modificar(request, response);
                    break;
                case "eliminar":
                    eliminar(request, response);
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

    protected void getServletInfo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //UsuarioBean usr = (UsuarioBean) request.getAttribute("usuario");
            //UsuarioBean usr = (UsuarioBean) request.getAttribute("usuario");
            Did_rol = request.getParameter("ir");

            //invocamos un metodo para listar y le pasamos los datos de la vista
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UsuarioController at " + Did_rol + "</h1>");
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

    //metodo para insertar
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
            if (id_rol != "" && nombre != "" && apellido != "" && contrasenia != "") {
                //instanciamos el objeto de acceso a la base
                UsuarioSQL usrsql = new UsuarioSQL();
                usrsql.registrar(nombre, apellido, contraCif, rol);
                listar(request, response);
            } else {
                request.getRequestDispatcher("/usuarios/add.jsp").forward(request, response);
            }

        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

    //metodo para obtener usuario por carnet
    private void obtener(HttpServletRequest request, HttpServletResponse response) {
        //capturando carnet de usuario
        String Icarnet = request.getParameter("carnet");
        //cremos la lista de usuarios
        UsuarioBean usuario = new UsuarioSQL().obtenerUsuarioPorCarnet(Icarnet);
        //capturamos excepciones en caso de error
        if (usuario.getId_rol() == 1) {
            usuario.setNombre_rol("Administrador");
        } else if (usuario.getId_rol() == 2) {
            usuario.setNombre_rol("Profesor");
        } else if (usuario.getId_rol() == 3) {
            usuario.setNombre_rol("Alumno");
        }
        try {
            request.setAttribute("usuario", usuario);
            request.getRequestDispatcher("/usuarios/editar.jsp").forward(request, response);
            //RequestDispatcher vista = request.getRequestDispatcher(acceso);
            //vista.forward(request, response);
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

    //metodo para modificar
    private void modificar(HttpServletRequest request, HttpServletResponse response) {
        //UsuarioBean usr = (UsuarioBean) request.getAttribute("usuario");
        String carnet = request.getParameter("carnet");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String contrasenia = request.getParameter("contrasenia");
        String id_rol = request.getParameter("id_rol");
        //encriptamos la contrasenia
        String contraCif = Hash.sha1(contrasenia);
        int rol = Integer.parseInt(id_rol);
        try {
            if (carnet != "" && id_rol != "" && nombre != "" && apellido != "" && contrasenia != "") {
                //instanciamos el objeto de acceso a la base
                UsuarioSQL usrsql = new UsuarioSQL();
                usrsql.actualizar(carnet, nombre, apellido, contraCif, rol);
                listar(request, response);
            } else {
                obtener(request, response);
            }

        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }

    //metodo para obtener usuario por carnet
    private void eliminar(HttpServletRequest request, HttpServletResponse response) {
        //capturando carnet de usuario
        String Icarnet = request.getParameter("carnet");
        UsuarioSQL usrsql = new UsuarioSQL();
        try {
            //comprobamos la eliminacion
            if (usrsql.eliminar(Icarnet)) {
                listar(request, response);
            } else {
                request.getRequestDispatcher("/components/error.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
}
