package udb.cdba.beans;

public class UsuarioBean {
     //atributos de Usuario
    private int id_rol;
    private String nombre;
    private String apellido;
    private String carnet;
    private String contrasenia;
    private String nombre_TipoUser;
    
    //constructores
    public UsuarioBean(){
    }
    
    public UsuarioBean(int id_rol, String nombre, String apellido,String carnet,String contrasenia,String nombre_tipo){
        this.id_rol=id_rol;
        this.nombre=nombre;
        this.apellido=apellido;
        this.carnet=carnet;
        this.contrasenia=contrasenia;
        this.nombre_TipoUser = nombre_tipo;
    }

    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
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

    public String getNombre_TipoUser() {
        return nombre_TipoUser;
    }

    public void setNombre_TipoUser(String nombre_TipoUser) {
        this.nombre_TipoUser = nombre_TipoUser;
    }
}
