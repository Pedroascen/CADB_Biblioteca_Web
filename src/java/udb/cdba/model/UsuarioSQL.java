package udb.cdba.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import udb.cdba.beans.DataLoginBean;
import udb.cdba.beans.UsuarioBean;

public class UsuarioSQL extends Conexion {

    private final String SQL_UPDATE = "UPDATE usuario SET nombre=?, apellido=?, contrasena=?, id_rol=? WHERE carnet=?";
    
    //metodo para validar usuario en login
    public boolean login(DataLoginBean usrlog) {
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
                    System.out.println(usrlog.getCarnet() + " " + usrlog.getNombre_rol() + " " + usrlog.getId_rol());
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
                String carnet = rs.getString(1);
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String nombre_rol = rs.getString(4);
                //aniadimos el registro a un listado de tipo Usuario   
                usuarios.add(new UsuarioBean(carnet, nombre, apellido, nombre_rol));
            }

        } catch (SQLException sqle) {
            System.err.print("Error al consultar usuarios: " + sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        return usuarios;
    }

    //metodo para registrar usuarios
    public boolean registrar(String nombre, String apellido, String contrasenia, int id_rol) {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int rows = 0;

        try {
            //se crea la conexion con la base +"','"+descripcion+"');"
            conn = Conexion.getConnection();
            //se declara la sentencia sql
            stmt = conn.prepareStatement("call new_user('" + nombre + "','" + apellido + "','" + contrasenia + "','" + id_rol + "');");
            stmt.executeQuery();
            System.out.println("No Registros afectados: " + rows);
            return true;
        } catch (SQLException sqle) {
            System.err.print("Error al registrar usuario: " + sqle);
            return false;
            //cerramos la conexion
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
    }

    //metodo para actualizar usuarios
    public boolean actualizar(String carnet, String nombre, String apellido, String contrasena, int id_rol) {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;//no se usa
        int rows = 0;

        try {
            //se crea la conexion con la base
            conn = Conexion.getConnection();
            //se declara la sentencia sql
            stmt = conn.prepareStatement(SQL_UPDATE);
            int i = 1;//contador para la columnas para guardar registro
            stmt.setString(i++, nombre);
            stmt.setString(i++, apellido);
            stmt.setString(i++, contrasena);
            stmt.setInt(i++, id_rol);
            stmt.setString(i, carnet);
            //ejecutando el query
            rows = stmt.executeUpdate();
            //mensaje de salida
            System.out.println("No Registros afectados: " + rows);
            return true;

        } catch (SQLException sqle) {
            //JOptionPane.showMessageDialog(null, "" + carnet + ":" + nombre + ":" + apellido + ":" + contrasena + ":" + id_rol);
            System.err.println("Error al actualizar usuarios: " + sqle);
            return false;
            //cerramos la conexion
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
    }

    //metodo para obtener usuario por carnet
    public UsuarioBean obtenerUsuarioPorCarnet(String Icarnet) {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            //se inicia la conexion con la base
            conn = Conexion.getConnection();
            //llamando sentencia sql
            stmt = conn.prepareStatement("SELECT nombre,apellido,carnet,contrasena,id_rol FROM usuario WHERE carnet = ?");
            stmt.setString(1, Icarnet);
            //ejecutando
            rs = stmt.executeQuery();
            if (rs.next()) {
                int id_rol = rs.getInt(5);

                UsuarioBean usuario = new UsuarioBean();
                usuario.setNombre(rs.getString(1));
                usuario.setApellido(rs.getString(2));
                usuario.setCarnet(rs.getString(3));
                usuario.setId_rol(id_rol);
                usuario.setNombre_rol(rs.getString(5));
                System.out.println(usuario.getCarnet() + " " + usuario.getNombre()+ " " + usuario.getApellido());
                return usuario;
            }
            return null;
        } catch (SQLException sqle) {
            System.err.print("Error al consultar usuarios: " + sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        return null;
    }

    //metodo para eliminar usuario por carnet
  public boolean eliminar(String Icarnet){
       //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int rows = 0;
        try {
            //se inicia la conexion con la base
            conn = Conexion.getConnection();
            //llamando sentencia sql
            stmt = conn.prepareStatement("DELETE FROM `usuario` WHERE carnet=?");
            stmt.setString(1, Icarnet);
            //ejecutando
            rows = stmt.executeUpdate();
            return true;
        } catch (SQLException sqle) {
            System.err.print("Error al consultar usuarios: " + sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
    return false;
    }

    public static void main(String[] args) {
        UsuarioSQL usuario = new UsuarioSQL();
        if(usuario.eliminar("220010")){
            System.out.println("Se pudo eliminar el usuario");
        }else{
            System.out.println("No se pudo eliminar el usuario, probablemente posee un prestamos");
        }
    }
}
