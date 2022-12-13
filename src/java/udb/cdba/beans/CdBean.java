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
public class CdBean {
    private String codMaterial;
    private String titulo;
    private String ufisica;
    private int cejemp;
    private String autor;
    private String paispubli;
    private String ciudadpub;
    private String anio_publi;
    private int volumen;
    private String idioma;
    private String tema;
    
    public CdBean(){
    }
    
    public CdBean(String codMaterial, String titulo, String ufisica, int cejemp, String autor,String paispubli, String ciudadpub,String anio_publi, int volumen, String idioma, String tema){
    this.codMaterial=codMaterial;
    this.titulo=titulo;
    this.ufisica=ufisica;
    this.cejemp=cejemp;
    this.autor=autor;
    this.paispubli=paispubli;
    this.ciudadpub=ciudadpub;
    this.anio_publi=anio_publi;
    this.volumen=volumen;
    this.idioma=idioma;
    this.tema=tema;
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

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getPaispubli() {
        return paispubli;
    }

    public void setPaispubli(String paispubli) {
        this.paispubli = paispubli;
    }

    public String getCiudadpub() {
        return ciudadpub;
    }

    public void setCiudadpub(String ciudadpub) {
        this.ciudadpub = ciudadpub;
    }

    public String getAnio_publi() {
        return anio_publi;
    }

    public void setAnio_publi(String anio_publi) {
        this.anio_publi = anio_publi;
    }

    public int getVolumen() {
        return volumen;
    }

    public void setVolumen(int volumen) {
        this.volumen = volumen;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }
    
    
    
    
}
