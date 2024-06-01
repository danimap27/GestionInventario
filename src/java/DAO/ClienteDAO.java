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
import Entidades.Cliente;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class ClienteDAO {
    private Session session;

    public ClienteDAO(Session session) {
        this.session = session;
    }

    public void addCliente(Cliente cliente) {
        Transaction tx = session.beginTransaction();
        session.save(cliente);
        tx.commit();
    }

    public List<Cliente> getAllClientes() {
        return session.createQuery("FROM Cliente").list();
    }

    public Cliente getClienteById(int dni) {
        return (Cliente) session.get(Cliente.class, dni);
    }

    public void updateCliente(Cliente cliente) {
        Transaction tx = session.beginTransaction();
        session.update(cliente);
        tx.commit();
    }

    public void deleteCliente(int dni) {
        Transaction tx = session.beginTransaction();
        Cliente cliente = (Cliente) session.get(Cliente.class, dni);
        session.delete(cliente);
        tx.commit();
    }
}
