/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Camila
 */

public class Auditoria {
     private int cod;
    private String usu;
    private String dat;
    private String mot;

    public Auditoria( int cod, String usu, String dat, String mot) {
       this.cod = cod;
        this.usu = usu;
        this.dat= dat;
        this.mot = mot;
    }
    public Auditoria(String usu, String dat, String mot) {
        this.usu = usu;
        this.dat= dat;
        this.mot = mot;
    }
     public int getCod() {
        return cod;
    }
    public String getUsu() {
        return usu;
    }
public String getDat() {
        return dat;
    }
    public String getMot() {
        return mot;
    }
}
