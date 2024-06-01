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
import Entidades.Compania;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class CompaniaDAO {
    private Session session;

    public CompaniaDAO(Session session) {
        this.session = session;
    }

    public void addCompania(Compania compania) {
        Transaction tx = session.beginTransaction();
        session.save(compania);
        tx.commit();
    }

    public List<Compania> getAllCompanias() {
        return session.createQuery("FROM Compania").list();
    }

    public Compania getCompaniaById(int id) {
        return (Compania) session.get(Compania.class, id);
    }

    public void updateCompania(Compania compania) {
        Transaction tx = session.beginTransaction();
        session.update(compania);
        tx.commit();
    }

    public void deleteCompania(int id) {
        Transaction tx = session.beginTransaction();
        Compania compania = (Compania) session.get(Compania.class, id);
        session.delete(compania);
        tx.commit();
    }
}
