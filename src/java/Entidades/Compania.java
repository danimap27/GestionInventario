package Entidades;
// Generated 02-jun-2024 18:31:30 by Hibernate Tools 4.3.1



/**
 * Compania generated by hbm2java
 */
public class Compania  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private String direccion;
     private String email;
     private String web;
     private String telefono;
     private String fax;

    public Compania() {
    }

	
    public Compania(String nombre) {
        this.nombre = nombre;
    }
    public Compania(String nombre, String direccion, String email, String web, String telefono, String fax) {
       this.nombre = nombre;
       this.direccion = direccion;
       this.email = email;
       this.web = web;
       this.telefono = telefono;
       this.fax = fax;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getWeb() {
        return this.web;
    }
    
    public void setWeb(String web) {
        this.web = web;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getFax() {
        return this.fax;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
    }




}


