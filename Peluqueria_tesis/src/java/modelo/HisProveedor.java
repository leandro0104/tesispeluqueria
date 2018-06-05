
package modelo;


public class HisProveedor {
    private int idh;
    private int idp;
    private String nomantiguo;
    private String nomnuevo;
    private String dirantiguo;
    private String dirnuevo;
    private int telantiguo;
    private int telnuevo;
    private String motivo;

    public HisProveedor(int idh, int idp, String nomantiguo, String nomnuevo, String dirantiguo, String dirnuevo, int telantiguo, int telnuevo, String motivo) {
        this.idh = idh;
        this.idp = idp;
        this.nomantiguo = nomantiguo;
        this.nomnuevo = nomnuevo;
        this.dirantiguo = dirantiguo;
        this.dirnuevo = dirnuevo;
        this.telantiguo = telantiguo;
        this.telnuevo = telnuevo;
        this.motivo = motivo;
    }

    public HisProveedor(int idp, String nomantiguo, String nomnuevo, String dirantiguo, String dirnuevo, int telantiguo, int telnuevo, String motivo) {
        this.idp = idp;
        this.nomantiguo = nomantiguo;
        this.nomnuevo = nomnuevo;
        this.dirantiguo = dirantiguo;
        this.dirnuevo = dirnuevo;
        this.telantiguo = telantiguo;
        this.telnuevo = telnuevo;
        this.motivo = motivo;
    }
    
    

    public int getIdh() {
        return idh;
    }

    public int getIdp() {
        return idp;
    }

    public String getNomantiguo() {
        return nomantiguo;
    }

    public String getNomnuevo() {
        return nomnuevo;
    }

    public String getDirantiguo() {
        return dirantiguo;
    }

    public String getDirnuevo() {
        return dirnuevo;
    }

    public int getTelantiguo() {
        return telantiguo;
    }

    public int getTelnuevo() {
        return telnuevo;
    }

    public String getMotivo() {
        return motivo;
    }
    
    
}
