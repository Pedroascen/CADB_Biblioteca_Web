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
import udb.cdba.beans.DevolucionBean;
import udb.cdba.beans.DispDevolucionBean;

/**
 *
 * @author Rocio Abrego
 */
public class DevolucionSQL extends Conexion {
    
    public DevolucionBean RealizarDevolucion(String materialId, String carnetId) {
        //inicialización de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        DevolucionBean devolucion = new DevolucionBean();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement("CALL `biblioteca`.`devolucion`('" + materialId + "', '" + carnetId + "');");

            rs = stmt.executeQuery();

            while (rs.next()) {
                devolucion.setResultado(rs.getString(1));
                devolucion.setPrestamoId(rs.getInt(2));
            }

        } catch (SQLException sqle) {
            //log.error("Error al guardar registros de prestamo: "+sqle);
            //cerramos la conexión
        } finally {
            Conexion.close(stmt);
            Conexion.close(rs);
            Conexion.close(conn);
        }

        return devolucion;
    }
    
    public List<DispDevolucionBean> ListaPrestamos(int estado) {
        //inicialización de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<DispDevolucionBean> resultado = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement("CALL `biblioteca`.`consulta_prestamos`(" + estado + ");");

            rs = stmt.executeQuery();
//carnet, codmaterial, fecha_inicio, fecha_fin, mora, estado
            while (rs.next()) {
                DispDevolucionBean dev = new DispDevolucionBean();
                dev.setCarnet(rs.getString(1));
                dev.setCodigoMaterial(rs.getString(2));
                dev.setFechaInicio(rs.getString(3));
                dev.setFechaFin(rs.getString(4));
                dev.setMora(rs.getString(5));
                dev.setEstado(rs.getString(6));
                dev.setTitulo(rs.getString(7));
                
                resultado.add(dev);
            }

        } catch (SQLException sqle) {
            //log.error("Error al guardar registros de prestamo: "+sqle);
            //cerramos la conexión
        } finally {
            Conexion.close(stmt);
            Conexion.close(rs);
            Conexion.close(conn);
        }

        return resultado;
    }
}
