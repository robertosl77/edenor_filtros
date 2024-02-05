package Servlet;

import funciones.ValidaUsuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if ("solicitarAcceso".equals(accion)) {
            response.sendRedirect("construccion.jsp");
        } else {
            // Redirige a login.jsp directamente
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }        
    }    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("username");
        String contrasena = request.getParameter("password");

        if (ValidaUsuario.validaUsuario(usuario, contrasena)) {
            // Si la validación es exitosa, redirige a filtros.jsp
            response.sendRedirect("filtros.jsp");
        } else {
            // Si la validación falla, redirige de nuevo a login.jsp con un parámetro de error
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
