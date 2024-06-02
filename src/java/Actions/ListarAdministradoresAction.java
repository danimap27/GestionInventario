/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Entidades.Administrador;
import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import java.util.List;
import org.apache.struts2.ServletActionContext;

public class ListarAdministradoresAction extends ActionSupport{

    public String execute() {
        // Configurar la sesión de Hibernate
        Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        Session session = factory.openSession();

        // Iniciar la transacción
        Transaction t = session.beginTransaction();

        // Obtener la lista de administradores desde la base de datos
        List<Administrador> administradores = session.createQuery("FROM Administrador").list();

        // Commit de la transacción
        t.commit();

        // Cerrar la sesión de Hibernate
        session.close();

        // Enviar la lista de administradores al formulario
        ServletActionContext.getRequest().setAttribute("administradores", administradores);

        return SUCCESS;
    }
}