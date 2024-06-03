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
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
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

    @RequiredStringValidator(message = "El nombre de la categoría es obligatorio")
    @StringLengthFieldValidator(minLength = "3", maxLength = "50", message = "El nombre de la categoría debe tener entre 3 y 50 caracteres")
    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }

    public String getDescriptionCategory() {
        return descriptionCategory;
    }

    @RequiredStringValidator(message = "La descripción de la categoría es obligatoria")
    @StringLengthFieldValidator(minLength = "3", maxLength = "100", message = "La descripción de la categoría debe tener entre 3 y 100 caracteres")
    public void setDescriptionCategory(String descriptionCategory) {
        this.descriptionCategory = descriptionCategory;
    }

    @Override
    public void validate() {
        if (nameCategory != null && nameCategory.trim().isEmpty()) {
            addFieldError("nameCategory", "El nombre de la categoría no puede estar vacío");
        }

        if (descriptionCategory != null && descriptionCategory.trim().isEmpty()) {
            addFieldError("descriptionCategory", "La descripción de la categoría no puede estar vacía");
        }
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
