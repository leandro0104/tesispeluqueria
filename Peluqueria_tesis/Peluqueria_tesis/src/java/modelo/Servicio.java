
package modelo;

/**
 *
 * @author Camila
 */
public class Servicio {
    private int cod;
    private String tto;
    private String dia;
    private String hora;
    private String telefono;
    private String profesional;
    private String nombre;

    public Servicio( int cod, String tto, String dia, String hora, String telefono, String profesional, String nombre) {
       this.cod = cod;
        this.tto = tto;
        this.dia = dia;
        this.hora = hora;
        this.telefono = telefono;
        this.profesional = profesional;
        this.nombre= nombre;
    }
public Servicio( int cod, String tto, String dia, String hora, String telefono, String profesional) {
       this.cod = cod;
        this.tto = tto;
        this.dia = dia;
        this.hora = hora;
        this.telefono = telefono;
        this.profesional = profesional;
    }
public Servicio( String tto, String dia, String hora, String telefono, String profesional, String nombre) {
   
        this.tto = tto;
        this.dia = dia;
        this.hora = hora;
        this.telefono = telefono;
        this.profesional = profesional;
        this.nombre =nombre;
    }
    public Servicio (int cod){
        this.cod=cod;
            }

     public int getCod() {
        return cod;
    }
    public String getTto() {
        return tto;
    }

    public String getDia() {
        return dia;
    }

    public String getHora() {
        return hora;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getProfesional() {
        return profesional;
    }
public String getNombre(){
return nombre;
}
    
    
    
    
    
}


