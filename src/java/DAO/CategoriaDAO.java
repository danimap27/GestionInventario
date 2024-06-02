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
import Entidades.Categoria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import Entidades.HibernateUtil;


public class CategoriaDAO {

    private Session session;

    public List<Categoria> getAllCategorias() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Categoria> categorias = new ArrayList<>();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("FROM Categoria");
        categorias = (List<Categoria>) query.list();
        tx.commit();
        return categorias;
    }

    public Categoria getCategoriaByName(String nombre) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("FROM Categoria WHERE nombre = :nombre");
        query.setParameter("nombre", nombre);
        Categoria categoria = (Categoria) query.uniqueResult();
        tx.commit();
        return categoria;
    }

    public void addCategoria(Categoria categoria) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(categoria);
        tx.commit();
    }

    public void updateCategoria(Categoria categoria) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.update(categoria);
        tx.commit();
    }

    public void deleteCategoria(String nombre) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Categoria categoria = getCategoriaByName(nombre);
        session.delete(categoria);
        tx.commit();
    }
}
