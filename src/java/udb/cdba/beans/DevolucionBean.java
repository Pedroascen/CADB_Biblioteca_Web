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
public class DevolucionBean {
    private String Resultado;
    private int PrestamoId;
    
    public DevolucionBean(){
    }
    
    public DevolucionBean(String Resultado, int PrestamoId){
        this.Resultado=Resultado;
        this.PrestamoId=PrestamoId;
    }

    public String getResultado() {
        return Resultado;
    }

    public void setResultado(String Resultado) {
        this.Resultado = Resultado;
    }
    
    public int getPrestamoId() {
        return PrestamoId;
    }

    public void setPrestamoId(int PrestamoId) {
        this.PrestamoId = PrestamoId;
    }
}
