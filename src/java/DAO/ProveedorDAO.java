/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author Dani
 */
import entidades.Proveedor;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class ProveedorDAO {
    private Session session;

    public ProveedorDAO(Session session) {
        this.session = session;
    }

    public void addProveedor(Proveedor proveedor) {
        Transaction tx = session.beginTransaction();
        session.save(proveedor);
        tx.commit();
    }

    public List<Proveedor> getAllProveedores() {
        return session.createQuery("FROM Proveedor").list();
    }

    public Proveedor getProveedorByDni(int dni) {
        return (Proveedor) session.get(Proveedor.class, dni);
    }

    public void updateProveedor(Proveedor proveedor) {
        Transaction tx = session.beginTransaction();
        session.update(proveedor);
        tx.commit();
    }

    public void deleteProveedor(int dni) {
        Transaction tx = session.beginTransaction();
        Proveedor proveedor = (Proveedor) session.get(Proveedor.class, dni);
        session.delete(proveedor);
        tx.commit();
    }
}

