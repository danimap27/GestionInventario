/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

/**
 *
 * @author danit
 */

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import DAO.AdministradorDAO;
import Entidades.Administrador;
import Entidades.HibernateUtil;
import java.util.Map;

public class loginAction extends ActionSupport implements SessionAware {
    private String userName;
    private String pass;
    private Map<String, Object> session;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            AdministradorDAO adminDAO = new AdministradorDAO(session);
            Administrador admin = adminDAO.obtenerAdministradorUsuario(userName);

            if (admin != null && admin.getContrasenyaHash().equals(pass)) {
                return SUCCESS;
            } else {
                addActionError("Invalid username or password.");
                return INPUT;
            }
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("An error occurred during login.");
            return ERROR;
        } finally {
            session.close();
        }
    }
}
