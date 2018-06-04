
package modelo;
public class Producto {
    private String codigo;
    private String nombre;
    private int id_marca;
    private int id_categoria;
    private String descripcion;
    private int id_prov;
    private int cantidad;
    private String estado;
    private int precio;
    private String imagen;
    // atributos para listar con nombres
    private String nombremarca;
    private String nombrecategoria;
    private String nombreproveedor;

    public Producto(String codigo, String nombre, int id_marca, int id_categoria, String descripcion, int id_prov, int cantidad, String estado, int precio, String imagen) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.id_marca = id_marca;
        this.id_categoria = id_categoria;
        this.descripcion = descripcion;
        this.id_prov = id_prov;
        this.cantidad = cantidad;
        this.estado = estado;
        this.precio = precio;
        this.imagen = imagen;
    }
    
    // Constructor para listar con los nombres

    public Producto(String codigo, String nombre, String descripcion, int cantidad, String estado, int precio, String imagen, String nombremarca, String nombrecategoria, String nombreproveedor) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.estado = estado;
        this.precio = precio;
        this.imagen = imagen;
        this.nombremarca = nombremarca;
        this.nombrecategoria = nombrecategoria;
        this.nombreproveedor = nombreproveedor;
    }
    
    

    public String getCodigo() {
        return codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public int getId_marca() {
        return id_marca;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int getId_prov() {
        return id_prov;
    }

    public int getCantidad() {
        return cantidad;
    }

    public String getEstado() {
        return estado;
    }

    public int getPrecio() {
        return precio;
    }

    public String getImagen() {
        return imagen;
    }

    public String getNombremarca() {
        return nombremarca;
    }

    public String getNombrecategoria() {
        return nombrecategoria;
    }

    public String getNombreproveedor() {
        return nombreproveedor;
    }
    
    
    
    
}
