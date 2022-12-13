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
import udb.cdba.beans.MaterialBean;

/**
 *
 * @author Jazmine
 */
public class LibroModel {

    //metodos para insertar y actualizar
    public boolean insert_update(String codMaterial, String titulo, String ufisica, String cejemp, String autor, String npaginas, String editorial, String pais, String isbn, String anio, String edicion, String idioma, String materia, String descripcion) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        int rows = 0;//registra no de registros afectados
        try {
            conn = Conexion.getConnection();
            //llamada al procedimiento almacenado  call new_upd_libro('"+codMaterial+"','"+titulo+"','"+autor+"','"+npaginas+"','"+editorial+"','"+isbn+"','"+anio+"');
            stmt = conn.prepareStatement("call new_upd_libro('" + codMaterial + "','" + titulo + "','" + ufisica + "'," + cejemp + ",'" + autor + "'," + npaginas + ",'" + editorial + "','" + pais + "','" + isbn + "'," + anio + "," + edicion + ",'" + idioma + "','" + materia + "','" + descripcion + "');");
            System.out.println(codMaterial + ", " + titulo + ", " + ufisica + ", " + cejemp + ", " + autor + ", " + npaginas + ", " + editorial + ", " + pais + ", " + isbn + ", " + anio + ", " + edicion + ", " + idioma + ", " + materia + "," + descripcion);
            System.out.println("Ejecutando query.");
            rows = stmt.executeUpdate();//no registros afectados
            System.out.println("No Registros afectados: " + rows);
            return true;
        } catch (SQLException sqle) {
            System.err.println("Error al insertar registros de libro: " + sqle);
            return false;
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
    }
    
    
     public static void main(String[] args) {
        LibroModel lbm = new LibroModel();
    }
}
