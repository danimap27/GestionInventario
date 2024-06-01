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
import Entidades.Inventario;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class InventarioDAO {
    private Session session;

    public InventarioDAO(Session session) {
        this.session = session;
    }

    public void addInventario(Inventario inventario) {
        Transaction tx = session.beginTransaction();
        session.save(inventario);
        tx.commit();
    }

    public List<Inventario> getAllInventarios() {
        return session.createQuery("FROM Inventario").list();
    }

    public Inventario getInventarioById(int id) {
        return (Inventario) session.get(Inventario.class, id);
    }

    public void updateInventario(Inventario inventario) {
        Transaction tx = session.beginTransaction();
        session.update(inventario);
        tx.commit();
    }

    public void deleteInventario(int id) {
        Transaction tx = session.beginTransaction();
        Inventario inventario = (Inventario) session.get(Inventario.class, id);
        session.delete(inventario);
        tx.commit();
    }
}

