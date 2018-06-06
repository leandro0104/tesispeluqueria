/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import  modelo.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;


public class AccesoDatos {
    private Connection con;
    private Statement sentencia;
    private ResultSet rs;
    Usuario u;
    Usuario uu;
    Proveedor p;
    Categoria c;
    Marca m;
    Producto pro;
    Trabajo t;
    Servicio s;

    Cita cit;


    HisMarca hm;
    HisCategoria hc;
    HisProveedor hp;
    private ArrayList<Usuario> lisusu;
    private ArrayList<Proveedor> lisprov;
    private ArrayList<Categoria> liscat;
    private ArrayList<Marca> lismar;
    private ArrayList<Servicio> lista;
    private ArrayList<Producto> listpro;
    private ArrayList<Trabajo> listra;
    private ArrayList<Cita> listcit;
    // Metodo para conectarse
    
    private boolean conexion(){
        try{
            String parametros = "jdbc:mysql://localhost:3306/peluqueria?zeroDateTimeBehavior=convertToNull";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(parametros, "root", "");
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    // Metodo para la desconexion
    
    private boolean desconexion(){
        try{
            con.close();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    } 
    
     // Metodo para validar el inicio de Sesion
    public Usuario validar(String login, String password){
        try{
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from usuario where email_usu='"+login+"' and pass_usu='"+password+"'";
            rs = sentencia.executeQuery(sql);
            if(rs.next()){
                String ema = rs.getString("email_usu");
                String nom = rs.getString("nom_usu");
                String ape = rs.getString("ape_usu");
                String pas = rs.getString("pass_usu");
                String tip = rs.getString("tip_usu");
                String tel = rs.getString("tel_usu");
                u = new Usuario(ema, nom, ape, pas, tip, tel);
                sentencia.close();
                desconexion();
                return u;
            }else{
                sentencia.close();
                desconexion();
                return null;
            }
        }catch(SQLException e){
            return null;
        }catch(Exception e){
            return null;
        }
    }
    
    
    // Metodo para registrar a los usuarios
    
    public boolean registrarUsuario(Usuario usu){
        try{
            conexion();
            String ema = usu.getEmail();
            String nom = usu.getNombre();
            String ape = usu.getApellido();
            String pas = usu.getPassword();
            String tip = usu.getTipo();
            String tel = usu.getTelefono();
            sentencia = con.createStatement();
            String sql = "insert into usuario values ('"+ema+"','"+nom+"','"+ape+"','"+pas+"','"+tip+"','"+tel+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    
     // Metodo para listar Usuarios
    
    public ArrayList<Usuario> listarUsuarios(){
        try{
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from usuario";
            rs = sentencia.executeQuery(sql);
            lisusu = new ArrayList();
            while(rs.next()){
                String ema = rs.getString("email_usu");
                String nom = rs.getString("nom_usu");
                String ape = rs.getString("ape_usu");
                String pass = rs.getString("pass_usu");
                String tip = rs.getString("tip_usu");
                String tel = rs.getString("tel_usu");
                u = new Usuario(ema, nom, ape, pass, tip, tel);
                lisusu.add(u);
            }
            sentencia.close();
            desconexion();
            return lisusu;
        }catch(SQLException e){
            return null;
        }catch(Exception e){
            return null;
        }
    }
    
    //Metodo para registrar categorias
    
    public boolean registrarCategoria(Categoria c){
        try{
            conexion();
            int id = c.getId();
            String nom = c.getNombre();
            sentencia = con.createStatement();
            String sql = "insert into categoria values ('"+id+"','"+nom+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    //Metodo para listar Categorias
   
    public ArrayList<Categoria> listarCategorias(){
        try {
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from categoria";
            rs = sentencia.executeQuery(sql);
            liscat = new ArrayList();
            while (rs.next()) {                
                int id = rs.getInt("id_categoria");
                String nom = rs.getString("nom_cat");
                c = new Categoria(id, nom);
                liscat.add(c);
            }
            sentencia.close();
            desconexion();
            return liscat;
            
        } catch (SQLException e) {
            return null;
        } catch (Exception e){
            return null;
        }
 
    }
    
    //Metodo para registrar Marcas
    
    public boolean registrarMarca(Marca m){
        try{
            conexion();
            int id = m.getId();
            String nom = m.getNombre();
            sentencia = con.createStatement();
            String sql = "insert into marca values('"+id+"','"+nom+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    //Metodo para listar Marcas
    
    public ArrayList<Marca> listarMarcas(){
        try {
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from marca";
            rs = sentencia.executeQuery(sql);
            lismar = new ArrayList();
            while (rs.next()) {                
                int id = rs.getInt("id_marca");
                String nom = rs.getString("nom_mar");
                m = new Marca(id, nom);
                lismar.add(m);
            }
            sentencia.close();
            desconexion();
            return lismar;
            
        } catch (SQLException e) {
            return null;
        } catch (Exception e){
            return null;
        }
 
    }
    
       // Metodo para buscar marcas por codigo
    
    public Marca buscarMarca (int id){
        try {
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from marca where id_marca='"+id+"'";
            rs = sentencia.executeQuery(sql);
            if (rs.next()) {
                m = new Marca(rs.getInt(id),rs.getString("nom_mar"));
            }
            sentencia.close();
            desconexion();
        } catch (SQLException e) {
            System.out.println(e.getMessage()+"error en sql");
            System.exit(0);
        } catch (Exception e){
            System.out.println(e.getMessage()+"error en codigo");
            System.exit(0);
        }
        return m;
    }
    
    // Metodo para ingresar la modificacion a la tabla hist_marca
    
    public boolean IngresarModificacionMarca(HisMarca hm){
        try{
            conexion();
            int idm = hm.getIdmarca();
            String noman = hm.getNomantiguo();
            String nomnu = hm.getNomnuevo();
            String mot = hm.getMotivo();
            sentencia = con.createStatement();
            String sql = "insert into hist_marca values (0,'"+idm+"','"+noman+"','"+nomnu+"','"+mot+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            System.out.println(e.getMessage()+"error en sql");
            return false;
        }catch(Exception e){
            System.out.println(e.getMessage()+"error en codigo");
            return false;
        }
    }
    
    
    // Metodo para modificar de la tabla marca
    
      public boolean modificarmarca(Marca m){
        try{
            conexion();
            int id = m.getId();
            String nom = m.getNombre();
            sentencia = con.createStatement();
            String sql = "update marca set nom_mar='"+nom+"' where id_marca='"+id+"'";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            System.out.println(e.getMessage()+"error en sql");
            return false;
        }catch(Exception e){
            System.out.println(e.getMessage()+"error codigo");
            return false;
        }
    }
    
    //Metodo para registrar Proveedores
    
    public boolean registrarProveedor(Proveedor p){
        try{
            conexion();
            int id = p.getId();
            String rut = p.getRut();
            String nom = p.getNombre();
            String dir = p.getDireccion();
            int tel = p.getTelefono();
            String ema = p.getCorreo();
            String est = p.getEstado();
            sentencia = con.createStatement();
            String sql = "insert into proveedor values('"+id+"','"+rut+"','"+nom+"','"+dir+"','"+tel+"','"+ema+"','"+est+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    // Metodo para listar Proveedores
    
    public ArrayList<Proveedor> listarProveedores(){
        try {
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from proveedor";
            rs = sentencia.executeQuery(sql);
            lisprov = new ArrayList();
            while (rs.next()) {                
                int id = rs.getInt("id_prov");
                String rut = rs.getString("rut_prov");
                String nom = rs.getString("nom_prov");
                String dir = rs.getString("dir_prov");
                int tel = rs.getInt("tel_prov");
                String cor = rs.getString("correo_prov");
                String est = rs.getString("estado_prov");
                p = new Proveedor(id, rut, nom, dir, tel, cor, est);
                lisprov.add(p);
            }
            sentencia.close();
            desconexion();
            return lisprov;
            
        } catch (SQLException e) {
            return null;
        } catch (Exception e){
            return null;
        }
 
    }
    
    
    
      
    public boolean insertarhistorial(Historia h){
        try{
            conexion();
            String cod = h.getCodr();
            String mot = h.getMot();
            String tip = h.getTip();
            sentencia = con.createStatement();
            String sql = "insert into historia values('','"+cod+"','"+mot+"','"+tip+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    
    
    //metodo para listar servicio
    
     public ArrayList<Servicio> listarServicio(String nom){
        try{
            conexion();
            sentencia = con.createStatement();
            String consulta = "select * from servicio where nom_ser='"+nom+"'";
            rs = sentencia.executeQuery(consulta);
            lista = new ArrayList();
            while(rs.next()){
                int cod=(rs.getInt("cod_ser"));
                String tto=(rs.getString("tto_ser"));
                String dia=(rs.getString("dia_ser"));
                String hora=(rs.getString("hora"));
                String num = (rs.getString("num_usu"));
                String prof=(rs.getString("prof_ser"));
                String nomb =(rs.getString("nom_ser"));
                Servicio s = new Servicio(cod,tto,dia,hora,num,prof,nomb);
                lista.add(s);
            }
            sentencia.close();
            desconexion();
            return lista;
        }catch(SQLException e1){
            System.exit(0);
            return null;
        }catch(Exception e2){
            System.exit(0);
            return null;
        }
    }
     public boolean registrarAuditoria(Auditoria aud){
        try{
            conexion();
            String usu = aud.getUsu();
            String dat = aud.getDat();
            String mot = aud.getMot();
            
            sentencia = con.createStatement();
            String sql = "insert into auditoriacli values ('NULL','"+usu+"','"+dat+"','"+mot+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
     
    public boolean modificarservicio(Servicio s, String nombre, int cod){
        try{
            conexion();
            String tto = s.getTto();
            String dia = s.getDia();
            String hora = s.getHora();
            String tel = s.getTelefono();
            String prof = s.getProfesional();
            sentencia = con.createStatement();
            String sql = "update servicio set tto_ser='"+tto+"', dia_ser='"+dia+"', hora='"+hora+"', num_usu='"+tel+"', prof_ser='"+prof+"', nom_ser='"+nombre+"' where cod_ser='"+cod+"'";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    
    // Metodo para encontrar el indice maximo en el codigo de productos
    
    public int codigofinal(){
         try {
            int val=0;
            conexion();
            sentencia = con.createStatement();
            String sql = "select Count(cod_pro) as 'Codigo' from producto";
            rs = sentencia.executeQuery(sql);
            while (rs.next()) {                
                val = rs.getInt("Codigo") + 1;
            }
            sentencia.close();
            desconexion();
            return  val;
        } catch (SQLException e) {
            return -1;
        } catch (Exception e){
            return -1;
        }
    }
    
    // Metodo para registrar Productos
    
    public boolean registrarProducto(Producto pro){
        try {
            conexion();
            String cod = pro.getCodigo();
            String nom = pro.getNombre();
            int idmar = pro.getId_marca();
            int idcat = pro.getId_categoria();
            String des = pro.getDescripcion();
            int idprov = pro.getId_prov();
            int cant = pro.getCantidad();
            String est = pro.getEstado();
            int pre = pro.getPrecio();
            String img = pro.getImagen();
            sentencia = con.createStatement();
            String sql = "insert into producto values ('"+cod+"','"+nom+"','"+idmar+"','"+idcat+"','"+des+"','"+idprov+"','"+cant+"','"+est+"','"+pre+"','"+img+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        } catch (SQLException e) {
            return false;
        } catch (Exception e){
            return false;
        }
    }
    
    // Metodo para listar los productos
    
    public ArrayList<Producto> listarProductos(){
        try{
            conexion();
            sentencia = con.createStatement();
            String consulta = "select cod_pro,nom_pro,nom_mar,nom_cat,descripcion,nom_prov,cantidad,estado,precio,imagen from producto,categoria,marca,proveedor where producto.id_marca = marca.id_marca and producto.id_categoria = categoria.id_categoria and producto.id_prov = proveedor.id_prov";
            rs = sentencia.executeQuery(consulta);
            listpro = new ArrayList();
            while(rs.next()){
                String cod = rs.getString("cod_pro");
                String nom = rs.getString("nom_pro");
                String mar = rs.getString("nom_mar");
                String cat = rs.getString("nom_cat");
                String des = rs.getString("descripcion");
                String prov= rs.getString("nom_prov");
                int cant = rs.getInt("cantidad");
                String est = rs.getString("estado");
                int pre = rs.getInt("precio");
                String img = rs.getString("imagen");
                Producto pro = new Producto(cod, nom, des, cant, est, pre, img, mar, cat, prov);
                listpro.add(pro);
            }
            sentencia.close();
            desconexion();
            return listpro;
        }catch(SQLException e1){
            System.exit(0);
            return null;
        }catch(Exception e2){
            System.exit(0);
            return null;
        }
    }
    
    public boolean modificarStock(String cod,int cant){
         try {
            conexion();
            sentencia = con.createStatement();
            String sql = "UPDATE producto set cantidad= cantidad+"+cant+" where cod_pro='"+cod+"'";
            sentencia.executeUpdate(sql);
            sentencia.close();
            desconexion();
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage()+"error en sql");
            return false;
        } catch (Exception e){
            System.out.println(e.getMessage()+ "error de programacion");
            return false;
        }
    }
    
    public boolean insertarTrabajo(Trabajo t){
        try{
            conexion();
            String nom = t.getNom();
            int pre = t.getPre();
            String desc = t.getDesc();
            String img = t.getImg();
            String usu = t.getUsu();
            sentencia = con.createStatement();
            String sql = "insert into trabajos values(NULL,'"+nom+"','"+pre+"','"+desc+"','"+img+"','"+usu+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
    
    public boolean insertarCita(Cita cit){
        try{
            conexion();
            String tra = cit.getTra();
            String cli = cit.getCli();
            String dia = cit.getDia();
            int codtra = cit.getCodtra();
            String hor = cit.getHor();
            sentencia = con.createStatement();
            String sql = "INSERT INTO cita VALUES(NULL, '"+tra+"', '"+cli+"', '"+dia+"', "+codtra+", '"+hor+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            System.out.println(e + "es de sql");
            return false;
        }catch(Exception e){
            System.out.println(e + "es de java");
            return false;
        }
    }
    
     public ArrayList<Trabajo> listarTrabajos(String cond){
        try{
            conexion();
            sentencia = con.createStatement();
            String consulta = "select * from trabajos where email_usu='"+cond+"'";
            rs = sentencia.executeQuery(consulta);
            listra = new ArrayList();
            while(rs.next()){
                int cod = rs.getInt("cod_tra");
                String nom = rs.getString("nom_tra");
                int pre = rs.getInt("pre_tra");
                String desc = rs.getString("desc_tra");
                String img = rs.getString("img_tra");
                String usu = rs.getString("email_usu");
                Trabajo tra = new Trabajo(cod,nom,pre,desc,img,usu);
                listra.add(tra);
            }
            sentencia.close();
            desconexion();
            return listra;
        }catch(SQLException e1){
            System.exit(0);
            return null;
        }catch(Exception e2){
            System.exit(0);
            return null;
        }
    }
     
     public ArrayList<Cita> listarCita(String cond){
        try{
            conexion();
            sentencia = con.createStatement();
            String consulta = "select cita.cod_cit, cita.email_cli, cita.dia_cit, trabajos.nom_tra, cita.hor_cit from cita, usuario, trabajos where cita.email_usu=usuario.email_usu and cita.cod_tra=trabajos.cod_tra and usuario.email_usu='"+cond+"';";
            rs = sentencia.executeQuery(consulta);
            listcit = new ArrayList();
            while(rs.next()){
                int cod = rs.getInt("cod_cit");
                String nom = rs.getString("email_cli");
                String dia = rs.getString("dia_cit");
                String tra = rs.getString("nom_tra");
                String hor = rs.getString("hor_cit");
                Cita cit = new Cita(cod,nom,dia,hor,tra);
                listcit.add(cit);
            }
            sentencia.close();
            desconexion();
            return listcit;
        }catch(SQLException e1){
            System.exit(0);
            return null;
        }catch(Exception e2){
            System.exit(0);
            return null;
        }
    }
     
    // Metodo para listar trabajadores
    
    public ArrayList<Usuario> listarTrabajadores(){
        try{
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from usuario where tip_usu='Trabajador'";
            rs = sentencia.executeQuery(sql);
            lisusu = new ArrayList();
            while(rs.next()){
                String ema = rs.getString("email_usu");
                String nom = rs.getString("nom_usu");
                String ape = rs.getString("ape_usu");
                String pass = rs.getString("pass_usu");
                String tip = rs.getString("tip_usu");
                String tel = rs.getString("tel_usu");
                u = new Usuario(ema, nom, ape, pass, tip, tel);
                lisusu.add(u);
            }
            sentencia.close();
            desconexion();
            return lisusu;
        }catch(SQLException e){
            return null;
        }catch(Exception e){
            return null;

        }
    }
    
    // Metodo para buscar marcas por categorias
    
    public Categoria buscarCategoria (int id){
        try {
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from categoria where id_categoria='"+id+"'";
            rs = sentencia.executeQuery(sql);
            if (rs.next()) {
                c = new Categoria(rs.getInt(id), rs.getString("nom_cat"));
            }
            sentencia.close();
            desconexion();
        } catch (SQLException e) {
            System.out.println(e.getMessage()+"error en sql");
            System.exit(0);
        } catch (Exception e){
            System.out.println(e.getMessage()+"error en codigo");
            System.exit(0);
        }
        return c;
    }

    
        // Metodo para ingresar la modificacion a la tabla hist_categoria
    
    public boolean IngresarModificacionCategoria(HisCategoria hc){
        try{
            conexion();
            int idc = hc.getIdcat();
            String noman = hc.getNoma();
            String nomnu = hc.getNomn();
            String mot = hc.getMotivo();
            sentencia = con.createStatement();
            String sql = "insert into hist_categoria values (0,'"+idc+"','"+noman+"','"+nomnu+"','"+mot+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            System.out.println(e.getMessage()+"error en sql");
            return false;
        }catch(Exception e){
            System.out.println(e.getMessage()+"error en codigo");
            return false;
        }
    }
    
    
    // Metodo para modificar de la tabla categoria
    
      public boolean modificarcategoria(Categoria c){
        try{
            conexion();
            int id = c.getId();
            String nom = c.getNombre();
            sentencia = con.createStatement();
            String sql = "update categoria set nom_cat='"+nom+"' where id_categoria='"+id+"'";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            System.out.println(e.getMessage()+"error en sql");
            return false;
        }catch(Exception e){
            System.out.println(e.getMessage()+"error codigo");
            return false;

        }
    }
      
      // Metodo para buscar proveedor segun el codigo
      
      public Proveedor buscarProveedor (int id){
        try {
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from proveedor where id_prov='"+id+"'";
            rs = sentencia.executeQuery(sql);
            if (rs.next()) {
                p = new Proveedor(rs.getInt(id),rs.getString("rut_prov"),rs.getString("nom_prov"),rs.getString("dir_prov"),rs.getInt("tel_prov"),rs.getString("correo_prov"),rs.getString("estado_prov"));
            }
            sentencia.close();
            desconexion();
        } catch (SQLException e) {
            System.out.println(e.getMessage()+"error en sql");
            System.exit(0);
        } catch (Exception e){
            System.out.println(e.getMessage()+"error en codigo");
            System.exit(0);
        }
        return p;
    }
      
      // Metodo para ingresar los registros de las modificaciones a la tabla de historial de modificaciones en los proveedores
      
      public boolean IngresarModificacionProveedor(HisProveedor hp){
        try{
            conexion();
            int idp = hp.getIdp();
            String noman = hp.getNomantiguo();
            String nomnu = hp.getNomnuevo();
            String dira = hp.getDirantiguo();
            String dirn = hp.getDirnuevo();
            int telan = hp.getTelantiguo();
            int teln = hp.getTelnuevo();
            String mot = hp.getMotivo();
            sentencia = con.createStatement();
            String sql = "insert into hist_proveedor values (0,'"+idp+"','"+noman+"','"+nomnu+"','"+dira+"','"+dirn+"','"+telan+"','"+teln+"','"+mot+"')";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
           System.out.println(e.getMessage()+"error en sql");
           return false;
        }catch(Exception e){
           System.out.println(e.getMessage()+"error en codigo");
           return false;
        }
        
    }

      
    // Metodo para modificar el proveedor
    public boolean modificarproveedor(Proveedor p){
        try{
            conexion();
            int id = p.getId();
            String rut = p.getRut();
            String nom = p.getNombre();
            String dir = p.getDireccion();
            int tel = p.getTelefono();
            String cor = p.getCorreo();
            String est = p.getEstado();
            sentencia = con.createStatement();
            String sql = "update proveedor set rut_prov='"+rut+"', nom_prov='"+nom+"',dir_prov='"+dir+"',tel_prov='"+tel+"',correo_prov='"+cor+"',estado_prov='"+est+"' where id_prov='"+id+"'";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            System.out.println(e.getMessage()+"error en sql");
            return false;
        }catch(Exception e){
            System.out.println(e.getMessage()+"error codigo");
            return false;

        }
    }    
     public boolean modificarUsuario(Usuario uu, String email){
        try{
            conexion();
            String nom = uu.getNombre();
            String ape = uu.getApellido();
            String pas = uu.getPassword();
            String tip = uu.getTipo();
            String tel = uu.getTelefono();
            sentencia = con.createStatement();
            String sql = "update usuario set nom_usu='"+nom+"', ape_usu='"+ape+"', tel_usu='"+tel+"' where email_usu='"+email+"'";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
  public boolean modificarContraseñaUsuario(Usuario uu, String email){
        try{
            conexion();
            String pas = uu.getPassword();
            sentencia = con.createStatement();
            String sql = "update usuario set  pass_usu='"+pas+"' where email_usu='"+email+"'";
            sentencia.execute(sql);
            sentencia.close();
            desconexion();
            return true;
        }catch(SQLException e){
            return false;
        }catch(Exception e){
            return false;
        }
    }
        //metodo para listar trabajadores por email
  
        public ArrayList<Usuario> listarTrabemail(String cond){
        try{
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from usuario where email_usu='"+cond+"'";
            rs = sentencia.executeQuery(sql);
            lisusu = new ArrayList();
            while(rs.next()){
                String ema = rs.getString("email_usu");
                String nom = rs.getString("nom_usu");
                String ape = rs.getString("ape_usu");
                String pass = rs.getString("pass_usu");
                String tip = rs.getString("tip_usu");
                String tel = rs.getString("tel_usu");
                u = new Usuario(ema, nom, ape, pass, tip, tel);
                lisusu.add(u);
            }
            sentencia.close();
            desconexion();
            return lisusu;
        }catch(SQLException e){
            return null;
        }catch(Exception e){
            return null;
        }
    }
        // Metodo para buscar servicio por codigo
    
    public Servicio buscarServicio (int cod){
        try {
            conexion();
            sentencia = con.createStatement();
            String sql = "select * from servicio where cod_ser='"+cod+"'";
            rs = sentencia.executeQuery(sql);
            if (rs.next()) {
                s = new Servicio(rs.getInt(cod),rs.getString("tto_ser"),rs.getString("dia_ser"),rs.getString("hora"),rs.getString("num_usu"),rs.getString("prof_ser"),rs.getString("nom_ser"));
                 
            }
            
            sentencia.close();
            desconexion();
        } catch (SQLException e) {
            System.out.println(e.getMessage()+"error en sql");
            System.exit(0);
        } catch (Exception e){
            System.out.println(e.getMessage()+"error en codigo");
            System.exit(0);
        }
        return s;
    }
    }

    

    


 
