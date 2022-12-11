/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package udb.cdba.beans;

/**
 *
 * @author Rocio Abrego
 */
public class DispDevolucionBean {
    private String Carnet;
    private String CodigoMaterial;
    private String FechaInicio;
    private String FechaFin;
    private String Mora;
    private String Estado;
    private String Titulo;

    /**
     * Get the value of Titulo
     *
     * @return the value of Titulo
     */
    public String getTitulo() {
        return Titulo;
    }

    /**
     * Set the value of Titulo
     *
     * @param Titulo new value of Titulo
     */
    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }


    /**
     * Get the value of Estado
     *
     * @return the value of Estado
     */
    public String getEstado() {
        return Estado;
    }

    /**
     * Set the value of Estado
     *
     * @param Estado new value of Estado
     */
    public void setEstado(String Estado) {
        this.Estado = Estado;
    }


    /**
     * Get the value of Mora
     *
     * @return the value of Mora
     */
    public String getMora() {
        return Mora;
    }

    /**
     * Set the value of Mora
     *
     * @param Mora new value of Mora
     */
    public void setMora(String Mora) {
        this.Mora = Mora;
    }


    /**
     * Get the value of FechaFin
     *
     * @return the value of FechaFin
     */
    public String getFechaFin() {
        return FechaFin;
    }

    /**
     * Set the value of FechaFin
     *
     * @param FechaFin new value of FechaFin
     */
    public void setFechaFin(String FechaFin) {
        this.FechaFin = FechaFin;
    }


    /**
     * Get the value of FechaInicio
     *
     * @return the value of FechaInicio
     */
    public String getFechaInicio() {
        return FechaInicio;
    }

    /**
     * Set the value of FechaInicio
     *
     * @param FechaInicio new value of FechaInicio
     */
    public void setFechaInicio(String FechaInicio) {
        this.FechaInicio = FechaInicio;
    }


    /**
     * Get the value of CodigoMaterial
     *
     * @return the value of CodigoMaterial
     */
    public String getCodigoMaterial() {
        return CodigoMaterial;
    }

    /**
     * Set the value of CodigoMaterial
     *
     * @param CodigoMaterial new value of CodigoMaterial
     */
    public void setCodigoMaterial(String CodigoMaterial) {
        this.CodigoMaterial = CodigoMaterial;
    }


    /**
     * Get the value of Carnet
     *
     * @return the value of Carnet
     */
    public String getCarnet() {
        return Carnet;
    }

    /**
     * Set the value of Carnet
     *
     * @param Carnet new value of Carnet
     */
    public void setCarnet(String Carnet) {
        this.Carnet = Carnet;
    }

}
