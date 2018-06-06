package modelo;

public class Cita {
    private int cod;
    private String tra;
    private String cli;
    private String dia;
    private int codtra;
    private String hor;
    private String ser;
    private String ape;

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

    public Cita(int cod, String cli, String dia, String hor, String ser) {
        this.cod = cod;
        this.cli = cli;
        this.dia = dia;
        this.hor = hor;
        this.ser = ser;
    }

    public String getApe() {
        return ape;
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
    public String getSer() {
        return ser;
    }
    
}
