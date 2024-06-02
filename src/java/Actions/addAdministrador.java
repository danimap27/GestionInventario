/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import DAO.AdministradorDAO;
import Entidades.Administrador;
import com.opensymphony.xwork2.ActionSupport;

public class addAdministrador extends ActionSupport {
    private String DNIAdmin;
    private String NameAdmin;
    private String LastNameAdmin;
    private String phoneAdmin;
    private String emailAdmin;
    private String addressAdmin;
    private String UserNameAdmin;
    private String passwordAdmin;

    @Override
    public String execute() {
        AdministradorDAO dao = new AdministradorDAO();

        if (dao.obtenerAdministrador(DNIAdmin) != null) {
            addActionError("DNI ya existe");
            return ERROR;
        }
        if (dao.obtenerAdministrador(UserNameAdmin) != null) {
            addActionError("Usuario ya existe");
            return ERROR;
        }
        Administrador admin = new Administrador(DNIAdmin, NameAdmin, LastNameAdmin, phoneAdmin, emailAdmin, addressAdmin, UserNameAdmin, passwordAdmin);

        dao.registrarAdministrador(admin);
        return SUCCESS;
    }

    public String getDNIAdmin() {
        return DNIAdmin;
    }

    public void setDNIAdmin(String DNIAdmin) {
        this.DNIAdmin = DNIAdmin;
    }

    public String getNameAdmin() {
        return NameAdmin;
    }

    public void setNameAdmin(String NameAdmin) {
        this.NameAdmin = NameAdmin;
    }

    public String getLastNameAdmin() {
        return LastNameAdmin;
    }

    public void setLastNameAdmin(String LastNameAdmin) {
        this.LastNameAdmin = LastNameAdmin;
    }

    public String getPhoneAdmin() {
        return phoneAdmin;
    }

    public void setPhoneAdmin(String phoneAdmin) {
        this.phoneAdmin = phoneAdmin;
    }

    public String getEmailAdmin() {
        return emailAdmin;
    }

    public void setEmailAdmin(String emailAdmin) {
        this.emailAdmin = emailAdmin;
    }

    public String getAddressAdmin() {
        return addressAdmin;
    }

    public void setAddressAdmin(String addressAdmin) {
        this.addressAdmin = addressAdmin;
    }

    public String getUserNameAdmin() {
        return UserNameAdmin;
    }

    public void setUserNameAdmin(String UserNameAdmin) {
        this.UserNameAdmin = UserNameAdmin;
    }

    public String getPasswordAdmin() {
        return passwordAdmin;
    }

    public void setPasswordAdmin(String passwordAdmin) {
        this.passwordAdmin = passwordAdmin;
    }
}
