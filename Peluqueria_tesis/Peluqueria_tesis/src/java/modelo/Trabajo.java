package modelo;


public class Trabajo {
    private int cod;
    private String nom;
    private int pre;
    private String desc;
    private String img;
    private String usu;

    public Trabajo(int cod, String nom, int pre, String desc, String img, String usu) {
        this.cod = cod;
        this.nom = nom;
        this.pre = pre;
        this.desc = desc;
        this.img = img;
        this.usu = usu;
    }

    public Trabajo(String nom, int pre, String desc, String img, String usu) {
        this.nom = nom;
        this.pre = pre;
        this.desc = desc;
        this.img = img;
        this.usu = usu;
    }

    public int getCod() {
        return cod;
    }

    public String getNom() {
        return nom;
    }

    public int getPre() {
        return pre;
    }

    public String getDesc() {
        return desc;
    }

    public String getImg() {
        return img;
    }

    public String getUsu() {
        return usu;
    }

    
    
}
