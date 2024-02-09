<%@page import="ad.AD"%>
<%@page import="javax.naming.directory.InitialDirContext"%>
<%@page import="javax.naming.directory.DirContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.util.Properties"%>
<%@page import="java.awt.geom.Area"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.NoSuchElementException"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal de EDENOR</title>
    <link rel="stylesheet" href="./css/comunes.css">
    <link rel="stylesheet" href="./css/login.css">
    <script src="./js/comunes.js"></script>
</head>
<body>
    <div id="header">
        <img src="./img/logo2.png" alt="Logo de EDENOR">
        <h2>Login</h2>
    </div>

    <div id="login-form">
        
        <%
            //Valido seguridad LDAP
            /*
            AD ad = new AD();
            ad.configuracionLDAP_QA();
            session.setAttribute("ads", ad);
            ad.getAllUsers();
            if (ads.getConnection()==null){
                out.println("<div id='status-message'>Fallo al obtener configuracion LDAP.</div><br>");
            }else 
            */

            //Mensajes que duran unos segundos
            if (request.getParameter("accion")!=null){
                if (request.getParameter("accion").equals("err_login")){
                    out.println("<div id='status-message'>¡Usuario o contraseña incorrectos! <br>Inténtalo de nuevo.</div><br>");
                } else if (request.getParameter("accion").equals("logout")){
                    out.println("<div id='status-message'>Sesion finalizada.</div><br>");
                }
            }
        %>

        <!-- Formulario de login -->
        <form action="ServletLogin" method="post">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Ingresar</button>
        </form>
    </div>

    <div id="new-access-link">
        <p>¿No logra ingresar? <a href="ServletLogin?accion=solicitarAcceso">Solicitar nuevo acceso</a></p>
    </div>
      
</body>
</html>
