
package modelo;


public class HisMarca {
    private int idhis;
    private int idmarca;
    private String nomantiguo;
    private String nomnuevo;
    private String Motivo;

    public HisMarca(int idhis, int idmarca, String nomantiguo, String nomnuevo, String Motivo) {
        this.idhis = idhis;
        this.idmarca = idmarca;
        this.nomantiguo = nomantiguo;
        this.nomnuevo = nomnuevo;
        this.Motivo = Motivo;
    }

    public HisMarca(int idmarca, String nomantiguo, String nomnuevo, String Motivo) {
        this.idmarca = idmarca;
        this.nomantiguo = nomantiguo;
        this.nomnuevo = nomnuevo;
        this.Motivo = Motivo;
    }
    
    

    public int getIdhis() {
        return idhis;
    }

    public int getIdmarca() {
        return idmarca;
    }

    public String getNomantiguo() {
        return nomantiguo;
    }

    public String getNomnuevo() {
        return nomnuevo;
    }

    public String getMotivo() {
        return Motivo;
    }
    
    
}
