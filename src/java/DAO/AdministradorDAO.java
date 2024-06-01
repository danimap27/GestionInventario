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
import Entidades.Administrador;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class AdministradorDAO {
    private Session session;

    public AdministradorDAO(Session session) {
        this.session = session;
    }

    public void addAdministrador(Administrador administrador) {
        Transaction tx = session.beginTransaction();
        session.save(administrador);
        tx.commit();
    }

    public List<Administrador> getAllAdministradores() {
        return session.createQuery("FROM Administrador").list();
    }

    public Administrador getAdministradorById(int dni) {
        return (Administrador) session.get(Administrador.class, dni);
    }

    public void updateAdministrador(Administrador administrador) {
        Transaction tx = session.beginTransaction();
        session.update(administrador);
        tx.commit();
    }

    public void deleteAdministrador(int dni) {
        Transaction tx = session.beginTransaction();
        Administrador administrador = (Administrador) session.get(Administrador.class, dni);
        session.delete(administrador);
        tx.commit();
    }
}
