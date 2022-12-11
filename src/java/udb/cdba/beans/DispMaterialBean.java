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
public class DispMaterialBean {
    public String CodigoMaterial;
    public String Titulo;
    public String UbicacionFisica;
    public int CantidadEjemplares;
    public int CantidadDisponibles;
    
    
    
    public DispMaterialBean(){
    }
    
    public DispMaterialBean(String CodigoMaterial, String Titulo, String UbicacionFisica, int CantidadEjemplares, int CantidadDisponibles){
        this.CodigoMaterial=CodigoMaterial;
        this.Titulo=Titulo;
        this.UbicacionFisica=UbicacionFisica;
        this.CantidadEjemplares=CantidadEjemplares;
        this.CantidadDisponibles=CantidadDisponibles;
    }

    public String getCodigoMaterial() {
        return CodigoMaterial;
    }

    public void setCodigoMaterial(String CodigoMaterial) {
        this.CodigoMaterial = CodigoMaterial;
    }
    
       

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
     * Get the value of UbicacionFisica
     *
     * @return the value of UbicacionFisica
     */
    public String getUbicacionFisica() {
        return UbicacionFisica;
    }

    /**
     * Set the value of UbicacionFisica
     *
     * @param UbicacionFisica new value of UbicacionFisica
     */
    public void setUbicacionFisica(String UbicacionFisica) {
        this.UbicacionFisica = UbicacionFisica;
    }
    
    /**
     * Get the value of CantidadEjemplares
     *
     * @return the value of CantidadEjemplares
     */
    public int getCantidadEjemplares() {
        return CantidadEjemplares;
    }

    /**
     * Set the value of CantidadEjemplares
     *
     * @param CantidadEjemplares new value of CantidadEjemplares
     */
    public void setCantidadEjemplares(int CantidadEjemplares) {
        this.CantidadEjemplares = CantidadEjemplares;
    }
    
    /**
     * Get the value of CantidadDisponibles
     *
     * @return the value of CantidadDisponibles
     */
    public int getCantidadDisponibles() {
        return CantidadDisponibles;
    }

    /**
     * Set the value of CantidadDisponibles
     *
     * @param CantidadDisponibles new value of CantidadDisponibles
     */
    public void setCantidadDisponibles(int CantidadDisponibles) {
        this.CantidadDisponibles = CantidadDisponibles;
    } 

}
