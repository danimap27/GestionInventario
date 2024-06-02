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
import entidades.Venta;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class VentaDAO {
    private Session session;

    public VentaDAO(Session session) {
        this.session = session;
    }

    public void addVenta(Venta venta) {
        Transaction tx = session.beginTransaction();
        session.save(venta);
        tx.commit();
    }

    public List<Venta> getAllVentas() {
        return session.createQuery("FROM Venta").list();
    }

    public Venta getVentaById(int id) {
        return (Venta) session.get(Venta.class, id);
    }

    public void updateVenta(Venta venta) {
        Transaction tx = session.beginTransaction();
        session.update(venta);
        tx.commit();
    }

    public void deleteVenta(int id) {
        Transaction tx = session.beginTransaction();
        Venta venta = (Venta) session.get(Venta.class, id);
        session.delete(venta);
        tx.commit();
    }
}
