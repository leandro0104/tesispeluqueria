/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
    

public class Historia {
    private String codr;
    private String mot;
    private String tip;

    public Historia(String codr, String mot, String tip) {
        this.codr = codr;
        this.mot = mot;
        this.tip = tip;
    }

    public String getCodr() {
        return codr;
    }

    public String getMot() {
        return mot;
    }

    public String getTip() {
        return tip;
    }
    
}
