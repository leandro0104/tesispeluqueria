package modelo;

public class Proveedor {
    private int id;
    private String rut;
    private String nombre;
    private String direccion;
    private int telefono;
    private String correo;
    private String estado;

    public Proveedor(int id, String rut, String nombre, String direccion, int telefono, String correo, String estado) {
        this.id = id;
        this.rut = rut;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correo = correo;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public String getRut() {
        return rut;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public String getEstado() {
        return estado;
    }
    
    
}


