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
public class ObraBean {
    private String codMaterial;
    private String titulo;
    private String ufisica;
    private int cejemp;
    private String autor;
    private int npaginas;
    private String editorial;
    private String pais;
    private int isbn;
    private int anio;
    private int edición;
    private String idioma;
    private String genero;
    
    
    public ObraBean(){
        
    }

    public ObraBean(String codMaterial, String titulo, String ufisica, int cejemp, String autor, int npaginas, String editorial, String pais, int isbn, int anio, int edición, String idioma, String genero) {
        this.codMaterial = codMaterial;
        this.titulo = titulo;
        this.ufisica = ufisica;
        this.cejemp = cejemp;
        this.autor = autor;
        this.npaginas = npaginas;
        this.editorial = editorial;
        this.pais = pais;
        this.isbn = isbn;
        this.anio = anio;
        this.edición = edición;
        this.idioma = idioma;
        this.genero = genero;
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

    public int getNpaginas() {
        return npaginas;
    }

    public void setNpaginas(int npaginas) {
        this.npaginas = npaginas;
    }

    public String getEditorial() {
        return editorial;
    }

    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public int getEdición() {
        return edición;
    }

    public void setEdición(int edición) {
        this.edición = edición;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
   
    
}


