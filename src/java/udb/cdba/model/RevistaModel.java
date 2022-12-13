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
public class RevistaModel {
    
    //Métodos para insertar y actualizar:
     public boolean insert_update (String codMaterial, String titulo, String ufisica, String cejemp, String editorial, String issn, String idioma, String tamano, String periodicidad, String fechapublicacion ){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        int rows = 0;//registra no de registros afectados
        try {
            conn = Conexion.getConnection();
            //Llama al procedimiento almacenado  call new_upd_revista('"+codMaterial+"','"+titulo+"','"+autor+"','"+npaginas+"','"+editorial+"','"+isbn+"','"+anio+"');
            stmt = conn.prepareStatement("call new_upd_revista('"+codMaterial+"','"+titulo+"','"+ufisica+"',"+cejemp+"','"+editorial+"',"+issn+",'"+idioma+"','"+tamano+"','"+periodicidad+"','"+fechapublicacion+"');");
            System.out.println(codMaterial+", "+titulo+", "+ufisica+", "+cejemp+", "+editorial+", "+issn+", "+idioma+", "+tamano+", "+periodicidad+","+ fechapublicacion);
            System.out.println("Ejecutando query.");
            stmt.executeQuery();//no registros afectados
            //System.out.println("No Registros afectados: "+rows);
            return true;
        } catch (SQLException sqle) {
            System.err.println("Error al guardar o actualizar los registros del SQL: "+sqle);
            sqle.printStackTrace();
            return false;
        } finally{
            Conexion.close(stmt);
            Conexion.close(conn);
        }      
    }
}
