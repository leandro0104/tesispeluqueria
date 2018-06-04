
package modelo;


public class Usuario {
    private String email;
    private String nombre;
    private String apellido;
    private String password;
    private String tipo;
    private String telefono;

    public Usuario(String email, String nombre, String apellido, String password, String tipo, String telefono) {
        this.email = email;
        this.nombre = nombre;
        this.apellido = apellido;
        this.password = password;
        this.tipo = tipo;
        this.telefono = telefono;
    }
    

    public String getEmail() {
        return email;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getPassword() {
        return password;
    }

    public String getTipo() {
        return tipo;
    }

    public String getTelefono() {
        return telefono;
    }
    
    
    
    
    
}
