package Entidades;
// Generated 01-jun-2024 17:02:32 by Hibernate Tools 4.3.1


import java.math.BigDecimal;

/**
 * Inventario generated by hbm2java
 */
public class Inventario  implements java.io.Serializable {


     private int codigo;
     private Productos productos;
     private String nombre;
     private int stock;
     private BigDecimal precio;
     private String opciones;

    public Inventario() {
    }

	
    public Inventario(Productos productos, String nombre, int stock, BigDecimal precio) {
        this.productos = productos;
        this.nombre = nombre;
        this.stock = stock;
        this.precio = precio;
    }
    public Inventario(Productos productos, String nombre, int stock, BigDecimal precio, String opciones) {
       this.productos = productos;
       this.nombre = nombre;
       this.stock = stock;
       this.precio = precio;
       this.opciones = opciones;
    }
   
    public int getCodigo() {
        return this.codigo;
    }
    
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    public Productos getProductos() {
        return this.productos;
    }
    
    public void setProductos(Productos productos) {
        this.productos = productos;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public int getStock() {
        return this.stock;
    }
    
    public void setStock(int stock) {
        this.stock = stock;
    }
    public BigDecimal getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }
    public String getOpciones() {
        return this.opciones;
    }
    
    public void setOpciones(String opciones) {
        this.opciones = opciones;
    }




}


