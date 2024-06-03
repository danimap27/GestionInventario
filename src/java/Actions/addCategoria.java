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
import DAO.CategoriaDAO;
import Entidades.Categoria;
import Entidades.HibernateUtil;
import org.hibernate.Session;

public class addCategoria extends ActionSupport {
    private String nameCategory;
    private String descriptionCategory;

    public String getNameCategory() {
        return nameCategory;
    }

    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }

    public String getDescriptionCategory() {
        return descriptionCategory;
    }

    public void setDescriptionCategory(String descriptionCategory) {
        this.descriptionCategory = descriptionCategory;
    }

    @Override
    public String execute() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        CategoriaDAO dao = new CategoriaDAO(session);

        Categoria c = new Categoria();
        c.setNombre(nameCategory);
        c.setDescripcion(descriptionCategory);

        try {
            dao.addCategoria(c);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
}

