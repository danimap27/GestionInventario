/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import DAO.PagoDAO;
import Entidades.Pago;
import Entidades.HibernateUtil;
import org.hibernate.Session;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author lambo
 */
public class ListarPagosAction extends ActionSupport {
    
    private int id;
    private Pago pagoA;
    private List<Pago> pagos;
    
    public ListarPagosAction() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Pago getPagoA() {
        return pagoA;
    }

    public void setPagoA(Pago pagoA) {
        this.pagoA = pagoA;
    }

    public List<Pago> getPagos() {
        return pagos;
    }

    public void setPagos(List<Pago> pagos) {
        this.pagos = pagos;
    }
    
    public String execute() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        PagoDAO pagoDao = new PagoDAO(session);

        try {
            pagos = pagoDao.getAllPagos();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
    
}
