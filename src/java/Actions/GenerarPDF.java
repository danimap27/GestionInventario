/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import DAO.VentaDAO;
import Entidades.HibernateUtil;
import Entidades.Venta;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Stream;

public class GenerarPDF extends ActionSupport {
    
    public String execute() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        VentaDAO dao = new VentaDAO(session);
        List<Venta> ventas = dao.getAllVentas();
        
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=\"ventas.pdf\"");

        Document document = new Document();
        try {
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();

            Font font = new Font(Font.FontFamily.HELVETICA, 18, Font.BOLD);
            Paragraph title = new Paragraph("Listado de Ventas", font);
            title.setAlignment(Element.ALIGN_CENTER);
            document.add(title);

            document.add(new Paragraph(" "));

            PdfPTable table = new PdfPTable(4);
            table.setWidthPercentage(100);
            table.setSpacingBefore(10f);
            table.setSpacingAfter(10f);
            addTableHeader(table);

            for (Venta venta : ventas) {
                addRows(table, venta);
            }

            document.add(table);
        } catch (DocumentException | IOException e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            document.close();
            session.close();
        }
        return SUCCESS;
    }
    
    private void addTableHeader(PdfPTable table) {
        Stream.of("Id", "Cliente", "Pago", "Total").forEach(columnTitle -> {
            PdfPCell header = new PdfPCell();
            header.setPhrase(new Phrase(columnTitle));
            table.addCell(header);
        });
    }

    private void addRows(PdfPTable table, Venta venta) {
        table.addCell(venta.getId().toString());
        table.addCell(venta.getCliente().getNombre());
        table.addCell(venta.getPago().getNombre());
        table.addCell(venta.getTotal().toString());
    }
}
