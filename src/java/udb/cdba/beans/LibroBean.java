package udb.cdba.beans;

/**
 *
 * @author Jazmine
 */
public class LibroBean {

    private String codMaterial;
    private String titulo;
    private String ufisica;
    private String cejemp;
    private String autor;
    private String npaginas;
    private String editorial;
    private String pais;
    private String isbn;
    private String anio;
    private String edicion;
    private String idioma;
    private String materia;
    private String descripcion;

    public LibroBean() {
    }

    public LibroBean(String codMaterial, String titulo, String ufisica, String cejemp, String autor, String npaginas, String editorial, String pais, String isbn, String anio, String edicion, String idioma, String materia, String descripcion) {
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
        this.edicion = edicion;
        this.idioma = idioma;
        this.materia = materia;
        this.descripcion = descripcion;
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

    public String getNpaginas() {
        return npaginas;
    }

    public void setNpaginas(String npaginas) {
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

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getEdicion() {
        return edicion;
    }

    public void setEdicion(String edicion) {
        this.edicion = edicion;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

}
