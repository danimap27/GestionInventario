package Entidades;
// Generated 02-jun-2024 10:08:53 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Proveedor generated by hbm2java
 */
public class Proveedor  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private String direccion;
     private String numero;
     private String email;
     private String web;
     private Set productoses = new HashSet(0);

    public Proveedor() {
    }

	
    public Proveedor(String nombre) {
        this.nombre = nombre;
    }
    public Proveedor(String nombre, String direccion, String numero, String email, String web, Set productoses) {
       this.nombre = nombre;
       this.direccion = direccion;
       this.numero = numero;
       this.email = email;
       this.web = web;
       this.productoses = productoses;
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
    public String getNumero() {
        return this.numero;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
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
    public Set getProductoses() {
        return this.productoses;
    }
    
    public void setProductoses(Set productoses) {
        this.productoses = productoses;
    }




}


