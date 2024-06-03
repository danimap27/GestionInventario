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
import DAO.ProductoDAO;
import Entidades.Productos;
import Entidades.HibernateUtil;
import org.hibernate.Session;
import java.util.Date;

public class addProducto extends ActionSupport {
    private int barCode;
    private String nameProduct;
    private int stockProduct;
    private double priceProduct;
    private String modelProduct;
    private String markProduct;
    private Date date;

    // Getters y setters para cada campo

    public int getBarCode() {
        return barCode;
    }

    public void setBarCode(int barCode) {
        this.barCode = barCode;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public int getStockProduct() {
        return stockProduct;
    }

    public void setStockProduct(int stockProduct) {
        this.stockProduct = stockProduct;
    }

    public double getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(double priceProduct) {
        this.priceProduct = priceProduct;
    }

    public String getModelProduct() {
        return modelProduct;
    }

    public void setModelProduct(String modelProduct) {
        this.modelProduct = modelProduct;
    }

    public String getMarkProduct() {
        return markProduct;
    }

    public void setMarkProduct(String markProduct) {
        this.markProduct = markProduct;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }


    @Override
    public String execute() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        ProductoDAO productoDAO = new ProductoDAO(session);

        try {
            Productos producto = new Productos();
            producto.setCodigo(barCode);
            producto.setNombre(nameProduct);
            producto.setStock(stockProduct);
            producto.setPrecioUnidad(priceProduct);
            producto.setModelo(modelProduct);
            producto.setMarca(markProduct);
            
            productoDAO.addProducto(producto);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            session.close();
        }
    }
    
     @Override
    public void validate() {
        if (barCode <= 0) {
            addFieldError("barCode", "El código de barras debe ser un número positivo.");
        }
        if (nameProduct == null || nameProduct.trim().isEmpty()) {
            addFieldError("nameProduct", "El nombre del producto es obligatorio.");
        }
        if (stockProduct < 0) {
            addFieldError("stockProduct", "El stock no puede ser negativo.");
        }
        if (priceProduct < 0) {
            addFieldError("priceProduct", "El precio no puede ser negativo.");
        }
        if (modelProduct == null || modelProduct.trim().isEmpty()) {
            addFieldError("modelProduct", "El modelo del producto es obligatorio.");
        }
        if (markProduct == null || markProduct.trim().isEmpty()) {
            addFieldError("markProduct", "La marca del producto es obligatoria.");
        }
    }
}

