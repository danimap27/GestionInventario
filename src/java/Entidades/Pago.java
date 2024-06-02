package Entidades;
// Generated 02-jun-2024 18:31:30 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Pago generated by hbm2java
 */
public class Pago  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private String descripcion;
     private Set ventas = new HashSet(0);

    public Pago() {
    }

	
    public Pago(String nombre) {
        this.nombre = nombre;
    }
    public Pago(String nombre, String descripcion, Set ventas) {
       this.nombre = nombre;
       this.descripcion = descripcion;
       this.ventas = ventas;
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
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Set getVentas() {
        return this.ventas;
    }
    
    public void setVentas(Set ventas) {
        this.ventas = ventas;
    }




}


