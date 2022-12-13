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

/**
 *
 * @author Jazmine
 */
public class TesisModel {
    
     public boolean insert_update(String codMaterial, String titulo, String ufisica, String cejemp, String autor, String pais, String ciudad, String universidad, String carrera, String idioma, String fechaPublicacion, String numeroPaginas, String descripcion, String palabrasclave) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;//no se ocupa

        int rows = 0;//registra no de registros afectados
        try {
            conn = Conexion.getConnection();
            //llamada al procedimiento almacenado  call new_upd_libro('"+codMaterial+"','"+titulo+"','"+autor+"','"+npaginas+"','"+editorial+"','"+isbn+"','"+anio+"');
            stmt = conn.prepareStatement("call new_upd_tesis('" + codMaterial + "','" + titulo + "','" + ufisica + "'," + cejemp + ",'" + autor + "','" + pais + "','" + ciudad + "','" + universidad + "','" + carrera + "','" + idioma + "','" + fechaPublicacion + "'," + numeroPaginas + ",'" + descripcion + "','" + palabrasclave + "');");
            System.out.println(codMaterial + "','" + titulo + "','" + ufisica + "','" + cejemp + "','" + autor + "','" + pais + "','" + ciudad + "','" + universidad + "','" + carrera + "','" + idioma + "','" + fechaPublicacion + "','" + numeroPaginas + "','" + descripcion + "','" + palabrasclave);
            System.out.println("Ejecutando query.");
            stmt.executeQuery();//no registros afectados
            //System.out.println("No Registros afectados: "+rows);
            return true;
        } catch (SQLException sqle) {
            System.err.println("Error al insertar registros de revista: "+sqle);
            return false;
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
    }
    
    
    
}
