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
