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
import udb.cdba.beans.EjemplarBean;
import udb.cdba.beans.MaterialBean;

public class EjemplarSQL {

    //sentencias SQL
    private final String SQL_SELECT_MATERIAL_DISPO = "SELECT codigoMaterial, Titulo, ubicacionFisica, cantidadEjemplares, cantidadDisponibles FROM `material` WHERE cantidadDisponibles>0 AND codigoTipoMaterial = ?;";

    //Llamando a la libreria del framwork log4j que nos servirá para el manejo de errores.
    public ArrayList<EjemplarBean> ConsultarEjemplares(String titulo, String autor, String tipoMaterial, String idioma, String orderby) {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int rows = 0;
        ArrayList<EjemplarBean> resultado = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement("CALL `biblioteca`.`consulta_ejemplares`('" + titulo + "', '" + autor + "','" + tipoMaterial + "','" + idioma + "','" + orderby + "');");

            rs = stmt.executeQuery();

            while (rs.next()) {
                //Result = rs.getString(1);
                EjemplarBean ce = new EjemplarBean();
                ce.setTipoMaterial(rs.getString(1));
                ce.setCodigoMaterial(rs.getString(2));
                ce.setTitulo(rs.getString(3));
                ce.setAutores(rs.getString(4));
                ce.setMaterialInfo(rs.getString(5));

                resultado.add(ce);
            }

        } catch (SQLException sqle) {
            System.err.print("Error al consultar ejemplares: " + sqle);
            //cerramos la conexion
        } finally {
            Conexion.close(stmt);
            Conexion.close(rs);
            Conexion.close(conn);
        }

        return resultado;
    }

    public List<EjemplarBean> EjemplaresDisponibles(int CodigoTipoMaterial) {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<EjemplarBean> ejemplares = new ArrayList<EjemplarBean>();

        try {
            //se inicia la conexion con la base
            conn = Conexion.getConnection();
            //llamando sentencia sql
            stmt = conn.prepareStatement("SELECT codigoMaterial, Titulo, ubicacionFisica, cantidadEjemplares, cantidadDisponibles FROM `material` WHERE cantidadDisponibles>0 AND codigoTipoMaterial = ?;");
            stmt.setInt(1, CodigoTipoMaterial);
            //ejecutando
            rs = stmt.executeQuery();

            while (rs.next()) {
                String codMaterial = rs.getString(1);
                String titulo = rs.getString(2);
                String ubFisica = rs.getString(3);
                String cantEjemplares = rs.getString(4);
                String cantDisponibles = rs.getString(5);
                //aniadimos el registro a un listado de tipo Usuario   
                ejemplares.add(new EjemplarBean(codMaterial, titulo, ubFisica, cantEjemplares, cantDisponibles));
            }

        } catch (SQLException sqle) {
            System.err.print("Error al consultar usuarios: " + sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        for (int i = 0; i < ejemplares.size(); i++) {
            System.out.println(ejemplares.get(i).getCodigoMaterial() + " " + ejemplares.get(i).getAutores());
        }

        return ejemplares;
    }

    //metodo para obtener materiales
    public List<MaterialBean> listar() {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        //Bean que almacena los datos del result
        List<MaterialBean> mtls = new ArrayList<MaterialBean>();
        try {
            //se inicia la conexion con la base
            conn = Conexion.getConnection();
            //llamando sentencia sql
            stmt = conn.prepareStatement("SELECT codigoMaterial,Titulo,cantidadDisponibles,ubicacionFisica FROM biblioteca.material;");
            //ejecutando
            rs = stmt.executeQuery();

            while (rs.next()) {
                String codMaterial = rs.getString(1);
                String titulo = rs.getString(2);
                String cantDisponible = rs.getString(3);
                String ubicacionFisica = rs.getString(4);
                //aniadimos el registro a un listado de tipo Usuario   
                mtls.add(new MaterialBean(codMaterial, titulo, cantDisponible, ubicacionFisica));
            }

        } catch (SQLException sqle) {
            System.err.print("Error al consultar usuarios: " + sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        for (int i = 0; i < mtls.size(); i++) {
            System.out.println(mtls.get(i).getCodMaterial() + " " + mtls.get(i).getCantDisponible());
        }
        return mtls;
    }
    
    //metodo para obtener materiales
    public List<MaterialBean> listarMaterialDispo() {
        //inicializacion de las variables
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        //Bean que almacena los datos del result
        List<MaterialBean> mtls = new ArrayList<MaterialBean>();
        try {
            //se inicia la conexion con la base
            conn = Conexion.getConnection();
            //llamando sentencia sql
            stmt = conn.prepareStatement("SELECT codigoMaterial,Titulo,cantidadDisponibles,ubicacionFisica FROM biblioteca.material WHERE estado=1;");
            //ejecutando
            rs = stmt.executeQuery();

            while (rs.next()) {
                String codMaterial = rs.getString(1);
                String titulo = rs.getString(2);
                String cantDisponible = rs.getString(3);
                String ubicacionFisica = rs.getString(4);
                //aniadimos el registro a un listado de tipo Usuario   
                mtls.add(new MaterialBean(codMaterial, titulo, cantDisponible, ubicacionFisica));
            }

        } catch (SQLException sqle) {
            System.err.print("Error al consultar usuarios: " + sqle);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        for (int i = 0; i < mtls.size(); i++) {
            System.out.println(mtls.get(i).getCodMaterial() + " " + mtls.get(i).getCantDisponible());
        }
        return mtls;
    }

    public static void main(String[] args) {
        EjemplarSQL ejemplar = new EjemplarSQL();
        ejemplar.listar();
        //System.out.println("Nombre: "+usuario);
    }
}
