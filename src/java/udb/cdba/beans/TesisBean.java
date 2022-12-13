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
public class TesisBean {
    private String codMaterial;
    private String titulo;
    private String ufisica;
    private String cejemp;
    private String autor;
    private String  pais;
    private String ciudad;
    private String universidad;
    private String carrera;
    private String idioma;
    private String fechapublicacion;
    private String numeroPaginas;
    private String descripcion;
    private String palabrasclave;
    
    public TesisBean(){
        
    }

    public TesisBean(String codMaterial, String titulo, String ufisica, String cejemp, String autor, String pais, String ciudad, String universidad, String carrera, String idioma, String fechapublicacion, String numeroPaginas, String descripcion, String palabrasclave) {
        this.codMaterial = codMaterial;
        this.titulo = titulo;
        this.ufisica = ufisica;
        this.cejemp = cejemp;
        this.autor = autor;
        this.pais = pais;
        this.ciudad = ciudad;
        this.universidad = universidad;
        this.carrera = carrera;
        this.idioma = idioma;
        this.fechapublicacion = fechapublicacion;
        this.numeroPaginas = numeroPaginas;
        this.descripcion = descripcion;
        this.palabrasclave = palabrasclave;
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

    public String getCejemp() {
        return cejemp;
    }

    public void setCejemp(String cejemp) {
        this.cejemp = cejemp;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getUniversidad() {
        return universidad;
    }

    public void setUniversidad(String universidad) {
        this.universidad = universidad;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getFechapublicacion() {
        return fechapublicacion;
    }

    public void setFechapublicacion(String fechapublicacion) {
        this.fechapublicacion = fechapublicacion;
    }

    public String getNumeroPaginas() {
        return numeroPaginas;
    }

    public void setNumeroPaginas(String numeroPaginas) {
        this.numeroPaginas = numeroPaginas;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPalabrasclaves() {
        return palabrasclave;
    }

    public void setPalabrasclave(String palabrasclave) {
        this.palabrasclave = palabrasclave;
    }
    
    
    
}

