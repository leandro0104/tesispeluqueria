package modelo;

public class Cita {
    private int cod;
    private String tra;
    private String cli;
    private String dia;
    private int codtra;
    private String hor;

    public Cita(int cod, String tra, String cli, String dia, int codtra, String hor) {
        this.cod = cod;
        this.tra = tra;
        this.cli = cli;
        this.dia = dia;
        this.codtra = codtra;
        this.hor = hor;
    }

    public Cita(String tra, String cli, String dia, int codtra, String hor) {
        this.tra = tra;
        this.cli = cli;
        this.dia = dia;
        this.codtra = codtra;
        this.hor = hor;
    }

    public int getCod() {
        return cod;
    }

    public String getTra() {
        return tra;
    }

    public String getCli() {
        return cli;
    }

    public String getDia() {
        return dia;
    }

    public int getCodtra() {
        return codtra;
    }

    public String getHor() {
        return hor;
    }
    
    
}
