/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import DAO.ProveedorDAO;
import Entidades.Proveedor;
import Entidades.HibernateUtil;
import org.hibernate.Session;
import java.util.List;

/**
 *
 * @author lambo
 */
public class ListarProveedoresAction extends ActionSupport {
       private List<Proveedor> proveedores;
       private Integer id;
       private Proveedor proveedorA;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Proveedor getProveedorA() {
        return proveedorA;
    }

    public void setProveedorA(Proveedor proveedorA) {
        this.proveedorA = proveedorA;
    }

    public List<Proveedor> getProveedores() {
        return proveedores;
    }

    public void setProveedores(List<Proveedor> administradores) {
        this.proveedores = proveedores;
    }

    @Override
    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ProveedorDAO proveedorDao = new ProveedorDAO(session);

        try {
            proveedores = proveedorDao.getAllProveedores();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
    
    public String obtenerProveedoresAction() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ProveedorDAO proveedorDao = new ProveedorDAO(session);

        try {
            proveedorA = proveedorDao.getProveedorByDni(id);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
}
