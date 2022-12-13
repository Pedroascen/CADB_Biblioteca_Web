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
public class ObraModel {
    
    
     public boolean insert_update(String codMaterial, String titulo, String ufisica, String cejemp, String autor,String npaginas, String editorial,String pais, String isbn, String anio, String edicion, String idioma, String genero){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        int rows = 0;//registra no de registros afectados
        try {
            conn = Conexion.getConnection();
            //llamada al procedimiento almacenado  ;
            stmt = conn.prepareStatement("call new_upd_obra('"+codMaterial+"','"+titulo+"','"+ufisica+"',"+cejemp+",'"+autor+"',"+npaginas+",'"+editorial+"','"+pais+"',"+isbn+","+anio+",'"+edicion+"','"+idioma+"','"+genero+"');");
            System.out.println(codMaterial+", "+titulo+", "+ufisica+", "+cejemp+", "+autor+", "+npaginas+", "+editorial+", "+pais+", "+isbn+", "+anio+", "+edicion+", "+idioma+", "+genero);
            System.out.println("Ejecutando query.");
            rows=stmt.executeUpdate();//no registros afectados
            System.out.println("No Registros afectados: "+rows);
            return true;
        } catch (SQLException sqle) {
            System.err.println("Error al guardar o actualizar los registros del CdSQL: "+sqle);
            sqle.printStackTrace();
            return false;
        } finally{
            Conexion.close(stmt);
            Conexion.close(conn);
        }      
    } 
    
}
