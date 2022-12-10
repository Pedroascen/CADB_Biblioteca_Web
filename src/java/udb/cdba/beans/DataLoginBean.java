package udb.cdba.beans;

public class DataLoginBean {
    //atributos de Usuario
    private int id_rol;
    private String carnet;
    private String contrasenia;
    private String nombre_rol;
    //constructor vacio
    public DataLoginBean() {
    }
    //constructor con parametros
    public DataLoginBean(int id_rol, String carnet, String contrasenia, String nombre_rol) {
        this.id_rol = id_rol;
        this.carnet = carnet;
        this.contrasenia = contrasenia;
        this.nombre_rol = nombre_rol;
    }
    //getters and setters
    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }

    public String getCarnet() {
        return carnet;
    }

    public void setCarnet(String carnet) {
        this.carnet = carnet;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getNombre_rol() {
        return nombre_rol;
    }

    public void setNombre_rol(String nombre_rol) {
        this.nombre_rol = nombre_rol;
    }
}
