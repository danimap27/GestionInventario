package entidades;
// Generated 02-jun-2024 10:50:08 by Hibernate Tools 4.3.1


import java.math.BigDecimal;

/**
 * Venta generated by hbm2java
 */
public class Venta  implements java.io.Serializable {


     private Integer id;
     private Cliente cliente;
     private Pago pago;
     private BigDecimal total;
     private String opciones;

    public Venta() {
    }

	
    public Venta(BigDecimal total) {
        this.total = total;
    }
    public Venta(Cliente cliente, Pago pago, BigDecimal total, String opciones) {
       this.cliente = cliente;
       this.pago = pago;
       this.total = total;
       this.opciones = opciones;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public Pago getPago() {
        return this.pago;
    }
    
    public void setPago(Pago pago) {
        this.pago = pago;
    }
    public BigDecimal getTotal() {
        return this.total;
    }
    
    public void setTotal(BigDecimal total) {
        this.total = total;
    }
    public String getOpciones() {
        return this.opciones;
    }
    
    public void setOpciones(String opciones) {
        this.opciones = opciones;
    }




}


