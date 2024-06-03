/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import DAO.ClienteDAO;
import Entidades.Cliente;
import Entidades.HibernateUtil;
import org.hibernate.Session;
import java.util.List;


/**
 *
 * @author lambo
 */
public class ListarClientesAction extends ActionSupport {
    private List<Cliente> clientes;
    public ListarClientesAction() {
    }

    public List<Cliente> getClientes() {
        return clientes;
    }

    public void setClientes(List<Cliente> clientes) {
        this.clientes = clientes;
    }
    
    @Override
    public String execute() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ClienteDAO clienteDao = new ClienteDAO(session);

        try {
            clientes = clienteDao.getAllClientes();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
    
}
