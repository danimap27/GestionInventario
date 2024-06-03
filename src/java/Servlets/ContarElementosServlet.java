package Servlets;

import DAO.DAOGenerico;
import Entidades.HibernateUtil;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;


public class ContarElementosServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tabla = request.getParameter("tabla");
        if (tabla == null || tabla.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "El parámetro 'tabla' es obligatorio");
            return;
        }
        
        Session session = HibernateUtil.getSessionFactory().openSession();
            long count = new DAOGenerico(session).contarElementosTabla(tabla);
            response.setContentType("text/plain");
            PrintWriter out = response.getWriter();
            out.print(count);
            out.flush();
        
    }
}
