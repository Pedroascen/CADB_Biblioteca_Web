package udb.cdba.model;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
    //variables de tipo staticas de conexion a mysql
    private static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static String JDBC_URL = "jdbc:mysql://localhost:3306/biblioteca?useSSL=false";
    private static String JDBC_USER = "root";
    private static String JDBC_PASS = "";
    private static Driver driver = null;

    //metodo para obtener la conexion con el uso de synchronized: 
    //funcion indica que solo un subproceso puede acceder al metodo a la vez
    public static synchronized Connection getConnection() throws SQLException {
        if (driver == null) {
            try {
                //se registra el driver
                Class jdbcDriverClass = Class.forName(JDBC_DRIVER);
                driver = (Driver) jdbcDriverClass.newInstance();
                DriverManager.registerDriver(driver);
            } catch (Exception e) {
                System.err.print("Error al realizar la conexión: "+e);
                e.printStackTrace();
            }
        }
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
    }
    
    //metodo para cierre del resulset
    public static void close(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException sqle) {
            System.err.print("Error al cerrar el resultSet: "+sqle);
            sqle.printStackTrace();
        }
    }

    //cierre del prepare statement
    public static void close(Statement stmt) {
        try {
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException sqle) {
            System.err.print("Error al cerrar Statement: "+sqle);
            sqle.printStackTrace();
        }
    }

    //cierre de la conexion
    public static void close(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException sqle) {
            System.err.print("Error al cerrar Connection: "+sqle);
            sqle.printStackTrace();
        }
    } 
}
