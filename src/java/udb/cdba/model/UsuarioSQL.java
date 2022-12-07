package udb.cdba.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import udb.cdba.beans.UsuarioBean;

public class UsuarioSQL extends Conexion {

    //metodo para validar usuario en login
    public boolean login(UsuarioBean usrlog) {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement("SELECT u.carnet,u.contrasena,u.id_rol,r.nombre_rol FROM usuario AS u INNER JOIN rol AS r ON u.id_rol = r.id WHERE carnet = ?");

            int i = 1;//contador para la columnas para guardar registro
            stmt.setString(i++, usrlog.getCarnet());
            rs = stmt.executeQuery();
            //se recorre el registro obtenido por el carnet
            while (rs.next()) {
                //se valida la contrasenia
                if (usrlog.getContrasenia().equals(rs.getString(2))) {
                    usrlog.setCarnet(rs.getString(1));
                    usrlog.setId_rol(rs.getInt(3));
                    usrlog.setNombre_rol(rs.getString(4));
                    return true;
                }
            }
            return false;
        } catch (SQLException sqle) {
            System.err.print("Error al logiarse: " + sqle);
            return false;
            //cerramos la conexion
        } finally {
            Conexion.close(stmt);
            Conexion.close(rs);
            Conexion.close(conn);
        }
    }
    
    //metodo para obtener usuario por carnet
    public List<UsuarioBean> listar() {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<UsuarioBean> usuarios = new ArrayList<UsuarioBean>();
        try {
            //se inicia la conexion con la base
            conn = Conexion.getConnection();
            //llamando sentencia sql
            stmt = conn.prepareStatement("SELECT u.carnet,u.nombre,u.apellido,r.nombre_rol FROM usuario AS u INNER JOIN rol AS r ON u.id_rol = r.id;");
            //ejecutando
            rs = stmt.executeQuery();

            while (rs.next()) {
                String carnet= rs.getString(1);
                String nombre=rs.getString(2);
                String apellido=rs.getString(3);
                String nombre_rol=rs.getString(4); 
                System.out.println(carnet+" "+nombre+" "+apellido+" "+nombre_rol);
            //aniadimos el registro a un listado de tipo Usuario   
            usuarios.add(new UsuarioBean(carnet, nombre, apellido, nombre_rol));
            }
            
        } catch (SQLException sqle) {
           System.err.print("Error al consultar usuarios: "+sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        return usuarios;
    }

    //metodo para obtener usuario por carnet
    public ArrayList obtenerUsuarioPorCarnet(String Icarnet) {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList lstusr = new ArrayList();
        int rows = 0;
        try {
            //se inicia la conexion con la base
            conn = Conexion.getConnection();
            //llamando sentencia sql
            stmt = conn.prepareStatement("SELECT nombre,apellido,carnet,contrasena,id_rol FROM usuario WHERE carnet = ?");
            stmt.setString(1, Icarnet);
            //ejecutando
            rs = stmt.executeQuery();

            while (rs.next()) {
                int id_rol = rs.getInt(5);
                String idRol = String.valueOf(id_rol);

                lstusr.add(rs.getString(1));
                lstusr.add(rs.getString(2));
                lstusr.add(rs.getString(3));
                lstusr.add(rs.getString(4));
                lstusr.add(idRol);
            }
        } catch (SQLException sqle) {
           System.err.print("Error al consultar usuarios: "+sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        return lstusr;
    }
    
    public static void main(String[] args) {
        UsuarioSQL usuario = new UsuarioSQL();
        usuario.listar();
    }
}
