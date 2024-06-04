/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Entidades.Categoria;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import DAO.CategoriaDAO;
import Entidades.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author lambo
 */
public class ListarCategoriasAction extends ActionSupport {
    
    private String nombre;
    private Categoria categoriaA;
    private List<Categoria> categorias;
    
    public ListarCategoriasAction() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Categoria getCategoriaA() {
        return categoriaA;
    }

    public void setCategoriaA(Categoria categoriaA) {
        this.categoriaA = categoriaA;
    }

    public List<Categoria> getCategorias() {
        return categorias;
    }

    public void setCategorias(List<Categoria> categorias) {
        this.categorias = categorias;
    }
    
    public String execute() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        CategoriaDAO categDao = new CategoriaDAO(session);

        try {
            categorias = categDao.getAllCategorias();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
    
    public String obtenerCategoriaAction() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        CategoriaDAO categDao = new CategoriaDAO(session);

        try {
            categoriaA = categDao.getCategoriaByName(this.nombre);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
    
}
