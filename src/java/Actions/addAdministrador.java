/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import DAO.AdministradorDAO;
import Entidades.Administrador;
import Entidades.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;

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
    public void validate() {
        if (DNIAdmin == null || DNIAdmin.trim().isEmpty()) {
            addFieldError("DNIAdmin", "El DNI es obligatorio.");
        }
        if (NameAdmin == null || NameAdmin.trim().isEmpty()) {
            addFieldError("NameAdmin", "El nombre es obligatorio.");
        }
        if (LastNameAdmin == null || LastNameAdmin.trim().isEmpty()) {
            addFieldError("LastNameAdmin", "El apellido es obligatorio.");
        }
        if (phoneAdmin == null || phoneAdmin.trim().isEmpty()) {
            addFieldError("phoneAdmin", "El teléfono es obligatorio.");
        }
        if (emailAdmin == null || emailAdmin.trim().isEmpty()) {
            addFieldError("emailAdmin", "El correo electrónico es obligatorio.");
        }
        if (addressAdmin == null || addressAdmin.trim().isEmpty()) {
            addFieldError("addressAdmin", "La dirección es obligatoria.");
        }
        if (UserNameAdmin == null || UserNameAdmin.trim().isEmpty()) {
            addFieldError("UserNameAdmin", "El nombre de usuario es obligatorio.");
        }
        if (passwordAdmin == null || passwordAdmin.trim().isEmpty()) {
            addFieldError("passwordAdmin", "La contraseña es obligatoria.");
        }
    }

    @Override
    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        AdministradorDAO dao = new AdministradorDAO(session);

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

    // Getters y setters


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
