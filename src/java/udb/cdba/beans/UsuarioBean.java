package udb.cdba.beans;

public class UsuarioBean {
     //atributos de Usuario
    private int id_rol;
    private String nombre;
    private String apellido;
    private String carnet;
    private String contrasenia;
    private String nombre_rol;
    
    //constructores
    public UsuarioBean(){
    }
    
    public UsuarioBean(int id_rol, String nombre, String apellido,String carnet,String contrasenia,String nombre_rol){
        this.id_rol=id_rol;
        this.nombre=nombre;
        this.apellido=apellido;
        this.carnet=carnet;
        this.contrasenia=contrasenia;
        this.nombre_rol = nombre_rol;
    }
    
    

    public UsuarioBean(String carnet, String nombre, String apellido, String nombre_rol) {
        this.carnet=carnet;
        this.nombre=nombre;
        this.apellido=apellido;
        this.nombre_rol = nombre_rol;
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

    public String getNombre_rol() {
        return nombre_rol;
    }

    public void setNombre_rol(String nombre_rol) {
        this.nombre_rol = nombre_rol;
    }
    
}
