/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import udb.cdba.beans.DispMaterialBean;
import udb.cdba.beans.PrestamoBean;
import udb.cdba.beans.PrestamoUsuarioBean;

/**
 *
 * @author Rocio Abrego
 */
public class PrestamoSQL extends Conexion {

    //static final Logger log = Logger.getLogger(PrestamoSQL.class);
    public PrestamoBean RealizarPrestamo(String materialId, String carnetId) {
        //inicialización de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        PrestamoBean prestamo = new PrestamoBean();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement("CALL `biblioteca`.`prestamo`('" + materialId + "', '" + carnetId + "');");

            rs = stmt.executeQuery();

            while (rs.next()) {
                prestamo.setResultado(rs.getString(1));
                prestamo.setPrestamoId(rs.getInt(2));
            }

        } catch (SQLException sqle) {
            //log.error("Error al guardar registros de prestamo: "+sqle);
            //cerramos la conexión
        } finally {
            Conexion.close(stmt);
            Conexion.close(rs);
            Conexion.close(conn);
        }

        return prestamo;
    }

    public List<DispMaterialBean> ListaMateriales(int estado) {
        //inicialización de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        PreparedStatement stmt_mora = null;
        ResultSet rs_mora = null;

        List<DispMaterialBean> mat_list = new ArrayList<>();

        try {
            conn = Conexion.getConnection();

            //llamando procedimiento almacenado para actualizar mora antes de mostrar los resultados en DefaultTable
            stmt_mora = conn.prepareStatement("CALL `biblioteca`.`actualizar_mora`();");
            //ejecutando procedimiento almacenado
            rs_mora = stmt_mora.executeQuery();

            stmt = conn.prepareStatement("CALL `biblioteca`.`consulta_materiales`(" + estado + ");");

            rs = stmt.executeQuery();

            while (rs.next()) {
                DispMaterialBean mat = new DispMaterialBean();
                mat.setCodigoMaterial(rs.getString(1));
                mat.setTitulo(rs.getString(2));
                mat.setUbicacionFisica(rs.getString(3));

                mat.setCantidadEjemplares(rs.getInt(4));
                mat.setCantidadDisponibles(rs.getInt(5));

                mat_list.add(mat);
            }

        } catch (SQLException sqle) {
            //log.error("Error al guardar registros de prestamo: "+sqle);
            //cerramos la conexión
        } finally {
            Conexion.close(stmt);
            Conexion.close(rs);
            Conexion.close(conn);
        }

        return mat_list;
    }

    //Funcion para mostrar prestamos segun usuarios SELECT * FROM `prestamo` WHERE carnet=?;
    public List<PrestamoUsuarioBean> ListaPrestamos(String carnet, int estado) {
        //inicialización de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<PrestamoUsuarioBean> lstprestamos = new ArrayList<>();

        try {
            conn = Conexion.getConnection();

            //llamando procedimiento almacenado para actualizar mora antes de mostrar los resultados en DefaultTable
            stmt = conn.prepareStatement("SELECT * FROM `prestamo` WHERE carnet=? AND estado=?;");
            stmt.setString(1, carnet);
            stmt.setInt(2, estado);
            rs = stmt.executeQuery();

            while (rs.next()) {
                PrestamoUsuarioBean prestamo = new PrestamoUsuarioBean();
                prestamo.setId(rs.getInt(1));
                prestamo.setCarnet(rs.getString(2));
                prestamo.setCodMaterial(rs.getString(3));
                prestamo.setFecha_inicio(rs.getString(4));
                prestamo.setFecha_fin(rs.getString(5));
                prestamo.setEstado(rs.getInt(6));
                prestamo.setMora(rs.getDouble(7));
                prestamo.setFecha_devolucion(rs.getString(8));

                lstprestamos.add(prestamo);
            }

        } catch (SQLException sqle) {
            //log.error("Error al guardar registros de prestamo: "+sqle);
            //cerramos la conexión
        } finally {
            Conexion.close(stmt);
            Conexion.close(rs);
            Conexion.close(conn);
        }
        for (int i = 0; i < lstprestamos.size(); i++) {
            System.out.println(lstprestamos.get(i).getCodMaterial());
        }
        return lstprestamos;
    }

    public static void main(String[] args) {
        PrestamoSQL pmsql = new PrestamoSQL();
        pmsql.ListaPrestamos("AA220006", 0);
    }
}
