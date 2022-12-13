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
public class PrestamoUsuarioBean {
    //atributos de Prestamos

    private int id;
    private String carnet;
    private String codMaterial;
    private String fecha_inicio;
    private String fecha_fin;
    private int estado;
    private double mora;
    private String fecha_devolucion;

    //constructor vacio
    public PrestamoUsuarioBean() {
    }

    //constructor con parametro
    public PrestamoUsuarioBean(int id, String carnet, String codMaterial, String fecha_inicio, String fecha_fin, int estado, double mora, String fecha_devolucion) {
        this.id = id;
        this.carnet = carnet;
        this.codMaterial = codMaterial;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
        this.estado = estado;
        this.mora = mora;
        this.fecha_devolucion = fecha_devolucion;
    }

    //getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCarnet() {
        return carnet;
    }

    public void setCarnet(String carnet) {
        this.carnet = carnet;
    }

    public String getCodMaterial() {
        return codMaterial;
    }

    public void setCodMaterial(String codMaterial) {
        this.codMaterial = codMaterial;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(String fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public double getMora() {
        return mora;
    }

    public void setMora(double mora) {
        this.mora = mora;
    }

    public String getFecha_devolucion() {
        return fecha_devolucion;
    }

    public void setFecha_devolucion(String fecha_devolucion) {
        this.fecha_devolucion = fecha_devolucion;
    }

}

