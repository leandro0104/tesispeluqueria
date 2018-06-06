
package modelo;


public class HisCategoria {
    private int idh;
    private int idcat;
    private String noma;
    private String nomn;
    private String motivo;

    public HisCategoria(int idh, int idcat, String noma, String nomn, String motivo) {
        this.idh = idh;
        this.idcat = idcat;
        this.noma = noma;
        this.nomn = nomn;
        this.motivo = motivo;
    }

    public HisCategoria(int idcat, String noma, String nomn, String motivo) {
        this.idcat = idcat;
        this.noma = noma;
        this.nomn = nomn;
        this.motivo = motivo;
    }
    
    

    public int getIdh() {
        return idh;
    }

    public int getIdcat() {
        return idcat;
    }

    public String getNoma() {
        return noma;
    }

    public String getNomn() {
        return nomn;
    }

    public String getMotivo() {
        return motivo;
    }
    
    
}
