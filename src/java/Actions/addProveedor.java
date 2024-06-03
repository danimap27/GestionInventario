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
import DAO.ProveedorDAO;
import Entidades.Proveedor;
import Entidades.HibernateUtil;
import org.hibernate.Session;

public class addProveedor extends ActionSupport {
    private String NameProvider;
    private String addressProvider;
    private String phoneProvider;
    private String emailProvider;
    private String webProvider;

    // Getters y setters para cada campo

    public String getNameProvider() {
        return NameProvider;
    }

    public void setNameProvider(String nameProvider) {
        NameProvider = nameProvider;
    }

    public String getAddressProvider() {
        return addressProvider;
    }

    public void setAddressProvider(String addressProvider) {
        this.addressProvider = addressProvider;
    }

    public String getPhoneProvider() {
        return phoneProvider;
    }

    public void setPhoneProvider(String phoneProvider) {
        this.phoneProvider = phoneProvider;
    }

    public String getEmailProvider() {
        return emailProvider;
    }

    public void setEmailProvider(String emailProvider) {
        this.emailProvider = emailProvider;
    }

    public String getWebProvider() {
        return webProvider;
    }

    public void setWebProvider(String webProvider) {
        this.webProvider = webProvider;
    }

    @Override
    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ProveedorDAO proveedorDAO = new ProveedorDAO(session);

        try {
            Proveedor proveedor = new Proveedor();
            proveedor.setNombre(NameProvider);
            proveedor.setDireccion(addressProvider);
            proveedor.setNumero(phoneProvider);
            proveedor.setEmail(emailProvider);
            proveedor.setWeb(webProvider);

            proveedorDAO.addProveedor(proveedor);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
}

