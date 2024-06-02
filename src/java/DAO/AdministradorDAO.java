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
import Hibernate.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
import org.hibernate.Query;

public class AdministradorDAO {

    Session session = null;

    public List<Administrador> obtenerAdministradores() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Administrador> administradores;
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Administrador");
        administradores = q.list();
        tx.commit();
        return administradores;
    }

    public Administrador obtenerAdministrador(String dni) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Administrador WHERE dni = :dni");
        q.setParameter("dni", dni);
        Administrador admin = (Administrador) q.uniqueResult();
        tx.commit();
        return admin;
    }
    public Administrador obtenerAdministradorUsuario(String usuario) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Administrador WHERE usuario = :usuario");
        q.setParameter("usuario", usuario);
        Administrador admin = (Administrador) q.uniqueResult();
        tx.commit();
        return admin;
    }
    
    public void registrarAdministrador(Administrador admin) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(admin);
        tx.commit();
    }

    public void actualizarAdministrador(Administrador admin) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.update(admin);
        tx.commit();
    }

    public void borrarAdministrador(String dni) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Administrador admin = obtenerAdministrador(dni);
        if (admin != null) {
            session.delete(admin);
        }
        tx.commit();
    }
}
