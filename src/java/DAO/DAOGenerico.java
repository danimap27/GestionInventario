/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;
import Entidades.HibernateUtil.*;

/**
 *
 * @author lambo
 */
public class DAOGenerico {
    private Session session;
    
    public DAOGenerico(Session session){this.session = session;}
    
    public long contarElementosTabla(String nombreTabla) {
        long count = 0;
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Query q = session.createQuery("SELECT COUNT(*) FROM " + nombreTabla);
            count = (Long)q.uniqueResult();
            tx.commit();
            session.close();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
        return count;
    }
    
}
