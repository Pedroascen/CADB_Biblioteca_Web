/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.beans;

/**
 *
 * @author Ascencio
 */
public class EjemplarBean {

    // ENCAPSULAMIENTO
    private String TipoMaterial;
    private String CodigoMaterial;
    private String Titulo;
    private String Autores;
    private String MaterialInfo;

    public EjemplarBean() {
    }

    public EjemplarBean(String TipoMaterial, String CodigoMaterial, String Titulo, String Autores, String MaterialInfo) {
        this.TipoMaterial = TipoMaterial;
        this.CodigoMaterial = CodigoMaterial;
        this.Titulo = Titulo;
        this.Autores = Autores;
        this.MaterialInfo = MaterialInfo;
    }

    public String getTipoMaterial() {
        return TipoMaterial;
    }

    public void setTipoMaterial(String TipoMaterial) {
        this.TipoMaterial = TipoMaterial;
    }

    public String getCodigoMaterial() {
        return CodigoMaterial;
    }

    public void setCodigoMaterial(String CodigoMaterial) {
        this.CodigoMaterial = CodigoMaterial;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public String getAutores() {
        return Autores;
    }

    public void setAutores(String Autores) {
        this.Autores = Autores;
    }

    public String getMaterialInfo() {
        return MaterialInfo;
    }

    public void setMaterialInfo(String MaterialInfo) {
        this.MaterialInfo = MaterialInfo;
    }
}
