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
import entidades.Productos;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class ProductoDAO {
    private Session session;

    public ProductoDAO(Session session) {
        this.session = session;
    }

    public void addProducto(Productos producto) {
        Transaction tx = session.beginTransaction();
        session.save(producto);
        tx.commit();
    }

    public List<Productos> getAllProductos() {
        return session.createQuery("FROM Producto").list();
    }

    public Productos getProductoByCodigo(int codigo) {
        return (Productos) session.get(Productos.class, codigo);
    }

    public void updateProducto(Productos producto) {
        Transaction tx = session.beginTransaction();
        session.update(producto);
        tx.commit();
    }

    public void deleteProducto(int codigo) {
        Transaction tx = session.beginTransaction();
        Productos producto = (Productos) session.get(Productos.class, codigo);
        session.delete(producto);
        tx.commit();
    }
}

