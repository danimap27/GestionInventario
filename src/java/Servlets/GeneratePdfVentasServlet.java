/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/**
 *
 * @author Dani
 */
import Entidades.Venta;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Stream;
import DAO.VentaDAO;
import Entidades.HibernateUtil;
import org.hibernate.Session;

@WebServlet("/generatePdfVentas")
public class GeneratePdfVentasServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("hola");
        List<Venta> ventas = null;

        Session session = HibernateUtil.getSessionFactory().openSession();
        // meter el dao para obtener las ventas
        VentaDAO dao = VentaDAO(session);
        ventas = dao.getAllVentas();
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

            document.add(new Paragraph(" ")); // Añadir espacio

            PdfPTable table = new PdfPTable(4); // Numero de columnas en la tabla
            table.setWidthPercentage(100);
            table.setSpacingBefore(10f);
            table.setSpacingAfter(10f);

            // Añadir cabeceras de la tabla
            addTableHeader(table);

            // Añadir filas de la tabla
            for (Venta venta : ventas) {
                addRows(table, venta);
            }

            document.add(table);
        } catch (DocumentException e) {
            e.printStackTrace();
        } finally {
            document.close();
        }
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

    private VentaDAO VentaDAO(Session session) {
        VentaDAO dao = VentaDAO(session);
        return dao;
    }

}
