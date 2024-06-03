/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import DAO.AdministradorDAO;
import Entidades.Administrador;
import Entidades.HibernateUtil;
import org.hibernate.Session;
import java.util.List;

public class ListarAdministradoresAction extends ActionSupport {
    private List<Administrador> administradores;

    public List<Administrador> getAdministradores() {
        return administradores;
    }

    @Override
    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        AdministradorDAO administradorDAO = new AdministradorDAO(session);

        try {
            administradores = administradorDAO.obtenerAdministradores();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
}
