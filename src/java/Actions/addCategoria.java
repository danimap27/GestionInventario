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
import java.util.List;

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
        try {
            CategoriaDAO categoriaDAO = new CategoriaDAO();
            
            if (categoriaDAO.getCategoriaByName(nameCategory) != null) {
                addActionError("Ya existe una categoría con el mismo nombre.");
                return INPUT;
            }
            
            // Si no existe, agregar la nueva categoría
            Categoria categoria = new Categoria();
            categoria.setNombre(nameCategory);
            categoria.setDescripcion(descriptionCategory);
            
            categoriaDAO.addCategoria(categoria);
            
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}

