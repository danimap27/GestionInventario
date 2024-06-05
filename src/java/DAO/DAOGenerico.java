/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;
import Entidades.HibernateUtil.*;
import java.util.List;

/**
 *
 * @author lambo
 */
public class DAOGenerico {
    private Session session;
    private Long contadorAdmin;
    private Long contadorClientes;
    private Long contadorCategorias;
    private Long contadorProductos;
    private Long contadorProveedores;
    private Long contadorVentas;
    
    
    public DAOGenerico(Session session){this.session = session;}

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public Long getContadorAdmin() {
        return contadorAdmin;
    }

    public void setContadorAdmin(Long contadorAdmin) {
        this.contadorAdmin = contadorAdmin;
    }

    public Long getContadorClientes() {
        return contadorClientes;
    }

    public void setContadorClientes(Long contadorClientes) {
        this.contadorClientes = contadorClientes;
    }

    public Long getContadorCategorias() {
        return contadorCategorias;
    }

    public void setContadorCategorias(Long contadorCategorias) {
        this.contadorCategorias = contadorCategorias;
    }

    public Long getContadorProductos() {
        return contadorProductos;
    }

    public void setContadorProductos(Long contadorProductos) {
        this.contadorProductos = contadorProductos;
    }

    public Long getContadorProveedores() {
        return contadorProveedores;
    }

    public void setContadorProveedores(Long contadorProveedores) {
        this.contadorProveedores = contadorProveedores;
    }

    public Long getContadorVentas() {
        return contadorVentas;
    }

    public void setContadorVentas(Long contadorVentas) {
        this.contadorVentas = contadorVentas;
    }
    
    public long contarElementosTabla(String tabla) {
        long count = 0;
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Query q = session.createQuery("SELECT COUNT(*) FROM " + tabla);
            count = (Long)q.uniqueResult();
            tx.commit();
            session.close();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
        return count;
    }
    

}

