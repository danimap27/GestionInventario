package entidades;
// Generated 02-jun-2024 10:50:08 by Hibernate Tools 4.3.1



/**
 * Administrador generated by hbm2java
 */
public class Administrador  implements java.io.Serializable {


     private String dni;
     private String nombre;
     private String apellidos;
     private String telefono;
     private String email;
     private String direccion;

    public Administrador() {
    }

	
    public Administrador(String dni, String nombre, String apellidos) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellidos = apellidos;
    }
    public Administrador(String dni, String nombre, String apellidos, String telefono, String email, String direccion) {
       this.dni = dni;
       this.nombre = nombre;
       this.apellidos = apellidos;
       this.telefono = telefono;
       this.email = email;
       this.direccion = direccion;
    }
   
    public String getDni() {
        return this.dni;
    }
    
    public void setDni(String dni) {
        this.dni = dni;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellidos() {
        return this.apellidos;
    }
    
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }




}


