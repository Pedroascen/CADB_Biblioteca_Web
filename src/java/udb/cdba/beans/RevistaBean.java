/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.beans;

/**
 *
 * @author Jazmine
 */
public class RevistaBean {
    private String codMaterial;
    private String titulo;
    private String ufisica;
    private int cejemp;
    private String editorial;
    private int ISSN;
    private String idioma;
    private String tamano;
    private String periodicidad;
    private String fechapublicacion;

    public RevistaBean(){
        
    }
    public RevistaBean(String codMaterial, String titulo, String ufisica, int cejemp, String editorial, int ISSN, String idioma, String tamano, String periodicidad, String fechapublicacion) {
        this.codMaterial = codMaterial;
        this.titulo = titulo;
        this.ufisica = ufisica;
        this.cejemp = cejemp;
        this.editorial = editorial;
        this.ISSN = ISSN;
        this.idioma = idioma;
        this.tamano = tamano;
        this.periodicidad = periodicidad;
        this.fechapublicacion = fechapublicacion;
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

    public String getUfisica() {
        return ufisica;
    }

    public void setUfisica(String ufisica) {
        this.ufisica = ufisica;
    }

    public int getCejemp() {
        return cejemp;
    }

    public void setCejemp(int cejemp) {
        this.cejemp = cejemp;
    }

    public String getEditorial() {
        return editorial;
    }

    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    public int getISSN() {
        return ISSN;
    }

    public void setISSN(int ISSN) {
        this.ISSN = ISSN;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getTamano() {
        return tamano;
    }

    public void setTamano(String tamano) {
        this.tamano = tamano;
    }

    public String getPeriodicidad() {
        return periodicidad;
    }

    public void setPeriodicidad(String periodicidad) {
        this.periodicidad = periodicidad;
    }

    public String getFechapublicacion() {
        return fechapublicacion;
    }

    public void setFechapublicacion(String fechapublicacion) {
        this.fechapublicacion = fechapublicacion;
    }
    
    
}


