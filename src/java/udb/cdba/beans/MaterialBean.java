package udb.cdba.beans;

public class MaterialBean {

    private String codMaterial;
    private String titulo;
    private String cantDisponible;
    private String ubFisica;

    public MaterialBean() {
    }

    public MaterialBean(String codMaterial, String titulo, String cantDisponible, String ubFisica) {
        this.codMaterial = codMaterial;
        this.titulo = titulo;
        this.cantDisponible = cantDisponible;
        this.ubFisica = ubFisica;
    }

    public String getCodMaterial() {
        return codMaterial;
    }

    public void setCodMaterial(String codMaterial) {
        this.codMaterial = codMaterial;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getCantDisponible() {
        return cantDisponible;
    }

    public void setCantDisponible(String cantDisponible) {
        this.cantDisponible = cantDisponible;
    }

    public String getUbFisica() {
        return ubFisica;
    }

    public void setUbFisica(String ubFisica) {
        this.ubFisica = ubFisica;
    }

}
