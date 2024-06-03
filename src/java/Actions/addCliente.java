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
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import DAO.ClienteDAO;
import Entidades.Cliente;
import Entidades.HibernateUtil;
import org.hibernate.Session;

public class addCliente extends ActionSupport {
    private String DNIClient;
    private String NameClient;
    private String LastNameClient;
    private String addressClient1;
    private String phoneClient;
    private String emailClient;

    @Override
    public void validate() {
        if (DNIClient == null || DNIClient.trim().isEmpty()) {
            addFieldError("DNIClient", "El DNI del cliente es obligatorio");
        }

        if (NameClient == null || NameClient.trim().isEmpty()) {
            addFieldError("NameClient", "El nombre del cliente es obligatorio");
        }

        if (LastNameClient == null || LastNameClient.trim().isEmpty()) {
            addFieldError("LastNameClient", "El apellido del cliente es obligatorio");
        }

        if (addressClient1 == null || addressClient1.trim().isEmpty()) {
            addFieldError("addressClient1", "La dirección del cliente es obligatoria");
        }

        if (phoneClient == null || phoneClient.trim().isEmpty()) {
            addFieldError("phoneClient", "El teléfono del cliente es obligatorio");
        }

    }

    @Override
    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ClienteDAO clienteDAO = new ClienteDAO(session);

        Cliente cliente = new Cliente();
        cliente.setDni(DNIClient);
        cliente.setNombre(NameClient);
        cliente.setApellido(LastNameClient);
        cliente.setDireccion(addressClient1);
        cliente.setTelefono(phoneClient);
        cliente.setEmail(emailClient);

        try {
            clienteDAO.addCliente(cliente);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }

    // Getters y Setter

    public String getDNIClient() {
        return DNIClient;
    }

    public void setDNIClient(String DNIClient) {
        this.DNIClient = DNIClient;
    }

    public String getNameClient() {
        return NameClient;
    }

    public void setNameClient(String NameClient) {
        this.NameClient = NameClient;
    }

    public String getLastNameClient() {
        return LastNameClient;
    }

    public void setLastNameClient(String LastNameClient) {
        this.LastNameClient = LastNameClient;
    }

    public String getAddressClient1() {
        return addressClient1;
    }

    public void setAddressClient1(String addressClient1) {
        this.addressClient1 = addressClient1;
    }

    public String getPhoneClient() {
        return phoneClient;
    }

    public void setPhoneClient(String phoneClient) {
        this.phoneClient = phoneClient;
    }

    public String getEmailClient() {
        return emailClient;
    }

    public void setEmailClient(String emailClient) {
        this.emailClient = emailClient;
    }
}

