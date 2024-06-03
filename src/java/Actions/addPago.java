/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

/**
 *
 * @author Dani
 */

import com.opensymphony.xwork2.ActionSupport;
import DAO.PagoDAO;
import Entidades.Pago;
import Entidades.HibernateUtil;
import org.hibernate.Session;

public class addPago extends ActionSupport {
    private String namePayment;
    private String descriptionPayment;

    // Getters y Setters para los campos
    public String getNamePayment() {
        return namePayment;
    }

    public void setNamePayment(String namePayment) {
        this.namePayment = namePayment;
    }

    public String getDescriptionPayment() {
        return descriptionPayment;
    }

    public void setDescriptionPayment(String descriptionPayment) {
        this.descriptionPayment = descriptionPayment;
    }

    @Override
    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        PagoDAO pagoDAO = new PagoDAO(session);

        Pago pago = new Pago();
        pago.setNombre(namePayment);
        pago.setDescripcion(descriptionPayment);

        try {
            pagoDAO.addPago(pago);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
}

