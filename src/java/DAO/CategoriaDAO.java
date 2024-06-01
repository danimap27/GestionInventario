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
import java.util.List;

public class CategoriaDAO {
    private Session session;

    public CategoriaDAO(Session session) {
        this.session = session;
    }

    public void addCategoria(Categoria categoria) {
        Transaction tx = session.beginTransaction();
        session.save(categoria);
        tx.commit();
    }

    public List<Categoria> getAllCategorias() {
        return session.createQuery("FROM Categoria").list();
    }

    public Categoria getCategoriaById(int id) {
        return (Categoria) session.get(Categoria.class, id);
    }

    public void updateCategoria(Categoria categoria) {
        Transaction tx = session.beginTransaction();
        session.update(categoria);
        tx.commit();
    }

    public void deleteCategoria(int id) {
        Transaction tx = session.beginTransaction();
        Categoria categoria = (Categoria) session.get(Categoria.class, id);
        session.delete(categoria);
        tx.commit();
    }
}

