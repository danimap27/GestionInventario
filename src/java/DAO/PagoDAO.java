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
import Entidades.Pago;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
import Entidades.HibernateUtil;


public class PagoDAO {
    private Session session;

    public PagoDAO(Session session) {
        this.session = session;
    }

    public void addPago(Pago pago) {
        Transaction tx = session.beginTransaction();
        session.save(pago);
        tx.commit();
    }

    public List<Pago> getAllPagos() {
        return session.createQuery("FROM Pago").list();
    }

    public Pago getPagoById(int id) {
        return (Pago) session.get(Pago.class, id);
    }

    public void updatePago(Pago pago) {
        Transaction tx = session.beginTransaction();
        session.update(pago);
        tx.commit();
    }

    public void deletePago(int id) {
        Transaction tx = session.beginTransaction();
        Pago pago = (Pago) session.get(Pago.class, id);
        session.delete(pago);
        tx.commit();
    }
}
