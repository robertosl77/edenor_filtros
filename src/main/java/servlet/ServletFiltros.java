package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author robertosl
 */
@WebServlet("/ServletFiltros")
public class ServletFiltros extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        
        switch (accion) {
            case "salir":
                response.sendRedirect("login.jsp?accion=logout");
                break;
            case "cancelar":
                response.sendRedirect("construccion.jsp");
                break;
            case "simular":
                response.sendRedirect("filtros.jsp?accion=simula");
                break;
            case "confirmar":
                response.sendRedirect("construccion.jsp");
                break;
        }
 
        //PrintWriter out = response.getWriter();
        //out.println("ddd");

    }
    
    
    
}
